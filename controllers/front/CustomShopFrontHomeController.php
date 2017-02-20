<?php

class CustomShopFrontHomeControllerCore extends CustomShopFrontControllerCore {

    /**
     * Assign template vars related to page content
     * @see FrontController::initContent()
     */
    public function init() {
        parent::init();
    }

    public function initContent() {
        parent::initContent();

        $aCustomProducts = CustomShopProduct::getProducts($this->custom_shop['id']);

        foreach ($aCustomProducts as $key => &$aCustomProduct) {
            $oPrestashopProduct = new Product($aCustomProduct['id_product']);
            if ($oPrestashopProduct->active) {
                $aCustomProduct['link_rewrite'] = $oPrestashopProduct->getLink();
                $aCustomProduct['images'] = $oPrestashopProduct->getImages($this->context->language->id);
                foreach ($aCustomProduct['images'] as $key => $image) {
                    if ($image['legend'] == 'recess' || is_numeric($image['legend']) || strpos($image['legend'], 'No design') != false) {
                        unset($aCustomProduct['images'][$key]);
                    }
                }
                $aQuantities = [1, 5, 10, 25, 50, 100];
                $aPrices = [];
                foreach ($aQuantities as $iQuantity) {
                    $aPrices[$iQuantity] = Product::getPriceStatic((int) $aCustomProduct['id_product'], true, null, 2, null, false, true, $iQuantity) + CustomShopDesign::getPrice($aCustomProduct['id_design']);
                }
                $aCustomProduct['prices'] = $aPrices;
            } else {
                unset($aCustomProducts[$key]);
            }
        }

        $this->context->smarty->assign([
            'logo_default' => _PS_BASE_URL_ . __PS_BASE_URI__ . 'img/custom_shop_default_logo.jpg',
            'header_default' => _PS_BASE_URL_ . __PS_BASE_URI__ . 'img/custom_shop_default_header.jpg',
            'products' => $aCustomProducts,
            'front_products_list' => _PS_THEME_DIR_ . 'custom-shop-front-products-list.tpl'
        ]);
        $this->setTemplate(_PS_THEME_DIR_ . 'custom-shop-front-home.tpl');
    }

}
