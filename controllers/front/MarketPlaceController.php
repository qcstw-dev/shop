<?php

class MarketPlaceControllerCore extends FrontController {

    public function init() {
        parent::init();
        $this->display_column_left = false;
        $this->display_column_right = false;
    }

    public function initContent() {
        parent::initContent();

        $aDesignCategories = CustomShop::getDesignCategories();

        $aProductCategories = [];
        foreach (array_values(Category::getCategories($this->context->language->id, true, true, 'AND `id_parent` = ' . pSQL('45')))[0] as $key => $aCategory) {
            $aProductCategories[$key] = $aCategory['infos'];
        }

        $aCriteria = [];

        $iLimit = 40;
        if (Tools::getValue('design_cat')) {
            $aCriteria['id_cat_design'] = Tools::getValue('design_cat');
        }
        if (Tools::getValue('product_cat')) {
            $aCriteria['id_cat_prod'] = Tools::getValue('product_cat');
        }
        $aCriteria['order'] = 'random';
        
        $aResult = CustomShopProduct::getCreations($aCriteria, $iLimit);
        
        $aCartProducts = $this->context->cart->getProducts(true, null, null, true);
        
        $aCartCreationsId = [];
        foreach ($aCartProducts as $aCartProduct) {
            $aCartCreationsId[] = $aCartProduct['id_customized_prod'];
        }
        $this->context->smarty->assign([
            'design_categories' => $aDesignCategories,
            'product_categories' => $aProductCategories,
            'cart_creations_id' => $aCartCreationsId,
            'loadmore' => false,
            'products' => $aResult['products'],
            'count' => $aResult['count'],
            'total_count' => $aResult['total_count'],
            'criteria' => $aCriteria,
            'creations_list' => _PS_THEME_DIR_ . 'market-place-creations-list.tpl',
        ]);
        $this->setTemplate(_PS_THEME_DIR_ . 'market-place.tpl');
    }

}
