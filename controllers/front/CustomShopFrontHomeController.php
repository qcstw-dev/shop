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
        
        $aFilterCategory = null;
        if (Tools::getValue('category')) {
            $aFilterCategory = array_values(array_values(Category::getCategories($this->context->language->id, true, true, 'AND `link_rewrite` = "' . Tools::getValue('category') . '"'))[0])[0]['infos'];
        }
        $aCustomProducts = CustomShopProduct::getProducts($this->custom_shop['id'], true, ($aFilterCategory['id_category'] ? [$aFilterCategory['id_category']] : []));
        
        foreach ($aCustomProducts as $key => &$aCustomProd) {
            $oPrestashopProduct = new Product($aCustomProd['id_product']);
            if (!$oPrestashopProduct->active) {
                unset($aCustomProducts[$key]);
            } else {
                $aCustomDesign = CustomShopDesign::getDesignById($aCustomProd['id_design']);
                $aCustomProd['link_rewrite'] = $oPrestashopProduct->getLink();
                $aCustomProd['images'] = $oPrestashopProduct->getImages($this->context->language->id);
                foreach ($aCustomProd['images'] as $key => $image) {
                    if ($image['legend'] == 'recess' || is_numeric($image['legend']) || strpos($image['legend'], 'No design') != false || strpos($image['legend'], 'Catalog') != false) {
                        unset($aCustomProd['images'][$key]);
                    }
                }
                $aCustomProd['design_image'] = _PS_BASE_URL_SSL_.__PS_BASE_URI__.'img/custom_shop/picture/'.$aCustomDesign['picture'];
                $aQuantities = [1, 5, 10, 25, 50, 100];
                $aPrices = [];
                foreach ($aQuantities as $iQuantity) {
                    $aPrices[$iQuantity] = Product::getPriceStatic((int) $aCustomProd['id_product'], true, null, 2, null, false, true, $iQuantity) + $aCustomDesign['price'];
                }
                $aCustomProd['prices'] = $aPrices;
            }
        }

        $this->context->smarty->assign([
            'products' => $aCustomProducts,
            'front_products_list' => _PS_THEME_DIR_ . 'custom-shop-front-products-list.tpl',
        ]);
        $this->setTemplate(_PS_THEME_DIR_ . 'custom-shop-front-home.tpl');
    }

}
