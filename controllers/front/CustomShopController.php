<?php

class CustomShopControllerCore extends FrontController
{
    /**
     * Assign template vars related to page content
     * @see FrontController::initContent()
     */
    
    public $base_uri = '';


    public function init() {
        parent::init();
        $this->display_column_left = false;
        $this->display_column_right = false;
        $this->display_header = false;
        $this->display_footer = false;
        $useSSL = ((isset($this->ssl) && $this->ssl && Configuration::get('PS_SSL_ENABLED')) || Tools::usingSecureMode()) ? true : false;
        $protocol_content = ($useSSL) ? 'https://' : 'http://';
        $this->base_uri = $protocol_content . Tools::getHttpHost() . __PS_BASE_URI__ . (!Configuration::get('PS_REWRITING_SETTINGS') ? 'index.php' : '');
    }
    
    public function initContent() {
        parent::initContent();
        $this->context->smarty->assign(array(
            'logo_gift' => $this->context->link->getMediaLink(_PS_IMG_ . Configuration::get('PS_LOGO')),
            'shop_name' => $this->context->shop->name,
            'shop_title' => Configuration::get('PS_SHOP_NAME'),
            'header' =>  _PS_THEME_DIR_ . 'custom-shop-header.tpl',
            'footer' =>  _PS_THEME_DIR_ . 'custom-shop-footer.tpl',
        ));
    }
}
