<?php

class CustomShopControllerCore extends FrontController {

    /**
     * Assign template vars related to page content
     * @see FrontController::initContent()
     */
    public $bDisplayTopLogo = true;
    public $custom_shop;
    public $custom_shop_account;

    public function init() {
        parent::init();
        $this->display_column_left = false;
        $this->display_column_right = false;
        $this->display_header = false;
        $this->display_footer = false;
    }

    public function initContent() {
        parent::initContent();
        $this->context->smarty->assign(array(
            'logo_gift' => $this->context->link->getMediaLink(_PS_IMG_ . Configuration::get('PS_LOGO')),
            'shop_name' => $this->context->shop->name,
            'custom_shop_name' => Tools::getValue('shop_name') ? : '',
            'shop_title' => Configuration::get('PS_SHOP_NAME'),
            'header' => _PS_THEME_DIR_ . 'custom-shop-header.tpl',
            'footer' => _PS_THEME_DIR_ . 'custom-shop-footer.tpl',
            'display_top_logo' => $this->bDisplayTopLogo,
            'picture_dir' => 'img/custom_shop/picture/'
        ));
    }

}
