<?php

class MobileCheckoutControllerCore extends MobileController {

    public function init() {
        parent::init();

        if (Tools::isSubmit('submitAddDiscount')) {
            if (!($code = trim(Tools::getValue('discount_name')))) {
                $this->errors[] = Tools::displayError('You must enter a voucher code.');
            } elseif (!Validate::isCleanHtml($code)) {
                $this->errors[] = Tools::displayError('The voucher code is invalid.');
            } else {
                if (($cartRule = new CartRule(CartRule::getIdByCode($code))) && Validate::isLoadedObject($cartRule)) {
                    if ($error = $cartRule->checkValidity($this->context, false, true)) {
                        $this->errors[] = $error;
                    } else {
                        $this->context->cart->addCartRule($cartRule->id);
                        header('Location: ' . _PS_BASE_URL_ . __PS_BASE_URI__ . 'mobile-checkout');
                    }
                } else {
                    $this->errors[] = Tools::displayError('This voucher does not exists.');
                }
            }
            $this->context->smarty->assign(array(
                'errors' => $this->errors,
                'discount_name' => Tools::safeOutput($code)
            ));
        } elseif (($id_cart_rule = (int) Tools::getValue('deleteDiscount')) && Validate::isUnsignedId($id_cart_rule)) {
            $this->context->cart->removeCartRule($id_cart_rule);
            CartRule::autoAddToCart($this->context);
            header('Location: ' . _PS_BASE_URL_ . __PS_BASE_URI__ . 'mobile-checkout');
        }
    }

