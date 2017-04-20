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
        $aCreations = CustomShopProduct::getProducts($this->custom_shop['id'], false);
        foreach ($aCreations as &$aCreation) {
            $oPrestashopProduct = new Product($aCreation['id_product']);
            $aCreation['link_rewrite'] = $oPrestashopProduct->getLink();
            $aCreation['images'] = $oPrestashopProduct->getImages($this->context->language->id);
            foreach ($aCreation['images'] as $key => $image) {
                if ($image['legend'] == 'recess' || is_numeric($image['legend']) || strpos($image['legend'], 'No design') != false) {
                    unset($aCreation['images'][$key]);
                }
            }
            $aCreation['original_product_name'] = Product::getProductName($aCreation['id_product']);
            $aCreation['design'] = CustomShopDesign::getDesignById($aCreation['id_design']);
            $aCreation['is_active'] = (new Product($aCreation['id_product']))->active;
            $aQuantities = [1, 5, 10, 25, 50, 100];
            $aPrices = [];
            foreach ($aQuantities as $iQuantity) {
                $fProductPrice = Product::getPriceStatic((int) $aCreation['id_product'], true, null, 2, null, false, true, $iQuantity);
                $aPrices[$iQuantity] = $fProductPrice;
            }
            $aCreation['prices'] = $aPrices;
        }
        $this->context->smarty->assign('creations', $aCreations);
        $aPictures = CustomShopDesign::getPicturesByShopId($this->custom_shop['id']);
        $this->context->smarty->assign('pictures', $aPictures);
        $this->context->smarty->assign('menu_creation', _PS_THEME_DIR_ . 'custom-shop-admin-menu-creation.tpl');
        $this->setTemplate(_PS_THEME_DIR_ . 'custom-shop-admin-creation-summary.tpl');
    }

}
