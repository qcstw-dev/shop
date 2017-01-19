<?php

class CustomShopRegisterControllerCore extends CustomShopControllerCore {

    /**
     * Assign template vars related to page content
     * @see FrontController::initContent()
     */
    public function init() {
        parent::init();
    }

    public function initContent() {
        parent::initContent();


        if (Tools::getValue('type') == 'register') {
            $aErrors = [];
            if (!Tools::getValue('shop_name') || !Tools::getValue('email') || !Tools::getValue('password') || !Tools::getValue('confirm_password')) {
                $aErrors['required'] = 'A required field missing';
            } else {
                if (!preg_match('/^([a-zA-Z0-9]+)$/', Tools::getValue('shop_name'))) {
                    $aErrors['shop_name'] = 'Name format invalide';
                }
                if (!preg_match("/^[a-z\p{L}0-9!#$%&'*+\/=?^`{}|~_-]+[.a-z\p{L}0-9!#$%&'*+\/=?^`{}|~_-]*@[a-z\p{L}0-9]+[._a-z\p{L}0-9-]*\.[a-z\p{L}0-9]/", Tools::getValue('email'))) {
                    $aErrors['email'] = 'Email format invalide';
                }
                if (Tools::getValue('password') != Tools::getValue('confirm_password')) {
                    $aErrors['confirm_password'] = 'Password fields don\'t match';
                }
            }
        } else if (Tools::getValue('type') == 'login') {
            $aErrors = [];
            if (!Tools::getValue('email') || !Tools::getValue('password')
            ) {
                $aErrors['required'] = 'Required field missing';
            } else {
                
            }
        }
        if (isset($aErrors)) {
            $this->context->smarty->assign([
                'form_error' => $aErrors,
            ]);
        }
        $this->setTemplate(_PS_THEME_DIR_ . 'custom-shop-register.tpl');
    }

}