    public function initContent() {
        parent::initContent();

        $cart_products = $this->context->cart->getProducts(true);

        if ($cart_products || Tools::getValue('step') == 'order-confirmation') {
            $isLogged = $this->context->customer->isLogged();
            if ($isLogged && Tools::getValue('step') == 2) {
                header('Location: ' . _PS_BASE_URL_ . __PS_BASE_URI__ . 'mobile-checkout?step=3');
            }
            if (!$isLogged && in_array(Tools::getValue('step'), ['3', '4', '5'])) {
                header('Location: ' . _PS_BASE_URL_ . __PS_BASE_URI__ . 'mobile-checkout?step=2');
            }
            foreach ($cart_products as $cart_product) {
                $aQuantities = [1, 5, 10, 25, 50, 100];
                $aPrices = [];
                foreach ($aQuantities as $iQuantity) {
                    $aPrices[$iQuantity] = Product::getPriceStatic((int) $cart_product['id_product'], true, null, 2, null, false, true, $iQuantity);
                }
                $cart_product['prices'] = $aPrices;
            }
            $aSummary = $this->context->cart->getSummaryDetails(null, true);
            $available_cart_rules = CartRule::getCustomerCartRules($this->context->language->id, (isset($this->context->customer->id) ? $this->context->customer->id : 0), true, true, true, $this->context->cart, false, true);

            $this->context->smarty->assign(array(
                'token' => Tools::getToken(false),
                'checkout' => true,
                'voucherAllowed' => CartRule::isFeatureActive(),
                'step' => '4',
                'summary' => $aSummary,
                'displayVouchers' => $available_cart_rules,
                'isLogged' => $isLogged,
                'checkout_step' => Tools::getValue('step')
            ));

            switch (Tools::getValue('step')) {
                case 1: // Summary
                    $this->context->smarty->assign('mobile_summary', _PS_THEME_DIR_ . 'mobile-summary.tpl');
                    break;
                case 2: // Signin
                    $this->context->smarty->assign('mobile_login', _PS_THEME_DIR_ . 'mobile-login.tpl');
                    break;
                case 3: // Address
                    $customer = $this->context->customer;
                    $customerAddresses = $customer->getAddresses($this->context->language->id);
                    if (!$customerAddresses) {
                        header('Location: ' . _PS_BASE_URL_ . __PS_BASE_URI__ . 'index.php?controller=mobile-address&back=mobile-checkout%3Fstep=3');
                    }
                    // Getting a list of formated address fields with associated values
                    $formatedAddressFieldsValuesList = array();

                    foreach ($customerAddresses as $i => $address) {
                        if (!Address::isCountryActiveById((int) $address['id_address'])) {
                            unset($customerAddresses[$i]);
                        }
                        $tmpAddress = new Address($address['id_address']);
                        $formatedAddressFieldsValuesList[$address['id_address']]['ordered_fields'] = AddressFormat::getOrderedAddressFields($address['id_country']);
                        $formatedAddressFieldsValuesList[$address['id_address']]['formated_fields_values'] = AddressFormat::getFormattedAddressFieldsValues(
                                        $tmpAddress, $formatedAddressFieldsValuesList[$address['id_address']]['ordered_fields']);

                        unset($tmpAddress);
                    }

                    $customerAddresses = array_values($customerAddresses);

                    $this->context->smarty->assign('formatedAddressFieldsValuesList', $formatedAddressFieldsValuesList);
                    $this->context->smarty->assign('addresses', $customerAddresses);
                    $this->context->smarty->assign('back', _PS_BASE_URL_ . __PS_BASE_URI__ . 'mobile-checkout?step=3');
                    $this->context->smarty->assign('opc', false);
                    $this->context->smarty->assign('mobile_addresses', _PS_THEME_DIR_ . 'mobile-order-address.tpl');
                    break;
                case 4: // Shipping
                    if (!$this->context->cart->id_address_delivery) {
                        header('Location: ' . _PS_BASE_URL_ . __PS_BASE_URI__ . 'mobile-checkout?step=3');
                    }
                    if (Tools::isSubmit('processAddress')) {
                        $this->processAddress();
                    }
                    $delivery_option_list = $this->context->cart->getDeliveryOptionList();
                    $cms = new CMS(Configuration::get('PS_CONDITIONS_CMS_ID'), $this->context->language->id);
                    $this->link_conditions = $this->context->link->getCMSLink($cms, $cms->link_rewrite, (bool) Configuration::get('PS_SSL_ENABLED'));
                    $this->context->smarty->assign(array(
                        'link_conditions' => $this->link_conditions,
                        'checkedTOS' => (int) $this->context->cookie->checkedTOS,
                        'delivery_option_list' => $delivery_option_list,
                        'delivery_option' => $this->context->cart->getDeliveryOption(null, false),
                        'conditions' => (int) Configuration::get('PS_CONDITIONS')
                    ));
                    $this->context->smarty->assign('mobile_shipping', _PS_THEME_DIR_ . 'mobile-order-carrier.tpl');
                    break;
                case 5:
                    if (!$this->context->cart->id_address_delivery) {
                        header('Location: ' . _PS_BASE_URL_ . __PS_BASE_URI__ . 'mobile-checkout?step=3');
                    }

                    // Check that the conditions (so active) were accepted by the customer
                    $cgv = Tools::getValue('cgv') || $this->context->cookie->check_cgv;

                    if (Configuration::get('PS_CONDITIONS') && (!Validate::isBool($cgv) || $cgv == false)) {
                        Tools::redirect('mobile-checkout?step=4');
                    }

                    // assign some informations to display cart
                    $this->_assignSummaryInformations();

                    $this->context->smarty->assign('HOOK_PAYMENT', Module::hookExec('displayPayment'));
                    $this->context->smarty->assign('HOOK_HEADER_MOBILE', Module::hookExec('displayHeader'));

                    $this->context->smarty->assign('mobile_payment', _PS_THEME_DIR_ . 'mobile-payment.tpl');
                    break;
                case 'order-confirmation':
                    $this->paypal = new PayPal();
                    $this->context = Context::getContext();

                    $this->id_module = (int) Tools::getValue('id_module');
                    $this->id_order = (int) Tools::getValue('id_order');
                    $order = new Order($this->id_order);
                    $order_state = new OrderState($order->current_state);
                    $paypal_order = PayPalOrder::getOrderById($this->id_order);

                    if ($order_state->template[$this->context->language->id] == 'payment_error') {
                        $this->context->smarty->assign(
                                array(
                                    'message' => $order_state->name[$this->context->language->id],
                                    'logs' => array(
                                        $this->paypal->l('An error occurred while processing payment.'),
                                    ),
                                    'order' => $paypal_order,
                                    'price' => Tools::displayPrice($paypal_order['total_paid'], $this->context->currency),
                                )
                        );

                        $this->context->smarty->assign('mobile_payment_confirmation', _PS_THEME_DIR_ . 'mobile-error-payment.tpl');
                    } else {
                        $order_currency = new Currency((int) $order->id_currency);
                        $display_currency = new Currency((int) $this->context->currency->id);

                        $price = Tools::convertPriceFull($paypal_order['total_paid'], $order_currency, $display_currency);

                        $this->context->smarty->assign(array(
                            'is_guest' => (($this->context->customer->is_guest) || $this->context->customer->id == false),
                            'order' => $paypal_order,
                            'price' => Tools::displayPrice($price, $this->context->currency->id),
                            'HOOK_ORDER_CONFIRMATION' => $this->displayOrderConfirmation(),
                            'HOOK_PAYMENT_RETURN' => $this->displayPaymentReturn(),
                        ));
                        $this->context->smarty->assign('mobile_payment_confirmation', _PS_THEME_DIR_ . 'mobile-order-confirmation.tpl');
                    }
                    break;
                default:
                    $this->context->smarty->assign('mobile_summary', _PS_THEME_DIR_ . 'mobile-summary.tpl');
            }
            $this->setTemplate(_PS_THEME_DIR_ . 'mobile-checkout.tpl');
        } else {
            header('Location: ' . _PS_BASE_URL_ . __PS_BASE_URI__ . 'mobile-layout-maker');
        }
    }

