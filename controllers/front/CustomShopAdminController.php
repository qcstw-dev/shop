<?php

class CustomShopAdminControllerCore extends CustomShopControllerCore {

    /**
     * Assign template vars related to page content
     * @see FrontController::initContent()
     */
    public function init() {
        parent::init();
        if (!$this->context->cookie->__get('custom_shop_loggedin')) {
            header('Location :'.$this->base_uri.'custom-shop-registration');
        }
    }

    public function initContent() {
        parent::initContent();
        $this->context->smarty->assign([
           'menu' => _PS_THEME_DIR_ . 'custom-shop-menu.tpl' 
        ]);
    }

}
