<?php

class MobileSearchControllerCore extends MobileController {

    public function init() {
        parent::init();
    }

    public function initContent() {
        parent::initContent();

        $aProducts = [];
        if (Tools::getValue('search_query')) {
            $sKeywords = Tools::getValue('search_query');
            
            $sql = 'SELECT *'
                    . ' FROM ' . _DB_PREFIX_ . 'product p, ' . _DB_PREFIX_ . 'product_lang pl'
                    . ' WHERE p.id_product = pl.id_product'
                    . ' AND pl.id_lang = ' . $this->context->language->id
                    . ' AND pl.id_lang = ' . $this->context->shop->id
                    . ' AND ('
                    . ' pl.description LIKE "%' . $sKeywords . '%"'
                    . ' OR pl.name LIKE "%' . $sKeywords . '%"'
                    . ')';
            
            $aProducts = Db::getInstance()->executeS($sql);

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
        }

        $this->context->smarty->assign(array(
            'products' => $aProducts,
        ));

        $this->setTemplate(_PS_THEME_DIR_ . 'mobile-search.tpl');
    }

}
