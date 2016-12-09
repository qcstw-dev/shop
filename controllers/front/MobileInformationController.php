<?php

class MobileInformationControllerCore extends MobileController {

    public function init() {
        parent::init();
    }

    public function initContent() {
        parent::initContent();

        $aHowToOrder = CMS::getCMSContent(7);
        $aDelivery = CMS::getCMSContent(1);
        $aTerms = CMS::getCMSContent(3);
        $aPayment = CMS::getCMSContent(5);
        $aAboutUs = CMS::getCMSContent(4);
        
        $aProducts = Product::getProducts($this->context->language->id, 0, -1, 'date_add', 'DESC', '45', true, $this->context);
        
        $oDesignCategory = new Category('46', $this->context->language->id);
        
        if ($sub_categories = $oDesignCategory->getSubCategories($this->context->language->id)) {
            $this->context->smarty->assign(array(
                'subcategories' => $sub_categories
            ));
        }

        $this->context->smarty->assign(array(
            'mobile_information' => true,
            'how_to_order' => $aHowToOrder['content'],
            'delivery' => $aDelivery['content'],
            'terms' => $aTerms['content'],
            'payment' => $aPayment['content'],
            'about_us' => $aAboutUs['content'],
            'products' => $aProducts,
        ));

        $this->setTemplate(_PS_THEME_DIR_ . 'mobile-information.tpl');
    }

}
