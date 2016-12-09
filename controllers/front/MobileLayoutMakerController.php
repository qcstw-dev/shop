<?php

class MobileLayoutMakerControllerCore extends MobileController {

    public function init() {
        parent::init();
    }

    public function initContent() {
        parent::initContent();
        
        if (Tools::getValue('preselect_product') && Tools::getValue('custom_picture') && (Tools::getValue('preselect_design') || Tools::getValue('original_picture'))) {
            $this->context->cookie->__set('selected_design', (Tools::getValue('preselect_design') ? : Tools::getValue('original_picture')));
            $this->context->cookie->__set('selected_product', Tools::getValue('preselect_product'));
            $this->context->cart->deleteProduct(Tools::getValue('preselect_product'), null, null, null, Tools::getValue('custom_picture'));
        }
        
        if ($this->context->cookie->selected_product && (Tools::getValue('id_design') || $this->context->cookie->selected_design)) {
            if (Tools::getValue('id_design')) {
                $this->context->cookie->__set('selected_design', Tools::getValue('id_design'));
            }
            $bCustom = (strpos($this->context->cookie->selected_design, '_') != false ? true : false);
            if (!$bCustom) {
                $oDesign = (!$bCustom ? new Product($this->context->cookie->selected_design, $this->context->language->id, $this->context->shop->id) : null);
                $imageDesign = Product::getCover($oDesign->id);
            }
            $oProduct = new Product($this->context->cookie->selected_product, $this->context->language->id, $this->context->shop->id);
            $imagesProduct = $oProduct->getImages($this->context->language->id, $this->context);
            $imagesLayout = [];
            foreach ($imagesProduct as $image) {
                if ($image['legend'] === 'recess' || is_numeric($image['legend'])) {
                    $imagesLayout[] = $image;
                }
            }
            
            $this->context->smarty->assign(array(
                'layout_maker' => true,
                'step' => '3',
                'product' => $oProduct,
                'design' => isset($oDesign) ? $oDesign : null,
                'image_design' => isset($imageDesign) ? $imageDesign : null,
                'images_product' => $imagesLayout,
                'custom' => $bCustom,
                'original_picture' => ($bCustom ? _PS_BASE_URL_SSL_ . __PS_BASE_URI__.'img/layout_maker/temp/'.$this->context->cookie->selected_design.'.png' : ''),
            ));
            $this->setTemplate(_PS_THEME_DIR_ . 'mobile-layout-maker.tpl');
        } elseif (!$this->context->cookie->selected_product) {
            header('Location: ' . _PS_BASE_URL_SSL_ . __PS_BASE_URI__ . 'mobile');
        } else {
            header('Location: ' . _PS_BASE_URL_SSL_ . __PS_BASE_URI__ . 'mobile-designs');
        }
    }

}
