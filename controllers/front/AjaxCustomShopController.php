<?php

class AjaxCustomShopControllerCore extends FrontController {

    public function displayAjaxRotateCreationPicture() {
        $result['success'] = false;
        $result['error'] = 'Information missing';
        if (Tools::getValue('id_creation') && Tools::getValue('direction')) {
            $oCreation = new CustomShopProduct(Tools::getValue('id_creation'));
            //define image path
            $filename = $oCreation->custom_img;
            $sFolder = 'img/custom_shop/creation/';
            // Load the image
            $source = imagecreatefrompng($sFolder . $filename);
            // Rotate
            if (Tools::getValue('direction') == 'right') {
                $rotate = imagerotate($source, 270, 0);
            } else {
                $rotate = imagerotate($source, 90, 0);
            }
            $sNewName = time() . '_' . $oCreation->id.'.png';
            //and save it on your server...
            if (imagepng($rotate, $sFolder.$sNewName)) {
                unlink($sFolder . $filename);
                $oCreation->custom_img = $sNewName;
                $oCreation->save();
                $result = [];
                $result['success'] = true;
                $result['picture'] = _PS_BASE_URL_SSL_ . __PS_BASE_URI__.$sFolder . $sNewName;
            } else {
                $result['error'] = 'Impossible to rotate';
            }
        }
        echo json_encode($result);
    }
    
    public function displayAjaxSaveDesignCategory() {
        $result = [];
        $result['success'] = true;
        if (Tools::getValue('category') != null && Tools::getValue('id_design')) {
            $oDesign = new CustomShopDesign(Tools::getValue('id_design'));
            if ($oDesign) {
                $oDesign->id_category = Tools::getValue('category');
                if ($oDesign->save()) {
                    $result['success'] = true;
                } else {
                    $result['success'] = false;
                    $result['error'] = 'Impossible to modify';
                }
            }
        } else {
            $result['success'] = false;
            $result['error'] = 'Information missing';
        }
        echo json_encode($result);
    }

    public function displayAjaxSaveProductsOrder() {
        $result = [];
        $result['success'] = true;

        if (Tools::getValue('order') && Tools::getValue('shop')) {
            foreach (Tools::getValue('order') as $sCreationId => $sOrderNumber) {
                $oCreation = new CustomShopProduct($sCreationId);
                if ($oCreation) {
                    $oCreation->order_number = $sOrderNumber;
                    $oCreation->save();
                }
            }
        } else {
            $result['success'] = false;
            $result['error'] = 'Information missing';
        }
        echo json_encode($result);
    }

    public function displayAjaxSendPassword() {
        $result = [];
        $result['success'] = true;
        if (CustomShopAccount::emailExists(Tools::getValue('email'))) {
            $oCustomAccount = CustomShopAccount::getAccountByEmail(Tools::getValue('email'));
            // reset password
            $oCustomAccount->passwd = $this->generateRandomString();
            if ($oCustomAccount->save()) {
                //send email
                $data = array();
                $data['{shop_name}'] = Tools::safeOutput(Configuration::get('PS_SHOP_NAME', null, null, null));
                $data['{firstname}'] = $oCustomAccount->firstname;
                $data['{lastname}'] = $oCustomAccount->lastname;
                $data['{email}'] = $oCustomAccount->email;
                $data['{passwd}'] = $oCustomAccount->passwd;
                $mail = Mail::Send($this->context->language->id, 'custom_shop_password', 'Password request', $data, $oCustomAccount->email);
                if (!$mail) {
                    $result['success'] = false;
                    $result['error'] = 'Email could not be sent successfully';
                }
            } else {
                $result['success'] = false;
                $result['error'] = 'Error: could not reset the password, please contact us';
            }
        } else {
            $result['success'] = false;
            $result['error'] = 'No account exists with this email';
        }
        echo json_encode($result);
    }

