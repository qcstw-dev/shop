<?php

class MobileSelectDesignControllerCore extends FrontController {

    public function init() {
        parent::init();

        $this->display_header = false;
        $this->display_footer = false;
        $this->display_column_left = false;
        $this->display_column_right = false;
    }

    public function initContent() {
        parent::initContent();
        
        if (Tools::getValue('id_product') || $this->context->cookie->selected_product) {
            // save selected product id
            if (Tools::getValue('id_product')) {
                $this->context->cookie->__set('selected_product', Tools::getValue('id_product'));
            }

            $totalToPay = $this->context->cart->getOrderTotal(false);
            
            $cart_products = $this->context->cart->getProducts(true);
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
                'upload' => true,
                'category' => isset($oCategory) ? $oCategory : $oDesignCategory,
                'step'  => '2',
                'total_cart' => Tools::displayPrice($totalToPay),
            ));
            $this->context->smarty->assign('header_mobile', _PS_THEME_DIR_ . 'mobile-header.tpl');
            $this->context->smarty->assign('footer_mobile', _PS_THEME_DIR_ . 'mobile-footer.tpl');
            $this->context->smarty->assign('menu_mobile', _PS_THEME_DIR_ . 'mobile-menu.tpl');
            $this->context->smarty->assign('global', _PS_THEME_DIR_ . 'global.tpl');
            $this->context->smarty->assign('tmheaderaccount', _PS_MODULE_DIR_ . 'tmheaderaccount/views/templates/hook/tmheaderaccount.tpl');
            $this->setTemplate(_PS_THEME_DIR_ . 'mobile-select-design.tpl');
        } else {
            header('Location: ' . _PS_BASE_URL_SSL_.__PS_BASE_URI__ . 'mobile');
        }
    }

}
