<?php

class CustomShopAdminCreationLayoutMakerControllerCore extends CustomShopAdminControllerCore {

    /**
     * Assign template vars related to page content
     * @see FrontController::initContent()
     */
    public function init() {
        parent::init();
    }

    public function initContent() {
        parent::initContent();
        
        $aProducts = Product::getProducts($this->context->language->id, 0, 6, 'date_add', 'DESC', '45', true, $this->context);
        foreach ($aProducts as &$aProduct) {
            $aProduct['images'] = (new Product($aProduct['id_product']))->getImages($this->context->language->id);
            foreach ($aProduct['images'] as $key => $image) {
                if ($image['legend'] == 'recess' || is_numeric($image['legend'])) {
                    unset($aProduct['images'][$key]);
                }
            }

            $aQuantities = [1, 5, 10, 25, 50, 100];
            $aPrices = [];
            foreach ($aQuantities as $iQuantity) {
                $aPrices[$iQuantity] = Product::getPriceStatic((int) $aProduct['id_product'], true, null, 2, null, false, true, $iQuantity);
            }
            $aProduct['prices'] = $aPrices;
        }
        $this->context->smarty->assign('products', $aProducts);
        $aPictures = CustomShopDesign::getPicturesByShopId($this->custom_shop->id);
        $this->context->smarty->assign([
                'pictures' => $aPictures,
                'layout_maker' => 'true',
            ]);
        $this->context->smarty->assign('menu_creation', _PS_THEME_DIR_ . 'custom-shop-menu-creation.tpl');
        $this->setTemplate(_PS_THEME_DIR_ . 'custom-shop-admin-creation-layout-maker.tpl');
    }

}
