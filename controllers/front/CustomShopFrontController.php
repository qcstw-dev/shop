<?php

class CustomShopFrontControllerCore extends CustomShopControllerCore {

    public $php_self = 'contact';
    public $ssl = true;

    /**
     * Assign template vars related to page content
     * @see FrontController::initContent()
     */
    public function init() {
        parent::init();
        if ($this->bRedirection) {
            Tools::redirect(_PS_BASE_URL_ . __PS_BASE_URI__);
        }
        // redirect if shop desactivated
        $totalToPay = $this->context->cart->getOrderTotal(false);
        
        $this->context->smarty->assign(array(
            'total_cart' => Tools::displayPrice($totalToPay),
        ));
    }

    public function initContent() {
        parent::initContent();

        $this->assignOrderList();

        $email = Tools::safeOutput(Tools::getValue('from', ((isset($this->context->cookie) && isset($this->context->cookie->email) && Validate::isEmail($this->context->cookie->email)) ? $this->context->cookie->email : '')));
        $this->context->smarty->assign(array(
            'errors' => $this->errors,
            'email' => $email,
            'fileupload' => Configuration::get('PS_CUSTOMER_SERVICE_FILE_UPLOAD'),
            'max_upload_size' => (int) Tools::getMaxUploadSize()
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

        $aCustomProducts = CustomShopProduct::getProducts($this->custom_shop['id']);
        $aIdCategories = [];
        foreach ($aCustomProducts as $key => &$aCustomProduct) {
            $oPrestashopProduct = new Product($aCustomProduct['id_product']);
            if ($oPrestashopProduct->active) {
                foreach ($oPrestashopProduct->getCategories() as $sIdCategory) {
                    if ($sIdCategory != '45') {
                        $aIdCategories[] = $sIdCategory;
                    }
                }
            }
        }

        $aCategories = [];
        foreach (array_values(Category::getCategories($this->context->language->id, true, true, 'AND c.`id_parent` = ' . pSQL('45') . ' AND c.`id_category` IN (' . implode(',', $aIdCategories) . ')'))[0] as $key => $aCategory) {
            $aCategories[$key] = $aCategory['infos'];
        }
        
        $aProducts = $this->context->cart->getProducts(true, null, null, true);
        $cart_qties = $this->context->cart->nbProducts(true);
        $this->context->smarty->assign([
            'cart_qties' => $cart_qties,
            'meta_title' => $this->custom_shop['title'] ? : $this->custom_shop['name'],
            'token' => Tools::getToken(false),
            'cart_products' => $aProducts,
            'side' => 'front',
            'header' => _PS_THEME_DIR_ . 'custom-shop-header-front.tpl',
            'footer' => _PS_THEME_DIR_ . 'custom-shop-footer-front.tpl',
            'contact_form' => _PS_THEME_DIR_ . 'custom-shop-front-contact-us.tpl',
            'categories' => $aCategories,
            'cat' => Tools::getValue('category')
        ]);
    }

    /**
     * Start forms process
     * @see FrontController::postProcess()
     */
    public function postProcess() {
        if (Tools::isSubmit('submitMessage')) {

            $ch = curl_init();

            curl_setopt($ch, CURLOPT_URL, "https://www.google.com/recaptcha/api/siteverify");
            curl_setopt($ch, CURLOPT_POST, 1);

            curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query(array(
                'response' => Tools::getValue('g-recaptcha-response'),
                'secret' => '6LdWFwwUAAAAAPbbeLIplVLPTt0sJgqoPGUw4RWZ'
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
                        '{custom_shop_link}' => _PS_BASE_URL_.__PS_BASE_URI__.'shop/'.$aCustomShop['name'],
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
            $this->context->smarty->assign('show_contact_popup', true);
        }
    }

    public function setMedia() {
        parent::setMedia();
        $this->addCSS(_THEME_CSS_DIR_ . 'contact-form.css');
        $this->addJS(_THEME_JS_DIR_ . 'contact-form.js');
        $this->addJS(_PS_JS_DIR_ . 'validate.js');
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

}
