<?php

class CustomShopAdminUserAccountControllerCore extends CustomShopAdminControllerCore {

    /**
     * Assign template vars related to page content
     * @see FrontController::initContent()
     */
    public function init() {
        parent::init();
    }

    public function initContent() {
        parent::initContent();

        $aErrors = [];

        if (Tools::getValue('firstname') !== false) {
            $oCustomShopAccount = new CustomShopAccount($this->custom_shop_account['id']);
            $oCustomShopAccount->firstname = Tools::getValue('firstname');
            $oCustomShopAccount->lastname = Tools::getValue('lastname');
            $oCustomShopAccount->company = Tools::getValue('company');
            $oCustomShopAccount->address = Tools::getValue('address');
            $oCustomShopAccount->zip = Tools::getValue('zip');
            $oCustomShopAccount->city = Tools::getValue('city');
            $oCustomShopAccount->country = Tools::getValue('country');
            $oCustomShopAccount->phone = Tools::getValue('phone');
            $oCustomShopAccount->newsletter = (Tools::getValue('newsletter') == 'on' ? 1 : 0);
            if (Tools::getValue('current_password')) {
                if (Tools::getValue('current_password') == $this->custom_shop_account['passwd']) {
                    if (Tools::getValue('new_password') == Tools::getValue('confirm_new_password')) {
                        $oCustomShopAccount->passwd = Tools::getValue('new_password');
                    } else {
                        $aErrors['password'] = 'Passwords are differents';
                    }
                } else {
                    $aErrors['password'] = 'Current password is wrong';
                }
            }
            if (Tools::getValue('bank_account_holder')) {
                $oCustomShopAccount->account_holder = Tools::getValue('bank_account_holder');
                $oCustomShopAccount->account_number = Tools::getValue('account_number');
                $oCustomShopAccount->bank_name = Tools::getValue('bank_name');
                $oCustomShopAccount->bank_address = Tools::getValue('bank_address');
                $oCustomShopAccount->swift = Tools::getValue('swift');
                $oCustomShopAccount->paypal_email = '';
            } else if (Tools::getValue('paypal_account_holder')) {
                $oCustomShopAccount->account_holder = Tools::getValue('paypal_account_holder');
                $oCustomShopAccount->paypal_email = Tools::getValue('paypal_email');
                $oCustomShopAccount->account_holder = $oCustomShopAccount->bank_number = $oCustomShopAccount->bank_name = $oCustomShopAccount->bank_address = $oCustomShopAccount->swift = '';
            }
            $oCustomShopAccount->save();
            $this->custom_shop_account = CustomShopAccount::getAccountById($this->custom_shop_account['id']);

            if (Tools::getValue('website') || Tools::getValue('description')) {
                $oCustomShop = new CustomShopAccount($this->custom_shop['id']);
                $oCustomShop->website = Tools::getValue('website');
                $oCustomShop->description = Tools::getValue('description');
                $oCustomShop->save();
                $this->custom_shop = CustomShop::getShopById($this->custom_shop['id']);
                var_dump($oCustomShop);
            }
            var_dump($oCustomShopAccount);
            var_dump(Tools::getAllValues());
        }

        // Generate countries list
        $countries = Country::getCountries($this->context->language->id, true);

        // @todo use helper
        $list = '';
        $list .= '<option value="">Choose your country</option>';
        foreach ($countries as $country) {
            $selected = ($country['id_country'] === $this->custom_shop_account['country']) ? ' selected="selected"' : '';
            $list .= '<option value="' . (int) $country['id_country'] . '"' . $selected . '>' . htmlentities($country['name'], ENT_COMPAT, 'UTF-8') . '</option>';
        }
        var_dump($aErrors);
        // Assign vars
        $this->context->smarty->assign([
            'countries_list' => $list,
            'shop' => $this->custom_shop,
            'account' => $this->custom_shop_account,
            'errors' => $aErrors
        ]);

        $this->setTemplate(_PS_THEME_DIR_ . 'custom-shop-admin-user-account.tpl');
    }

}