    protected function _assignSummaryInformations() {
        $summary = $this->context->cart->getSummaryDetails();
        $customizedDatas = Product::getAllCustomizedDatas($this->context->cart->id);

        // override customization tax rate with real tax (tax rules)
        if ($customizedDatas) {
            foreach ($summary['products'] as &$productUpdate) {
                $productId = (int) isset($productUpdate['id_product']) ? $productUpdate['id_product'] : $productUpdate['product_id'];
                $productAttributeId = (int) isset($productUpdate['id_product_attribute']) ? $productUpdate['id_product_attribute'] : $productUpdate['product_attribute_id'];

                if (isset($customizedDatas[$productId][$productAttributeId])) {
                    $productUpdate['tax_rate'] = Tax::getProductTaxRate($productId, $this->context->cart->{Configuration::get('PS_TAX_ADDRESS_TYPE')});
                }
            }

            Product::addCustomizationPrice($summary['products'], $customizedDatas);
        }

        $cart_product_context = Context::getContext()->cloneContext();
        foreach ($summary['products'] as $key => &$product) {
            $product['quantity'] = $product['cart_quantity']; // for compatibility with 1.2 themes

            if ($cart_product_context->shop->id != $product['id_shop']) {
                $cart_product_context->shop = new Shop((int) $product['id_shop']);
            }
//            $product['price_without_specific_price'] = Product::getPriceStatic(
//                            $product['id_product'], !Product::getTaxCalculationMethod(), $product['id_product_attribute'], 6, null, false, false, 1, false, null, null, null, $null, true, true, $cart_product_context);
//
//            if (Product::getTaxCalculationMethod()) {
//                $product['is_discounted'] = Tools::ps_round($product['price_without_specific_price'], _PS_PRICE_COMPUTE_PRECISION_) != Tools::ps_round($product['price'], _PS_PRICE_COMPUTE_PRECISION_);
//            } else {
//                $product['is_discounted'] = Tools::ps_round($product['price_without_specific_price'], _PS_PRICE_COMPUTE_PRECISION_) != Tools::ps_round($product['price_wt'], _PS_PRICE_COMPUTE_PRECISION_);
//            }
        }

        // Get available cart rules and unset the cart rules already in the cart
        $available_cart_rules = CartRule::getCustomerCartRules($this->context->language->id, (isset($this->context->customer->id) ? $this->context->customer->id : 0), true, true, true, $this->context->cart, false, true);
        $cart_cart_rules = $this->context->cart->getCartRules();
        foreach ($available_cart_rules as $key => $available_cart_rule) {
            foreach ($cart_cart_rules as $cart_cart_rule) {
                if ($available_cart_rule['id_cart_rule'] == $cart_cart_rule['id_cart_rule']) {
                    unset($available_cart_rules[$key]);
                    continue 2;
                }
            }
        }

        $show_option_allow_separate_package = (!$this->context->cart->isAllProductsInStock(true) && Configuration::get('PS_SHIP_WHEN_AVAILABLE'));
        $advanced_payment_api = (bool) Configuration::get('PS_ADVANCED_PAYMENT_API');

        $this->context->smarty->assign($summary);
        $this->context->smarty->assign(array(
            'token_cart' => Tools::getToken(false),
            'isLogged' => $this->context->customer->isLogged(),
            'isVirtualCart' => $this->context->cart->isVirtualCart(),
            'productNumber' => $this->context->cart->nbProducts(),
            'voucherAllowed' => CartRule::isFeatureActive(),
            'shippingCost' => $this->context->cart->getOrderTotal(true, Cart::ONLY_SHIPPING),
            'shippingCostTaxExc' => $this->context->cart->getOrderTotal(false, Cart::ONLY_SHIPPING),
            'customizedDatas' => $customizedDatas,
            'CUSTOMIZE_FILE' => Product::CUSTOMIZE_FILE,
            'CUSTOMIZE_TEXTFIELD' => Product::CUSTOMIZE_TEXTFIELD,
            'lastProductAdded' => $this->context->cart->getLastProduct(),
            'displayVouchers' => $available_cart_rules,
            'show_option_allow_separate_package' => $show_option_allow_separate_package,
            'smallSize' => Image::getSize(ImageType::getFormatedName('small')),
            'advanced_payment_api' => $advanced_payment_api,
            'HOOK_SHOPPING_CART' => Hook::exec('displayShoppingCartFooter', $summary),
            'HOOK_SHOPPING_CART_EXTRA' => Hook::exec('displayShoppingCart', $summary),
            'HOOK_TOP_PAYMENT' => Hook::exec('displayPaymentTop'),
            'HOOK_PAYMENT' => Hook::exec('displayPayment')
        ));
    }

