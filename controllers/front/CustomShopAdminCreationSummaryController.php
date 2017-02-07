<?php

class CustomShopAdminCreationSummaryControllerCore extends CustomShopAdminControllerCore {

    /**
     * Assign template vars related to page content
     * @see FrontController::initContent()
     */
    public function init() {
        parent::init();
    }

    public function initContent() {
        parent::initContent();
        
        $this->context->smarty->assign('menu_creation', _PS_THEME_DIR_ . 'custom-shop-menu-creation.tpl');
        $this->setTemplate(_PS_THEME_DIR_ . 'custom-shop-admin-creation-summary.tpl');
    }

}