    public function generateRandomString($length = 10) {
        return substr(str_shuffle(str_repeat($x = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ', ceil($length / strlen($x)))), 1, $length);
    }

    public function displayAjaxActivateDeactivateShop() {
        $result = [];
        $result['success'] = true;
        if (Tools::getIsset('deactivated') && Tools::getValue('shop')) {
            $oShop = new CustomShop(Tools::getValue('shop'));
            $oShop->deactivated = Tools::getValue('deactivated');
            $oShop->save();
        } else {
            $result['success'] = false;
            $result['error'] = 'Information missing';
        }
        echo json_encode($result);
    }

    public function displayAjaxSaveStatus() {
        $result = [];
        $result['success'] = true;
        if (Tools::getValue('status') && Tools::getValue('id_order')) {
            $oOrder = new Order(Tools::getValue('id_order'));
            $oOrder->status = Tools::getValue('status');
            $oOrder->save();
        } else {
            $result['success'] = false;
            $result['error'] = 'Information missing';
        }
        echo json_encode($result);
    }

    public function displayAjaxSaveTracking() {
        $result = [];
        $result['success'] = true;
        if (Tools::getValue('tracking') && Tools::getValue('id_order')) {
            $oOrder = new Order(Tools::getValue('id_order'));
            $oOrder->tracking = Tools::getValue('tracking');
            $oOrder->save();
        } else {
            $result['success'] = false;
            $result['error'] = 'Information missing';
        }
        echo json_encode($result);
    }

    public function displayAjaxPayShop() {
        $result = [];
        $result['success'] = true;
        if (Tools::getValue('shop')) {
            $aIdOrders = CustomShop::getNonPaidOrdersId(Tools::getValue('shop'));
            if ($aIdOrders) {
                $oBill = new CustomShopBillingHistory(null, ['id_shop' => Tools::getValue('shop'), 'date' => date('Y-m-d')]);
                $oBill->amount = CustomShop::getCurrentSituation(Tools::getValue('shop'))['total_commission'];
                $oBill->save();
                $aFormattedIdOrders = [];
                foreach ($aIdOrders as $aIdOrder) {
                    $aFormattedIdOrders[] = $aIdOrder['id_order'];
                }
                DB::getInstance()->update('orders', ['id_billing' => $oBill->id, 'status' => 5], '`id_order` IN (' . implode(', ', $aFormattedIdOrders) . ')');

                // send email
                $aCustomShopAccount = CustomShopAccount::getAccountByShopId(Tools::getValue('shop'));
                $aCustomShop = CustomShop::getShopById(Tools::getValue('shop'));
                $data = array();
                $data['{shop_name}'] = Tools::safeOutput(Configuration::get('PS_SHOP_NAME', null, null, null));
                $data['{firstname}'] = $aCustomShopAccount['firstname'];
                $data['{lastname}'] = $aCustomShopAccount['lastname'];
                $data['{custom_shop_name}'] = $aCustomShop['name'];
                $data['{custom_shop_registration_url}'] = _PS_BASE_URL_SSL_ . __PS_BASE_URI__ . 'custom-shop-registration';
                $data['{custom_shop_url}'] = _PS_BASE_URL_SSL_ . __PS_BASE_URI__ . 'shop/' . $aCustomShop['name'];
                $data['{custom_shop_invoice_url}'] = _PS_BASE_URL_SSL_ . __PS_BASE_URI__ . 'index.php?controller=customshoppdfbill&id_bill=' . $oBill->id;
                $result['mail_sent'] = Mail::Send($this->context->language->id, 'custom_shop_payment_commission_confirm', 'Confirmation commission payment', $data, $aCustomShopAccount['email']);

                $result['bill'] = $oBill;
            } else {
                $result['success'] = false;
                $result['error'] = 'No orders';
            }
        } else {
            $result['success'] = false;
            $result['error'] = 'Shop id missing';
        }
        echo json_encode($result);
    }

    public function displayAjaxLoadContactPopup() {
        global $smarty;

        $this->assignOrderList();

        $email = Tools::safeOutput(Tools::getValue('from', ((isset($this->context->cookie) && isset($this->context->cookie->email) && Validate::isEmail($this->context->cookie->email)) ? $this->context->cookie->email : '')));
        $this->context->smarty->assign(array(
            'errors' => $this->errors,
            'email' => $email,
            'fileupload' => Configuration::get('PS_CUSTOMER_SERVICE_FILE_UPLOAD'),
            'max_upload_size' => (int) Tools::getMaxUploadSize(),
            'custom_shop_id' => Tools::getValue('custom_shop_id')
        ));

        if (($id_customer_thread = (int) Tools::getValue('id_customer_thread')) && $token = Tools::getValue('token')) {
            $customer_thread = Db::getInstance()->getRow('
				SELECT cm.*
				FROM ' . _DB_PREFIX_ . 'customer_thread cm
				WHERE cm.id_customer_thread = ' . (int) $id_customer_thread . '
				AND cm.id_shop = ' . (int) $this->context->shop->id . '
				AND token = \'' . pSQL($token) . '\'
			');

            $order = new Order((int) $customer_thread['id_order']);
            if (Validate::isLoadedObject($order)) {
                $customer_thread['reference'] = $order->getUniqReference();
            }
            $this->context->smarty->assign('customerThread', $customer_thread);
        }

        $this->context->smarty->assign(array(
            'contacts' => Contact::getContacts($this->context->language->id),
            'message' => html_entity_decode(Tools::getValue('message')),
        ));

        $rendered_content = $smarty->fetch(_PS_THEME_DIR_ . 'custom-shop-front-contact-us.tpl');
        echo Media::minifyHTML($rendered_content);
    }

    public function displayAjaxSubmitContactForm() {
        if (Tools::isSubmit('message')) {
            global $smarty;

            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL, "https://www.google.com/recaptcha/api/siteverify");
            curl_setopt($ch, CURLOPT_POST, 1);
            $secret = '6LdWFwwUAAAAAPbbeLIplVLPTt0sJgqoPGUw4RWZ';
            if ($_SERVER['HTTP_HOST'] == 'pimpyourkeys.com') {
                $secret = '6LecpxwUAAAAAEaHnpzskXbRqgrFBdwhrQXjRmMH';
            }
            curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query(array(
                'response' => Tools::getValue('g-recaptcha-response'),
                'secret' => $secret
            )));

            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

            $server_output = json_decode(curl_exec($ch));
            curl_close($ch);

            $extension = array('.txt', '.rtf', '.doc', '.docx', '.pdf', '.zip', '.png', '.jpeg', '.gif', '.jpg');
            $file_attachment = Tools::fileAttachment('fileUpload');
            $message = Tools::getValue('message'); // Html entities is not usefull, iscleanHtml check there is no bad html tags.
            $whitelist = array(
                '127.0.0.1',
                '::1'
            );
            $bIsLocal = true;
            if (!in_array($_SERVER['REMOTE_ADDR'], $whitelist)) {
                $bIsLocal = false;
            }
            if (!$bIsLocal && (!$server_output || !$server_output->success)) {
                $this->errors[] = Tools::displayError('Wrong reCAPTCHA. ');
            } elseif (!($from = trim(Tools::getValue('from'))) || !Validate::isEmail($from)) {
                $this->errors[] = Tools::displayError('Invalid email address.');
            } elseif (!$message) {
                $this->errors[] = Tools::displayError('The message cannot be blank.');
            } elseif (!Validate::isCleanHtml($message)) {
                $this->errors[] = Tools::displayError('Invalid message');
            } elseif (!($id_contact = (int) Tools::getValue('id_contact')) || !(Validate::isLoadedObject($contact = new Contact($id_contact, $this->context->language->id)))) {
                $this->errors[] = Tools::displayError('Please select a subject from the list provided. ');
            } elseif (!empty($file_attachment['name']) && $file_attachment['error'] != 0) {
                $this->errors[] = Tools::displayError('An error occurred during the file-upload process.');
            } elseif (!empty($file_attachment['name']) && !in_array(Tools::strtolower(substr($file_attachment['name'], -4)), $extension) && !in_array(Tools::strtolower(substr($file_attachment['name'], -5)), $extension)) {
                $this->errors[] = Tools::displayError('Bad file extension');
            } else {
                $customer = $this->context->customer;
                if (!$customer->id) {
                    $customer->getByEmail($from);
                }

                $id_order = (int) $this->getOrder();

                if (!((
                        ($id_customer_thread = (int) Tools::getValue('id_customer_thread')) && (int) Db::getInstance()->getValue('
						SELECT cm.id_customer_thread FROM ' . _DB_PREFIX_ . 'customer_thread cm
						WHERE cm.id_customer_thread = ' . (int) $id_customer_thread . ' AND cm.id_shop = ' . (int) $this->context->shop->id . ' AND token = \'' . pSQL(Tools::getValue('token')) . '\'')
                        ) || (
                        $id_customer_thread = CustomerThread::getIdCustomerThreadByEmailAndIdOrder($from, $id_order)
                        ))) {
                    $fields = Db::getInstance()->executeS('
					SELECT cm.id_customer_thread, cm.id_contact, cm.id_customer, cm.id_order, cm.id_product, cm.email
					FROM ' . _DB_PREFIX_ . 'customer_thread cm
					WHERE email = \'' . pSQL($from) . '\' AND cm.id_shop = ' . (int) $this->context->shop->id . ' AND (' .
                            ($customer->id ? 'id_customer = ' . (int) $customer->id . ' OR ' : '') . '
						id_order = ' . (int) $id_order . ')');
                    $score = 0;
                    foreach ($fields as $key => $row) {
                        $tmp = 0;
                        if ((int) $row['id_customer'] && $row['id_customer'] != $customer->id && $row['email'] != $from) {
                            continue;
                        }
                        if ($row['id_order'] != 0 && $id_order != $row['id_order']) {
                            continue;
                        }
                        if ($row['email'] == $from) {
                            $tmp += 4;
                        }
                        if ($row['id_contact'] == $id_contact) {
                            $tmp++;
                        }
                        if (Tools::getValue('id_product') != 0 && $row['id_product'] == Tools::getValue('id_product')) {
                            $tmp += 2;
                        }
                        if ($tmp >= 5 && $tmp >= $score) {
                            $score = $tmp;
                            $id_customer_thread = $row['id_customer_thread'];
                        }
                    }
                }
                $old_message = Db::getInstance()->getValue('
					SELECT cm.message FROM ' . _DB_PREFIX_ . 'customer_message cm
					LEFT JOIN ' . _DB_PREFIX_ . 'customer_thread cc on (cm.id_customer_thread = cc.id_customer_thread)
					WHERE cc.id_customer_thread = ' . (int) $id_customer_thread . ' AND cc.id_shop = ' . (int) $this->context->shop->id . '
					ORDER BY cm.date_add DESC');
                if ($old_message == $message) {
                    $this->context->smarty->assign('alreadySent', 1);
                    $contact->email = '';
                    $contact->customer_service = 0;
                }

                if ($contact->customer_service) {
                    if ((int) $id_customer_thread) {
                        $ct = new CustomerThread($id_customer_thread);
                        $ct->status = 'open';
                        $ct->id_lang = (int) $this->context->language->id;
                        $ct->id_contact = (int) $id_contact;
                        $ct->id_order = (int) $id_order;
                        if ($id_product = (int) Tools::getValue('id_product')) {
                            $ct->id_product = $id_product;
                        }
                        $ct->update();
                    } else {
                        $ct = new CustomerThread();
                        if (isset($customer->id)) {
                            $ct->id_customer = (int) $customer->id;
                        }
                        $ct->id_shop = (int) $this->context->shop->id;
                        $ct->id_order = (int) $id_order;
                        if ($id_product = (int) Tools::getValue('id_product')) {
                            $ct->id_product = $id_product;
                        }
                        $ct->id_contact = (int) $id_contact;
                        $ct->id_lang = (int) $this->context->language->id;
                        $ct->email = $from;
                        $ct->status = 'open';
                        $ct->token = Tools::passwdGen(12);
                        $ct->add();
                    }

                    if ($ct->id) {
                        $cm = new CustomerMessage();
                        $cm->id_customer_thread = $ct->id;
                        $cm->message = $message;
                        $cm->custom_shop_id = Tools::getValue('custom_shop_id');
                        if (isset($file_attachment['rename']) && !empty($file_attachment['rename']) && rename($file_attachment['tmp_name'], _PS_UPLOAD_DIR_ . basename($file_attachment['rename']))) {
                            $cm->file_name = $file_attachment['rename'];
                            @chmod(_PS_UPLOAD_DIR_ . basename($file_attachment['rename']), 0664);
                        }
                        $cm->ip_address = (int) ip2long(Tools::getRemoteAddr());
                        $cm->user_agent = $_SERVER['HTTP_USER_AGENT'];
                        if (!$cm->add()) {
                            $this->errors[] = Tools::displayError('An error occurred while sending the message.');
                        }
                    } else {
                        $this->errors[] = Tools::displayError('An error occurred while sending the message.');
                    }
                }

                if (!count($this->errors)) {
                    $aCustomShop = CustomShop::getShopById(Tools::getValue('custom_shop_id'));
                    $var_list = array(
                        '{order_name}' => '-',
                        '{attached_file}' => '-',
                        '{message}' => Tools::nl2br(stripslashes($message)),
                        '{email}' => $from,
                        '{product_name}' => '',
                        '{custom_shop_link}' => _PS_BASE_URL_SSL_ . __PS_BASE_URI__ . 'shop/' . $aCustomShop['name'],
                        '{custom_shop_title}' => $aCustomShop['title'],
                    );

                    if (isset($file_attachment['name'])) {
                        $var_list['{attached_file}'] = $file_attachment['name'];
                    }

                    $id_product = (int) Tools::getValue('id_product');

                    if (isset($ct) && Validate::isLoadedObject($ct) && $ct->id_order) {
                        $order = new Order((int) $ct->id_order);
                        $var_list['{order_name}'] = $order->getUniqReference();
                        $var_list['{id_order}'] = (int) $order->id;
                    }

                    if ($id_product) {
                        $product = new Product((int) $id_product);
                        if (Validate::isLoadedObject($product) && isset($product->name[Context::getContext()->language->id])) {
                            $var_list['{product_name}'] = $product->name[Context::getContext()->language->id];
                        }
                    }

                    if (empty($contact->email)) {
                        Mail::Send($this->context->language->id, 'contact_form', ((isset($ct) && Validate::isLoadedObject($ct)) ? sprintf(Mail::l('Your message has been correctly sent #ct%1$s #tc%2$s'), $ct->id, $ct->token) : Mail::l('Your message has been correctly sent')), $var_list, $from, null, null, null, $file_attachment);
                    } else {
                        if (!Mail::Send($this->context->language->id, 'contact', Mail::l('Message from contact form') . ' [no_sync]', $var_list, $contact->email, $contact->name, null, null, $file_attachment, null, _PS_MAIL_DIR_, false, null, null, $from) ||
                                !Mail::Send($this->context->language->id, 'contact_form', ((isset($ct) && Validate::isLoadedObject($ct)) ? sprintf(Mail::l('Your message has been correctly sent #ct%1$s #tc%2$s'), $ct->id, $ct->token) : Mail::l('Your message has been correctly sent')), $var_list, $from, null, null, null, $file_attachment, null, _PS_MAIL_DIR_, false, null, null, $contact->email)) {
                            $this->errors[] = Tools::displayError('An error occurred while sending the message.');
                        }
                    }
                }

                if (count($this->errors) > 1) {
                    array_unique($this->errors);
                } elseif (!count($this->errors)) {
                    $this->context->smarty->assign('confirmation', 1);
                }
            }
//            $this->context->smarty->assign('show_contact_popup', true);
            $this->assignOrderList();

            $email = Tools::safeOutput(Tools::getValue('from', ((isset($this->context->cookie) && isset($this->context->cookie->email) && Validate::isEmail($this->context->cookie->email)) ? $this->context->cookie->email : '')));
            $this->context->smarty->assign(array(
                'errors' => $this->errors,
                'email' => $email,
                'fileupload' => Configuration::get('PS_CUSTOMER_SERVICE_FILE_UPLOAD'),
                'max_upload_size' => (int) Tools::getMaxUploadSize(),
                'custom_shop_id' => Tools::getValue('custom_shop_id')
            ));

            if (($id_customer_thread = (int) Tools::getValue('id_customer_thread')) && $token = Tools::getValue('token')) {
                $customer_thread = Db::getInstance()->getRow('
				SELECT cm.*
				FROM ' . _DB_PREFIX_ . 'customer_thread cm
				WHERE cm.id_customer_thread = ' . (int) $id_customer_thread . '
				AND cm.id_shop = ' . (int) $this->context->shop->id . '
				AND token = \'' . pSQL($token) . '\'
			');

                $order = new Order((int) $customer_thread['id_order']);
                if (Validate::isLoadedObject($order)) {
                    $customer_thread['reference'] = $order->getUniqReference();
                }
                $this->context->smarty->assign('customerThread', $customer_thread);
            }

            $this->context->smarty->assign(array(
                'contacts' => Contact::getContacts($this->context->language->id),
                'message' => html_entity_decode(Tools::getValue('message')),
            ));

            $rendered_content = $smarty->fetch(_PS_THEME_DIR_ . 'custom-shop-front-contact-us.tpl');
            echo Media::minifyHTML($rendered_content);
        }
    }

    /**
     * Assign template vars related to order list and product list ordered by the customer
     */
    protected function assignOrderList() {
        if ($this->context->customer->isLogged()) {
            $this->context->smarty->assign('isLogged', 1);

            $products = array();
            $result = Db::getInstance()->executeS('
			SELECT id_order
			FROM ' . _DB_PREFIX_ . 'orders
			WHERE id_customer = ' . (int) $this->context->customer->id . Shop::addSqlRestriction(Shop::SHARE_ORDER) . ' ORDER BY date_add');

            $orders = array();

            foreach ($result as $row) {
                $order = new Order($row['id_order']);
                $date = explode(' ', $order->date_add);
                $tmp = $order->getProducts();
                foreach ($tmp as $key => $val) {
                    $products[$row['id_order']][$val['product_id']] = array('value' => $val['product_id'], 'label' => $val['product_name']);
                }

                $orders[] = array('value' => $order->id, 'label' => $order->getUniqReference() . ' - ' . Tools::displayDate($date[0], null), 'selected' => (int) $this->getOrder() == $order->id);
            }

            $this->context->smarty->assign('orderList', $orders);
            $this->context->smarty->assign('orderedProductList', $products);
        }
    }

    protected function getOrder() {
        $id_order = false;
        if (!is_numeric($reference = Tools::getValue('id_order'))) {
            $reference = ltrim($reference, '#');
            $orders = Order::getByReference($reference);
            if ($orders) {
                foreach ($orders as $order) {
                    $id_order = (int) $order->id;
                    break;
                }
            }
        } elseif (Order::getCartIdStatic((int) Tools::getValue('id_order'))) {
            $id_order = (int) Tools::getValue('id_order');
        }
        return (int) $id_order;
    }

    public function displayAjaxLoadCartProducts() {
        global $smarty;
        $aProducts = $this->context->cart->getProducts(true, null, null, true);
        $this->context->smarty->assign('products', $aProducts);
        $this->context->smarty->assign('custom_shop_name', Tools::getValue('custom_shop_name'));
        $rendered_content = $smarty->fetch(_PS_THEME_DIR_ . 'custom-shop-front-cart-products.tpl');
        echo Media::minifyHTML($rendered_content);
    }

    public function displayAjaxRemoveFromCart() {
        $result = [];
        $result['success'] = true;
        if (Tools::getValue('id_creation')) {
            $aProduct = CustomShopProduct::getProductById(Tools::getValue('id_creation'));
            if ($this->context->cart->deleteProduct($aProduct['id_product'], null, null, null, null, null, Tools::getValue('id_creation'))) {
                $result['nb_products'] = $result['nb_products'] = $this->context->cart->nbProducts(true);
            } else {
                $result['success'] = false;
                $result['error'] = 'Impossible to remove product from cart, please try again or contact us';
            }
        } else {
            $result['success'] = false;
            $result['error'] = 'Impossible to remove product from cart, information missing';
        }
        echo json_encode($result);
    }

    public function displayAjaxAddToCartCustomProduct() {
        $result = [];
        $result['success'] = true;
        if (Tools::getValue('id_creation')) {
            if (!$this->context->cart->id) {
                if (Context::getContext()->cookie->id_guest) {
                    $guest = new Guest(Context::getContext()->cookie->id_guest);
                    $this->context->cart->mobile_theme = $guest->mobile_theme;
                }
                $this->context->cart->add();
                if ($this->context->cart->id) {
                    $this->context->cookie->id_cart = (int) $this->context->cart->id;
                }
            }

            $oCreation = new CustomShopProduct(Tools::getValue('id_creation'));

            if ($this->context->cart->updateQty('1', $oCreation->id_product, null, null, 'up', null, null, null, null, null, null, $oCreation->id)) {
                $result['nb_products'] = $this->context->cart->nbProducts(true);
            } else {
                $result['success'] = false;
                $result['error'] = 'Impossible to add product to cart';
            }
        } else {
            $result['success'] = false;
            $result['error'] = 'Impossible to add product to cart, information missing';
        }
        echo json_encode($result);
    }

    public function displayAjaxloadTerms() {
        global $smarty;
        $oCms = new CMS(3, $this->context->language->id);
        if (Validate::isLoadedObject($oCms)) {
            $this->context->smarty->assign('cms_page_html', $oCms->content);
        }
        $rendered_content = $smarty->fetch(_PS_THEME_DIR_ . 'custom-shop-cms-content.tpl');
        echo Media::minifyHTML($rendered_content);
    }

    public function displayAjaxloadContactUs() {
        include_once(_PS_FRONT_CONTROLLER_DIR_ . "/CustomShopFrontContactUsController.php");
        $rendered_content = $this->context->smarty->fetch(_PS_THEME_DIR_ . 'custom-shop-front-contract-us.tpl');
        echo Media::minifyHTML($rendered_content);
    }

    public function displayAjaxRemoveLogoOrHeader() {
        $result = [];
        $result['success'] = true;
        if (Tools::getValue('type') && Tools::getValue('img_name') && Tools::getValue('shop')) {
            $oShop = new CustomShop(Tools::getValue('shop'));
            $sFolder = 'img/custom_shop/' . Tools::getValue('type') . '/';
            if (unlink($sFolder . $oShop->{Tools::getValue('type')})) {
                $oShop->{Tools::getValue('type')} = '';
                $oShop->save();
            }
        } else {
            $result['success'] = false;
            $result['error'] = 'Information missing';
        }
        echo json_encode($result);
    }

    public function displayAjaxSaveShopImage() {
        $result = [];
        $result['success'] = true;
        if (Tools::getValue('shop') && Tools::getValue('type') && $_FILES) {
            foreach ($_FILES as $file) {
                $sName = time() . '_' . Tools::getValue('shop') . '_' . $file['name'];
                $sFolder = 'img/custom_shop/' . Tools::getValue('type') . '/';
                if (move_uploaded_file($file['tmp_name'], $sFolder . basename($sName))) {
                    $oShop = new CustomShop(Tools::getValue('shop'));
                    if ($oShop->{Tools::getValue('type')}) {
                        unlink($sFolder . $oShop->{Tools::getValue('type')});
                    }
                    $sImageTitle = str_replace(['.jpg', '.png', '.gif'], '', $file['name']);
                    $result['image_name'] = $sName;

                    if (Tools::getValue('type') === 'logo') {
                        $oShop->setLogo($sName);
                    } else {
                        $oShop->setHeader($sName);
                    }
                    if (!$oShop->save()) {
                        $result['success'] = false;
                    }
                } else {
                    $result['success'] = false;
                }
            }
        } else {
            $result['success'] = false;
            $result['error'] = 'Impossible to upload the picture, information missing';
        }
        echo json_encode($result);
    }

    public function displayAjaxDeleteCreation() {
        $result = [];
        $result['success'] = true;
        if (Tools::getValue('id_creation')) {
            $oCreation = new CustomShopProduct(Tools::getValue('id_creation'));
            $oCreation->delete();
        } else {
            $result['success'] = false;
            $result['error'] = 'Impossible to remove, information missing';
        }
        echo json_encode($result);
    }

    public function displayAjaxPublishAll() {
        $aIdProductsPublished = CustomShopProduct::publishAll(Tools::getValue('shop'));
        echo json_encode($aIdProductsPublished);
    }

    public function displayAjaxPublish() {
        $result = [];
        $result['success'] = true;
        if (Tools::getValue('published') !== null && Tools::getValue('id_creation')) {
            $oCreation = new CustomShopProduct(Tools::getValue('id_creation'));
            $oCreation->setProductName(Tools::getValue('product_name'));
            $oCreation->save();
            if ($oCreation->product_name) {
                $oCreation->setPublished((Tools::getValue('published') === 'true' ? true : false));
                $oCreation->save();
            } else {
                $result['success'] = false;
                $result['error'] = 'You have to set a product name to publish the product';
            }
        } else {
            $result['success'] = false;
            $result['error'] = 'Impossible to modify the status, information missing';
        }
        echo json_encode($result);
    }

    public function displayAjaxSaveCreation() {
        $result = [];
        $result['success'] = true;
        if (Tools::getValue('id_product') && Tools::getValue('id_design') && Tools::getValue('custom_picture') && Tools::getValue('shop')) {
            $oCreation = new CustomShopProduct(null, ['id_product' => Tools::getValue('id_product'), 'id_design' => Tools::getValue('id_design'), 'id_shop' => Tools::getValue('shop')]);
            $sImgPath = $oCreation->saveCreationPicture(Tools::getValue('custom_picture'));
            $oDesign = new CustomShopDesignCore(Tools::getValue('id_design'));
            $oCreation->product_name = $oDesign->name . ' - ' . Product::getProductName(Tools::getValue('id_product'));
            $oCreation->save();
            $result['image'] = $sImgPath;
        } else {
            $result['success'] = false;
            $result['error'] = 'Impossible to save the creation, information missing';
        }
        echo json_encode($result);
    }

    public function displayAjaxLoadProducts() {
//        $aProducts = Product::getProducts($this->context->language->id, (Tools::getValue('last_range') ? : 0), (Tools::getValue('nb_products') ? : 12), 'date_add', 'DESC', (Tools::getValue('id_category') ? : '45'), true, $this->context);
        $aProducts = Product::getProducts($this->context->language->id, null, null, 'date_add', 'DESC', (Tools::getValue('id_category') ? : '45'), true, $this->context);
        foreach ($aProducts as &$aProduct) {
            $aProduct['images'] = (new Product($aProduct['id_product']))->getImages($this->context->language->id);
            foreach ($aProduct['images'] as $key => $image) {
                if ($image['legend'] == 'recess' || is_numeric($image['legend'])) {
                    unset($aProduct['images'][$key]);
                }
            }

            $aQuantities = [1, 5, 10, 25, 50, 100];
            $aPrices = [];
            foreach ($aQuantities as $iQuantity) {
                $aPrices[$iQuantity] = Product::getPriceStatic((int) $aProduct['id_product'], true, null, 2, null, false, true, $iQuantity);
            }
            $aProduct['prices'] = $aPrices;
        }
        $this->context->smarty->assign([
            'products' => $aProducts,
            'bLoadJs' => (Tools::getValue('first_time') == 1),
            'first_item_id' => (Tools::getValue('last_range') ? : 0) + 1
        ]);
        if (Tools::getValue('last_range') == 0) {
            $aCategories = [];
            foreach (array_values(Category::getCategories($this->context->language->id, true, true, 'AND `id_parent` = ' . pSQL('45')))[0] as $key => $aCategory) {
                $aCategories[$key] = $aCategory['infos'];
            }
            $this->context->smarty->assign('categories', $aCategories);
            $this->context->smarty->assign('products_categories', Category::getCategoryInformations(['45']));
        }

        $rendered_content = $this->context->smarty->fetch(_PS_THEME_DIR_ . 'custom-shop-admin-popup-list-products.tpl');
        echo Media::minifyHTML($rendered_content);
    }

    public function displayAjaxLoadPictureBlocks() {
        $sHtml = '';
        $iOffset = Tools::getValue('offset') ? : 0;
        $iNbrItem = Tools::getValue('nbr') ? : 1;
        $iNumberEnd = $iOffset + $iNbrItem;
        $aDesignCategories = CustomShopDesign::getDesignCategories();
        for ($i = $iOffset + 1; $i <= $iNumberEnd; $i++) {
            $sHtml .= '
                <div class="col-sm-4 col-md-4 col-lg-3 margin-bottom-10 block-picture-container block-picture-container-' . $i . '">
                    <div class="border shadow" data-id="' . $i . '" >
                        <div class="trash" data-id="' . $i . '"  data-db-id=""><span class="glyphicon glyphicon-trash"></span></div>
                        <div class="col-xs-10 margin-auto input-group-sm">
                            <input class="form-control margin-top-5 margin-bottom-5 text-center picture-name picture-name-' . $i . '" data-db-id="" placeholder="Picture name" value="" disabled="">
                        </div>
                        <div class="col-xs-12 thumbnail border-none margin-bottom-0 margin-auto block-picture cursor-pointer upload-btn" data-db-id="" data-id="' . $i . '" >
                            <img class="upload-picture upload-picture-' . $i . '" src="' . __PS_BASE_URI__ . 'img/upload-icon.jpg" title="upload" alt="upload">
                        </div>
                        <div class="col-xs-12 font-size-13 padding-0">
                        <div class="col-xs-4 padding-right-0 bold">Category: </div>
                        <div class="col-xs-8 padding-right-0">
                            <select class="design-category" data-db-id="" disabled>
                                <option value="0">Other</option>';
                            foreach ($aDesignCategories as $aDesignCategory) {
                                $sHtml .= '<option value="'.$aDesignCategory['id'].'">'.$aDesignCategory['name'].'</option>';
                            }
                            $sHtml .= '</select>
                        </div>
                    </div>
                        <div class="col-xs-12 padding-0 margin-top-5 margin-bottom-5">
                            <div class="col-xs-7 padding-right-0 padding-left-0 font-size-13 margin-top-10 text-right">Commission price: $</div>
                            <div class="col-xs-4 margin-left-5 input-group-sm padding-0">
                                <input class="form-control margin-0 margin-top-5 price" data-db-id="" data-id="' . $i . '" type="number" min="1.00" max="5" placeholder="0.00" disabled="">
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>';
        }
        echo $sHtml;
    }

    public function displayAjaxDeletePicture() {
        $result = [];
        $result['success'] = false;
        if (Tools::getValue('id_design')) {
            $oCustomShopDesign = new CustomShopDesign(Tools::getValue('id_design'));
            if ($oCustomShopDesign->delete()) {
                $result['success'] = true;
                $result['count'] = count(CustomShopDesign::getPicturesByShopId(Tools::getValue('shop')));
            }
        }
        echo json_encode($result);
    }

    public function displayAjaxSavePrice() {
        $result = [];
        $result['success'] = true;
        if ((Tools::getValue('price') && Tools::getValue('price') <= 5) || Tools::getValue('price') == 0) {
            if (Tools::getValue('db_id')) {
                $oDesign = new CustomShopDesign(Tools::getValue('db_id'));
                $oDesign->setPrice(Tools::getValue('price'));
            } else {
                $result['success'] = false;
            }
            if (!$oDesign->save()) {
                $result['success'] = false;
            } else {
                $result['id'] = $oDesign->id;
            }
        } else {
            $result['success'] = false;
            $result['error'] = 'Price must maximum $5';
        }
        echo json_encode($result);
    }

    public function displayAjaxSaveCreationName() {
        $result = [];
        $result['success'] = true;
        if (Tools::getValue('id_creation')) {
            $oCreation = new CustomShopProduct(Tools::getValue('id_creation'));
            $oCreation->setProductName(Tools::getValue('product_name'));
            $oCreation->save();
        } else {
            $result['success'] = false;
            $result['error'] = 'Impossible to save creation\'s name, information missing';
        }
        echo json_encode($result);
    }

    public function displayAjaxSavePictureName() {
        $result = [];
        $result['success'] = true;
        if (Tools::getValue('db_id')) {
            $oDesign = new CustomShopDesign(Tools::getValue('db_id'));
            $oDesign->setName(Tools::getValue('picture_name'));
        } else {
            $result['success'] = false;
        }
        if (!$oDesign->save()) {
            $result['success'] = false;
        } else {
            $result['id'] = $oDesign->id;
        }
        echo json_encode($result);
    }

    public function displayAjaxSavePicture() {
        $result = [];
        $result['success'] = true;

        foreach ($_FILES as $file) {
            $sName = time() . '_' . $file['name'];
            $sFolder = 'img/custom_shop/picture/';
            if (move_uploaded_file($file['tmp_name'], $sFolder . basename($sName))) {
                if (Tools::getValue('db_id')) {
                    $oCustomShopDesign = new CustomShopDesign(Tools::getValue('db_id'));
                    unlink($sFolder . $oCustomShopDesign->picture);
                }
                $sImageTitle = str_replace(['.jpg', '.png', '.gif'], '', $file['name']);
                $result['image_name'] = $sName;
                if (isset($oCustomShopDesign)) {
                    $oCustomShopDesign->setPicture($sName);
                } else {
                    $oCustomShopDesign = new CustomShopDesign(null, ['picture' => $sName, 'name' => $sImageTitle, 'price' => '0', 'id_shop' => Tools::getValue('shop')]);
                }
                if (!$oCustomShopDesign->save()) {
                    $result['success'] = false;
                }
                $result['id'] = $oCustomShopDesign->id;
                $result['image_title'] = $oCustomShopDesign->name;
                $result['price'] = $oCustomShopDesign->price;
            } else {
                $result['success'] = false;
            }
        }
        echo json_encode($result);
    }

}
