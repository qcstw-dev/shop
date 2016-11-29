<?php

class MobileCheckoutControllerCore extends FrontController {

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

        foreach ($cart_products as $cart_product) {
            $aQuantities = [1, 5, 10, 25, 50, 100];
            $aPrices = [];
            foreach ($aQuantities as $iQuantity) {
                $aPrices[$iQuantity] = Product::getPriceStatic((int) $cart_product['id_product'], true, null, 2, null, false, true, $iQuantity);
            }
            $cart_product['prices'] = $aPrices;
        }

        if ($cart_products) {
            $aSummary = $this->context->cart->getSummaryDetails(null, true);
            $totalToPay = $this->context->cart->getOrderTotal(false);
            $available_cart_rules = CartRule::getCustomerCartRules($this->context->language->id, (isset($this->context->customer->id) ? $this->context->customer->id : 0), true, true, true, $this->context->cart, false, true);

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
                'checkout' => true,
                'cart_products' => $cart_products,
                'step' => '4',
                'total_cart' => Tools::displayPrice($totalToPay),
                'summary' => $aSummary,
                'displayVouchers' => $available_cart_rules
            ));
            $this->context->smarty->assign('header_mobile', _PS_THEME_DIR_ . 'mobile-header.tpl');
            $this->context->smarty->assign('footer_mobile', _PS_THEME_DIR_ . 'mobile-footer.tpl');
            $this->context->smarty->assign('menu_mobile', _PS_THEME_DIR_ . 'mobile-menu.tpl');
            $this->context->smarty->assign('global', _PS_THEME_DIR_ . 'global.tpl');
            $this->context->smarty->assign('tmheaderaccount', _PS_MODULE_DIR_ . 'tmheaderaccount/views/templates/hook/tmheaderaccount.tpl');
            $this->setTemplate(_PS_THEME_DIR_ . 'mobile-checkout.tpl');
        } else {
            header('Location: ' . _PS_BASE_URL_ . __PS_BASE_URI__ . 'mobile');
        }
    }

}
