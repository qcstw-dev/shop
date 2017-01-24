<?php

class CustomShopAdminCreationControllerCore extends CustomShopAdminControllerCore {

    /**
     * Assign template vars related to page content
     * @see FrontController::initContent()
     */
    public function init() {
        parent::init();
    }

    public function initContent() {
        parent::initContent();
        $this->setTemplate(_PS_THEME_DIR_ . 'custom-shop-admin-creation.tpl');
    }

}
