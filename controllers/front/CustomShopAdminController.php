<?php

class CustomShopAdminControllerCore extends CustomShopControllerCore {

    /**
     * Assign template vars related to page content
     * @see FrontController::initContent()
     */

    public function init() {
        parent::init();
        if (Tools::getValue('disconnect')) {
            $this->context->cookie->__set('custom_shop_loggedin', false);
        }
        if (!$this->context->cookie->__get('custom_shop_loggedin') || $this->custom_shop['id_account'] != $this->context->cookie->__get('custom_shop_loggedin')) {
            header('Location: ' . _PS_BASE_URL_ . __PS_BASE_URI__ . 'custom-shop-register');
        }
    }

    public function initContent() {
        parent::initContent();
        $this->context->smarty->assign([
            'side' => 'back',
            'header' => _PS_THEME_DIR_ . 'custom-shop-header-back.tpl',
            'footer' => _PS_THEME_DIR_ . 'custom-shop-footer-back.tpl',
            'menu' => _PS_THEME_DIR_ . 'custom-shop-admin-menu.tpl'
        ]);
    }

}
