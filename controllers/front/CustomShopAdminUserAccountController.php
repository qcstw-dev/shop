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

        $oCustomShopAccount = new CustomShopAccount($this->custom_shop_account['id']);
        $oCustomShop = new CustomShop($this->custom_shop['id']);
        $bFormSubmitted = false;
        if (Tools::getValue('form_type') == 'personal-info-form') {
            $oCustomShopAccount->firstname = Tools::getValue('firstname');
            $oCustomShopAccount->lastname = Tools::getValue('lastname');
            $oCustomShopAccount->company = Tools::getValue('company');
            $oCustomShopAccount->address = Tools::getValue('address');
            $oCustomShopAccount->zip = Tools::getValue('zip');
            $oCustomShopAccount->city = Tools::getValue('city');
            $oCustomShopAccount->country = Tools::getValue('country');
            $oCustomShopAccount->phone = Tools::getValue('phone');
            $oCustomShopAccount->newsletter = (Tools::getValue('newsletter') == 'on' ? 1 : 0);
            $bFormSubmitted = true;
        }
        if (Tools::getValue('form_type') == 'public-info-form') {
            $oCustomShop->website = Tools::getValue('website');
            $oCustomShop->description = Tools::getValue('description');
            $bFormSubmitted = true;
        }
        if (Tools::getValue('form_type') == 'password-change-form') {
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
            $bFormSubmitted = true;
        }
        if (Tools::getValue('form_type') == 'bank-detail-form') {
            if (Tools::getValue('payment') == 'bank') {
                $oCustomShopAccount->account_holder = Tools::getValue('bank_account_holder');
                $oCustomShopAccount->account_number = Tools::getValue('account_number');
                $oCustomShopAccount->bank_name = Tools::getValue('bank_name');
                $oCustomShopAccount->bank_address = Tools::getValue('bank_address');
                $oCustomShopAccount->swift = Tools::getValue('swift');
                $oCustomShopAccount->paypal_email = '';
            } else if (Tools::getValue('payment') == 'paypal') {
                $oCustomShopAccount->account_holder = Tools::getValue('paypal_account_holder');
                $oCustomShopAccount->paypal_email = Tools::getValue('paypal_email');
                $oCustomShopAccount->account_number = $oCustomShopAccount->bank_name = $oCustomShopAccount->bank_address = $oCustomShopAccount->swift = '';
            }
            $bFormSubmitted = true;
        }
        
        if (Tools::getValue('form_type') == 'minimum-to-reach-form') {
            if (Tools::getValue('minimum') >= 50) {
                $oCustomShop->minimum_to_reach = Tools::getValue('minimum');
            } else {
                $aErrors['minimum'] = 'Minimum amount to reach cannot be below $50';
            }
            $bFormSubmitted = true;
        }

        $oCustomShopAccount->save();
        $this->custom_shop_account = CustomShopAccount::getAccountById($this->custom_shop_account['id']);
        $oCustomShop->save();
        $this->custom_shop = CustomShop::getShopById($this->custom_shop['id']);
        
        // Generate countries list
        $countries = Country::getCountries($this->context->language->id, true);

        // @todo use helper
        $list = '';
        $list .= '<option value="">Choose your country</option>';
        foreach ($countries as $country) {
            $selected = ($country['id_country'] === $this->custom_shop_account['country']) ? ' selected="selected"' : '';
            $list .= '<option value="' . (int) $country['id_country'] . '"' . $selected . '>' . htmlentities($country['name'], ENT_COMPAT, 'UTF-8') . '</option>';
        }

        $aFormsStatus = [
            'personal-info-form' => (
            $this->custom_shop_account['firstname'] && $this->custom_shop_account['lastname'] && $this->custom_shop_account['company'] && $this->custom_shop_account['address'] && $this->custom_shop_account['zip'] && $this->custom_shop_account['city'] && $this->custom_shop_account['country'] && $this->custom_shop_account['phone']),
            'public-info-form' => (
            $this->custom_shop['website'] && $this->custom_shop['description']),
            'bank-detail-form' => (
            $this->custom_shop_account['account_holder'] && $this->custom_shop_account['account_number'] && $this->custom_shop_account['bank_name'] && $this->custom_shop_account['bank_address'] && $this->custom_shop_account['swift']) || ($this->custom_shop_account['account_holder'] && $this->custom_shop_account['paypal_email']),
            'minimum-to-reach-form' => $this->custom_shop['minimum_to_reach']
        ];


        // Assign vars
        $this->context->smarty->assign([
            'countries_list' => $list,
            'shop' => $this->custom_shop,
            'account' => $this->custom_shop_account,
            'form_errors' => $aErrors,
            'submitted' => $bFormSubmitted,
            'forms_status' => $aFormsStatus
        ]);

        $this->setTemplate(_PS_THEME_DIR_ . 'custom-shop-admin-user-account.tpl');
    }

}
