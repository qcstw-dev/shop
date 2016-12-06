<?php

class MobileProductPageControllerCore extends MobileController {

    public function init() {
        parent::init();
    }

    public function initContent() {
        parent::initContent();

        if ($id_product = (int) Tools::getValue('id_product')) {
            $oProduct = new Product($id_product, true, $this->context->language->id, $this->context->shop->id);
        }

        $oProduct->images = (new Product($oProduct->id))->getImages($this->context->language->id);
        foreach ($oProduct->images as $key => $image) {
            if ($image['legend'] == 'recess' || is_numeric($image['legend'])) {
                unset($oProduct->images[$key]);
            }
        }

        $aQuantities = [1, 5, 10, 25, 50, 100];
        $aPrices = [];
        foreach ($aQuantities as $iQuantity) {
            $aPrices[$iQuantity] = Product::getPriceStatic((int) $oProduct->id, true, null, 2, null, false, true, $iQuantity);
        }

        $this->context->smarty->assign(array(
            'product' => $oProduct,
            'features' => $oProduct->getFrontFeatures($this->context->language->id),
            'colors' => $oProduct->getColors($this->context->language->id),
            'prices' => $aPrices,
            'step' => '1',
        ));
        $this->setTemplate(_PS_THEME_DIR_ . 'mobile-product-page.tpl');
    }

}
