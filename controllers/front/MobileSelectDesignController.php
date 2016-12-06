<?php

class MobileSelectDesignControllerCore extends MobileController {

    public function init() {
        parent::init();
    }

    public function initContent() {
        parent::initContent();
        
        if (Tools::getValue('id_product') || $this->context->cookie->selected_product) {
            // save selected product id
            if (Tools::getValue('id_product')) {
                $this->context->cookie->__set('selected_product', Tools::getValue('id_product'));
            }

            $oDesignCategory = new Category('46', $this->context->language->id);

            if ($sub_categories = $oDesignCategory->getSubCategories($this->context->language->id)) {
                $this->context->smarty->assign(array(
                    'subcategories' => $sub_categories
                ));
            }
            if (Tools::getValue('category')) {
                $oCategory = new Category(Tools::getValue('category'), $this->context->language->id);
                $aDesigns = $oCategory->getProducts($this->context->language->id, 0, 100, 'date_add', 'DESC');
                $this->context->smarty->assign(array(
                    'designs' => $aDesigns
                ));
            }

            $this->context->smarty->assign(array(
                'upload' => true,
                'category' => isset($oCategory) ? $oCategory : $oDesignCategory,
                'step'  => '2',
            ));
            $this->setTemplate(_PS_THEME_DIR_ . 'mobile-select-design.tpl');
        } else {
            header('Location: ' . _PS_BASE_URL_SSL_.__PS_BASE_URI__ . 'mobile');
        }
    }

}
