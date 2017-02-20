<?php

class CustomShopRegisterControllerCore extends CustomShopControllerCore {

    /**
     * Assign template vars related to page content
     * @see FrontController::initContent()
     */
    public function init() {
        parent::init();
        $this->bDisplayTopLogo = false;
    }

    public function initContent() {
        parent::initContent();
        $aErrors = [];
        if (Tools::getValue('type') == 'register') {
            if (!Tools::getValue('shop_name') || !Tools::getValue('email') || !Tools::getValue('password') || !Tools::getValue('confirm_password')) {
                $aErrors['required'] = 'A required was field missing';
            } else {
                if (!preg_match('/^([a-zA-Z0-9]+)$/', Tools::getValue('shop_name'))) {
                    $aErrors['shop_name'] = 'Name format invalide';
                }
                if (!Validate::isEmail(Tools::getValue('email'))) {
                    $aErrors['email'] = 'Email format invalide';
                }
                if (Tools::getValue('password') != Tools::getValue('confirm_password')) {
                    $aErrors['confirm_password'] = 'Password fields don\'t match';
                }
            }
        } else if (Tools::getValue('type') == 'login') {
            if (!Tools::getValue('email') || !Tools::getValue('password')) {
                $aErrors['required'] = 'Required field missing';
            }
        }
        if (Tools::getValue('type') && !$aErrors) {
            if (Tools::getValue('type') === "register") {
                if (!CustomShop::nameExists(Tools::getValue('shop_name'))) {
                    if (!CustomShopAccount::emailExists(Tools::getValue('email'))) {
                        $oCustomShopAccount = new CustomShopAccount(null, ['email' => Tools::getValue('email'), 'passwd' => Tools::getValue('password'), 'registration_date' => date('Y-m-d')]);
                        if (!$oCustomShopAccount->save()) {
                            $aErrors['database'] = 'Impossible to create you account, please contact us';
                        } else {
                            $oCustomShop = new CustomShop(null, ['name' => Tools::getValue('shop_name'), 'id_account' => $oCustomShopAccount->id]);
                            $oCustomShop->save();
                            $oCustomShopAccount->login();
                            header('Location: ' . _PS_BASE_URL_ . __PS_BASE_URI__ . $oCustomShop->name . '/admin/creation');
                        }
                    } else {
                        $aErrors['account_exist'] = 'Account already exist';
                    }
                } else {
                    $aErrors['shop_exist'] = 'Shop name already used';
                }
            } else if (Tools::getValue('type') === "login") {
                if (CustomShopAccount::emailExists(Tools::getValue('email'))) {
                    if (CustomShopAccount::checkPassword(Tools::getValue('email'), Tools::getValue('password'))) {
                        $oCustomShopAccount = CustomShopAccount::getAccountByEmail(Tools::getValue('email'));
                        $oCustomShopAccount->login();
                        $aCustomShop = $oCustomShopAccount->getShop();
                        header('Location: ' . _PS_BASE_URL_ . __PS_BASE_URI__ . $aCustomShop['name'] . '/admin/creation');
                    } else {
                        $aErrors['wrong_password'] = 'Wrong password';
                    }
                } else {
                    $aErrors['account_exist'] = 'Account does not exist';
                }
            }
        }

        $this->context->smarty->assign([
            'form_error' => isset($aErrors) && $aErrors ? $aErrors : null,
        ]);

        $this->context->smarty->assign([
            'side' => 'back',
            'header' => _PS_THEME_DIR_ . 'custom-shop-header-back.tpl',
            'footer' => _PS_THEME_DIR_ . 'custom-shop-footer-back.tpl',
            'submit' => Tools::getValue('type')? : false,
            'shop_name' => Tools::getValue('shop_name') ? : false,
            'email' => Tools::getValue('email')? : false,
            'password' => Tools::getValue('password') ? true : false,
            'confirm_password' => Tools::getValue('confirm_password') ? true : false,
        ]);
        $this->setTemplate(_PS_THEME_DIR_ . 'custom-shop-register.tpl');
    }

}
