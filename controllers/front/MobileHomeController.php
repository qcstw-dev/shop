<?php

class MobileHomeControllerCore extends FrontController {

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
        $oProductCategory = new Category('45', $this->context->language->id);

        $aProducts = $oProductCategory->getProducts($this->context->language->id, 0, 4, 'date_add', 'DESC');
        foreach ($aProducts as &$aProduct) {
            $aProduct['images'] = (new Product($aProduct['id_product']))->getImages($this->context->language->id);
            foreach ($aProduct['images'] as $key => $image) {
                if ($image['legend'] == 'recess' || is_numeric($image['legend'])) {
                    unset($aProduct['images'][$key]);
                }
            }
        }
        $this->context->smarty->assign(array(
            'mobile' => true,
            'token' => Tools::getToken(false),
            'shop_name' => $this->context->shop->name,
            'favicon_url' => _PS_IMG_ . Configuration::get('PS_FAVICON'),
            'logo_url' => $this->context->link->getMediaLink(_PS_IMG_ . Configuration::get('PS_LOGO')),
            'voucherAllowed' => CartRule::isFeatureActive(),
            'returnAllowed' => (int) Configuration::get('PS_ORDER_RETURN'),
            'HOOK_BLOCK_MY_ACCOUNT' => Hook::exec('displayCustomerAccount'),
            'HOOK_HEADER_MOBILE', Hook::exec('displayHeaderMobile'),
            'cart_products' => $cart_products,
            'products' => $aProducts,
            'step'  => '1',
            'total_cart' => Tools::displayPrice($totalToPay),
            'product_list' => true
        ));
        $this->context->smarty->assign('header_mobile', _PS_THEME_DIR_ . 'mobile-header.tpl');
        $this->context->smarty->assign('footer_mobile', _PS_THEME_DIR_ . 'mobile-footer.tpl');
        $this->context->smarty->assign('menu_mobile', _PS_THEME_DIR_ . 'mobile-menu.tpl');
        $this->context->smarty->assign('global', _PS_THEME_DIR_ . 'global.tpl');
        $this->context->smarty->assign('tmheaderaccount', _PS_MODULE_DIR_ . 'tmheaderaccount/views/templates/hook/tmheaderaccount.tpl');
        $this->setTemplate(_PS_THEME_DIR_ . 'mobile-home.tpl');
    }

}