    protected function _updateMessage($messageContent) {
        if ($messageContent) {
            if (!Validate::isMessage($messageContent)) {
                $this->errors[] = Tools::displayError('Invalid message');
            } elseif ($oldMessage = Message::getMessageByCartId((int) $this->context->cart->id)) {
                $message = new Message((int) $oldMessage['id_message']);
                $message->message = $messageContent;
                $message->update();
            } else {
                $message = new Message();
                $message->message = $messageContent;
                $message->id_cart = (int) $this->context->cart->id;
                $message->id_customer = (int) $this->context->cart->id_customer;
                $message->add();
            }
        } else {
            if ($oldMessage = Message::getMessageByCartId($this->context->cart->id)) {
                $message = new Message($oldMessage['id_message']);
                $message->delete();
            }
        }
        return true;
    }

    /**
     * Manage address
     */
    public function processAddress() {
        $same = Tools::isSubmit('same');
        if (!Tools::getValue('id_address_invoice', false) && !$same) {
            $same = true;
        }

        if (!Customer::customerHasAddress($this->context->customer->id, (int) Tools::getValue('id_address_delivery')) || (!$same && Tools::getValue('id_address_delivery') != Tools::getValue('id_address_invoice') && !Customer::customerHasAddress($this->context->customer->id, (int) Tools::getValue('id_address_invoice')))) {
            $this->errors[] = Tools::displayError('Invalid address', !Tools::getValue('ajax'));
        } else {
            $this->context->cart->id_address_delivery = (int) Tools::getValue('id_address_delivery');
            $this->context->cart->id_address_invoice = $same ? $this->context->cart->id_address_delivery : (int) Tools::getValue('id_address_invoice');

            CartRule::autoRemoveFromCart($this->context);
            CartRule::autoAddToCart($this->context);

            if (!$this->context->cart->update()) {
                $this->errors[] = Tools::displayError('An error occurred while updating your cart.', !Tools::getValue('ajax'));
            }

            if (!$this->context->cart->isMultiAddressDelivery()) {
                $this->context->cart->setNoMultishipping();
            } // If there is only one delivery address, set each delivery address lines with the main delivery address

            if (Tools::isSubmit('message')) {
                $this->_updateMessage(Tools::getValue('message'));
            }

            // Add checking for all addresses
            $errors = array();
            $address_without_carriers = $this->context->cart->getDeliveryAddressesWithoutCarriers(false, $errors);
            if (count($address_without_carriers) && !$this->context->cart->isVirtualCart()) {
                $flag_error_message = false;
                foreach ($errors as $error) {
                    if ($error == Carrier::SHIPPING_WEIGHT_EXCEPTION && !$flag_error_message) {
                        $this->errors[] = sprintf(Tools::displayError('The product selection cannot be delivered by the available carrier(s): it is too heavy. Please amend your cart to lower its weight.', !Tools::getValue('ajax')));
                        $flag_error_message = true;
                    } elseif ($error == Carrier::SHIPPING_PRICE_EXCEPTION && !$flag_error_message) {
                        $this->errors[] = sprintf(Tools::displayError('The product selection cannot be delivered by the available carrier(s). Please amend your cart.', !Tools::getValue('ajax')));
                        $flag_error_message = true;
                    } elseif ($error == Carrier::SHIPPING_SIZE_EXCEPTION && !$flag_error_message) {
                        $this->errors[] = sprintf(Tools::displayError('The product selection cannot be delivered by the available carrier(s): its size does not fit. Please amend your cart to reduce its size.', !Tools::getValue('ajax')));
                        $flag_error_message = true;
                    }
                }
                if (count($address_without_carriers) > 1 && !$flag_error_message) {
                    $this->errors[] = sprintf(Tools::displayError('There are no carriers that deliver to some addresses you selected.', !Tools::getValue('ajax')));
                } elseif ($this->context->cart->isMultiAddressDelivery() && !$flag_error_message) {
                    $this->errors[] = sprintf(Tools::displayError('There are no carriers that deliver to one of the address you selected.', !Tools::getValue('ajax')));
                } elseif (!$flag_error_message) {
                    $this->errors[] = sprintf(Tools::displayError('There are no carriers that deliver to the address you selected.', !Tools::getValue('ajax')));
                }
            }
        }

        if ($this->errors) {
            if (Tools::getValue('ajax')) {
                $this->ajaxDie('{"hasError" : true, "errors" : ["' . implode('\',\'', $this->errors) . '"]}');
            }
            $this->step = 1;
        }

        if ($this->ajax) {
            $this->ajaxDie(true);
        }
    }

    private function displayHook() {
        if (Validate::isUnsignedId($this->id_order) && Validate::isUnsignedId($this->id_module)) {
            $order = new Order((int) $this->id_order);
            $currency = new Currency((int) $order->id_currency);

            if (Validate::isLoadedObject($order)) {
                $params = array();
                $params['objOrder'] = $order;
                $params['currencyObj'] = $currency;
                $params['currency'] = $currency->sign;
                $params['total_to_pay'] = $order->getOrdersTotalPaid();

                return $params;
            }
        }

        return false;
    }

    /**
     * Execute the hook displayPaymentReturn
     */
    public function displayPaymentReturn() {
        $params = $this->displayHook();

        if ($params && is_array($params)) {
            return Hook::exec('displayPaymentReturn', $params, (int) $this->id_module);
        }

        return false;
    }

    /**
     * Execute the hook displayOrderConfirmation
     */
    public function displayOrderConfirmation() {
        $params = $this->displayHook();

        if ($params && is_array($params)) {
            return Hook::exec('displayOrderConfirmation', $params);
        }

        return false;
    }

}
