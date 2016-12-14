<?php

class MobileControllerCore extends FrontController {

    public function init() {
        parent::init();

        $this->display_header = false;
        $this->display_footer = false;
        $this->display_column_left = false;
        $this->display_column_right = false;
    }

    public function initContent() {
        parent::initContent();

        $totalToPay = $this->context->cart->getOrderTotal(false);

        $cart_products = $this->context->cart->getProducts(true);

        $this->context->smarty->assign(array(
            'mobile' => true,
            'step' => 1,
            'token' => Tools::getToken(false),
            'shop_name' => $this->context->shop->name,
            'shop_title' => Configuration::get('PS_SHOP_NAME'),
            'favicon_url' => _PS_IMG_ . Configuration::get('PS_FAVICON'),
            'logo_url' => $this->context->link->getMediaLink(_PS_IMG_ . Configuration::get('PS_LOGO')),
            'returnAllowed' => (int) Configuration::get('PS_ORDER_RETURN'),
            'HOOK_BLOCK_MY_ACCOUNT' => Hook::exec('displayCustomerAccount'),
            'HOOK_HEADER_MOBILE', Hook::exec('displayHeaderMobile'),
            'cart_products' => $cart_products,
            'total_cart' => Tools::displayPrice($totalToPay),
        ));
        
        $moduleSocialNetwork = Module::hookExec('displaySocialNetwork');
//        $moduleSocialNetwork = str_replace('https://www.facebook.com/', 'fb://page/', $moduleSocialNetwork);
//        $moduleSocialNetwork = str_replace('https://twitter.com/', 'twitter://user?screen_name=', $moduleSocialNetwork);
        $this->context->smarty->assign('HOOK_MOBILE_FOOTER', $moduleSocialNetwork);

        $this->context->smarty->assign('header_mobile', _PS_THEME_DIR_ . 'mobile-header.tpl');
        $this->context->smarty->assign('footer_mobile', _PS_THEME_DIR_ . 'mobile-footer.tpl');
        $this->context->smarty->assign('menu_mobile', _PS_THEME_DIR_ . 'mobile-menu.tpl');
        $this->context->smarty->assign('global', _PS_THEME_DIR_ . 'global.tpl');
        $this->context->smarty->assign('tmheaderaccount', _PS_MODULE_DIR_ . 'tmheaderaccount/views/templates/hook/tmheaderaccount.tpl');
    }
}
