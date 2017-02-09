<?php

class CustomShopAdminControllerCore extends CustomShopControllerCore {

    /**
     * Assign template vars related to page content
     * @see FrontController::initContent()
     */
    public function init() {
        parent::init();
        $bRedirection = false;
        if (!$this->context->cookie->__get('custom_shop_loggedin')) {
            $bRedirection = true;
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
