<?php

class MobileProductPageControllerCore extends FrontController {

    public function init() {
        parent::init();

        $this->display_header = false;
        $this->display_footer = false;
        $this->display_column_left = false;
        $this->display_column_right = false;
    }

    public function initContent() {
        parent::initContent();

        $cart_products = $this->context->cart->getProducts(true);

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
            'product' => $oProduct,
            'features' => $oProduct->getFrontFeatures($this->context->language->id),
            'colors' => $oProduct->getColors($this->context->language->id),
            'prices' => $aPrices,
            'step'  => '1'
        ));
        $this->context->smarty->assign('header_mobile', _PS_THEME_DIR_ . 'mobile-header.tpl');
        $this->context->smarty->assign('footer_mobile', _PS_THEME_DIR_ . 'mobile-footer.tpl');
        $this->context->smarty->assign('menu_mobile', _PS_THEME_DIR_ . 'mobile-menu.tpl');
        $this->context->smarty->assign('global', _PS_THEME_DIR_ . 'global.tpl');
        $this->context->smarty->assign('tmheaderaccount', _PS_MODULE_DIR_ . 'tmheaderaccount/views/templates/hook/tmheaderaccount.tpl');
        $this->setTemplate(_PS_THEME_DIR_ . 'mobile-product-page.tpl');
    }

}
