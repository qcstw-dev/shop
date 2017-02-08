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
        $aCreations = CustomShopProduct::getProducts($this->custom_shop->id, false);
        foreach ($aCreations as &$aCreation) {
            $iDesignPrice = CustomShopDesign::getPrice($aCreation['id_design']);
            $fProductPrice = Product::getPriceStatic((int) $aCreation['id_product'], true, null, 2, null, false, true, 1);
            $aCreation['price'] = $fProductPrice + $iDesignPrice;
        }
        $this->context->smarty->assign('creations', $aCreations);
        $this->context->smarty->assign('menu_creation', _PS_THEME_DIR_ . 'custom-shop-admin-menu-creation.tpl');
        $this->setTemplate(_PS_THEME_DIR_ . 'custom-shop-admin-creation-summary.tpl');
    }

}
