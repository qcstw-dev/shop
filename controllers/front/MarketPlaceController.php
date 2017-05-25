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

        if (Tools::getValue('design_cat')) {
            $aCriteria['id_cat_design'] = Tools::getValue('design_cat');
        }
        if (Tools::getValue('product_cat')) {
            $aCriteria['id_cat_prod'] = Tools::getValue('product_cat');
        }
        if (!Tools::getValue('design_cat') && !Tools::getValue('id_cat_prod')) {
            $aCriteria['order'] = 'random';
            $aCriteria['limit'] = 50;
        }
        
        
        $aProducts = CustomShopProduct::getCreations($aCriteria);

        $aCartProducts = $this->context->cart->getProducts(true, null, null, true);
        
        $aCartCreationsId = [];
        foreach ($aCartProducts as $aCartProduct) {
            $aCartCreationsId[] = $aCartProduct['id_customized_prod'];
        }
        $this->context->smarty->assign([
            'design_categories' => $aDesignCategories,
            'product_categories' => $aProductCategories,
            'cart_creations_id' => $aCartCreationsId,
            'products' => $aProducts,
            'criteria' => $aCriteria,
            'creations_list' => _PS_THEME_DIR_ . 'market-place-creations-list.tpl',
        ]);
        $this->setTemplate(_PS_THEME_DIR_ . 'market-place.tpl');
    }

}
