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
        $aIdCategories = [];
        foreach ($aCustomProducts as $key => &$aCustomProduct) {
            $oPrestashopProduct = new Product($aCustomProduct['id_product']);
            if ($oPrestashopProduct->active) {
                foreach ($oPrestashopProduct->getCategories() as $sIdCategory) {
                    if ($sIdCategory != '45') {
                        $aIdCategories[] = $sIdCategory;
                    }
                }
            } else {
                unset($aCustomProducts[$key]);
            }
        }

        $aCategories = [];
        foreach (array_values(Category::getCategories($this->context->language->id, true, true, 'AND c.`id_parent` = ' . pSQL('45') . ' AND c.`id_category` IN (' . implode(',', $aIdCategories) . ')'))[0] as $key => $aCategory) {
            $aCategories[$key] = $aCategory['infos'];
        }

        if (Tools::getValue('cat')) {
            $aFilterCategory = array_values(array_values(Category::getCategories($this->context->language->id, true, true, 'AND `link_rewrite` = "' . Tools::getValue('cat') . '"'))[0])[0]['infos'];
            $aCustomProducts = CustomShopProduct::getProducts($this->custom_shop['id'], true, [$aFilterCategory['id_category']]);
            $oPrestashopProduct = new Product($aCustomProduct['id_product']);
            if (!$oPrestashopProduct->active) {
                unset($aCustomProducts[$key]);
            }
        }
        foreach ($aCustomProducts as $key => &$aCustomProduct) {
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
        }

        $this->context->smarty->assign([
            'products' => $aCustomProducts,
            'front_products_list' => _PS_THEME_DIR_ . 'custom-shop-front-products-list.tpl',
            'categories' => $aCategories,
            'cat' => Tools::getValue('cat')
        ]);

        $this->setTemplate(_PS_THEME_DIR_ . 'custom-shop-front-home.tpl');
    }

}
