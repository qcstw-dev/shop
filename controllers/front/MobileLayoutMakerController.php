<?php

class MobileLayoutMakerControllerCore extends FrontController {

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
            
            $cart_products = $this->context->cart->getProducts(true);
            
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
                'layout_maker' => true,
                'step' => '3',
                'product' => $oProduct,
                'design' => isset($oDesign) ? $oDesign : null,
                'image_design' => isset($imageDesign) ? $imageDesign : null,
                'images_product' => $imagesLayout,
                'custom' => $bCustom,
                'original_picture' => ($bCustom ? _PS_BASE_URL_ . __PS_BASE_URI__.'img/layout_maker/temp/'.$this->context->cookie->selected_design.'.png' : ''),
                'total_cart' => Tools::displayPrice($totalToPay),
            ));
            $this->context->smarty->assign('header_mobile', _PS_THEME_DIR_ . 'mobile-header.tpl');
            $this->context->smarty->assign('footer_mobile', _PS_THEME_DIR_ . 'mobile-footer.tpl');
            $this->context->smarty->assign('menu_mobile', _PS_THEME_DIR_ . 'mobile-menu.tpl');
            $this->context->smarty->assign('global', _PS_THEME_DIR_ . 'global.tpl');
            $this->context->smarty->assign('tmheaderaccount', _PS_MODULE_DIR_ . 'tmheaderaccount/views/templates/hook/tmheaderaccount.tpl');
            $this->setTemplate(_PS_THEME_DIR_ . 'mobile-layout-maker.tpl');
        } elseif (!$this->context->cookie->selected_product) {
            header('Location: ' . _PS_BASE_URL_ . __PS_BASE_URI__ . 'mobile');
        } else {
            header('Location: ' . _PS_BASE_URL_ . __PS_BASE_URI__ . 'mobile-designs');
        }
    }

}
