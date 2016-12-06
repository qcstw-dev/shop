<?php

class MobileHomeControllerCore extends MobileController {

    public function init() {
        parent::init();
    }

    public function initContent() {
        parent::initContent();
        
        $oProductCategory = new Category('45', $this->context->language->id);

        $aProducts = $oProductCategory->getProducts($this->context->language->id, 0, 6, 'date_add', 'DESC');
        foreach ($aProducts as &$aProduct) {
            $aProduct['images'] = (new Product($aProduct['id_product']))->getImages($this->context->language->id);
            foreach ($aProduct['images'] as $key => $image) {
                if ($image['legend'] == 'recess' || is_numeric($image['legend'])) {
                    unset($aProduct['images'][$key]);
                }
            }
        }
        $this->context->smarty->assign(array(
            'products' => $aProducts,
            'step'  => '1',
            'product_list' => true
        ));
        
        $this->setTemplate(_PS_THEME_DIR_ . 'mobile-home.tpl');
    }

}
