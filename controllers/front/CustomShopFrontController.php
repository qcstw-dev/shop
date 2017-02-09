<?php

class CustomShopFrontControllerCore extends CustomShopControllerCore {

    /**
     * Assign template vars related to page content
     * @see FrontController::initContent()
     */
    public function init() {
        parent::init();
        $bRedirection = false;
        // redirect if shop desactivated
    }

    public function initContent() {
        parent::initContent();

        $this->context->smarty->assign([
            'side' => 'front',
            'header' => _PS_THEME_DIR_ . 'custom-shop-header-front.tpl',
            'footer' => _PS_THEME_DIR_ . 'custom-shop-footer-front.tpl',
        ]);
    }

}
