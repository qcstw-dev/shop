<?php

class CustomShopFrontControllerCore extends CustomShopControllerCore {

    public $php_self = 'contact';
    public $ssl = true;

    /**
     * Assign template vars related to page content
     * @see FrontController::initContent()
     */
    public function init() {
        parent::init();
        // redirect if shop desactivated
        if ($this->bRedirection) {
            Tools::redirect(_PS_BASE_URL_ . __PS_BASE_URI__);
        }
        $totalToPay = $this->context->cart->getOrderTotal(false);

        $this->context->smarty->assign(array(
            'total_cart' => Tools::displayPrice($totalToPay),
        ));

        if ($this->custom_shop['currency'] && !$this->context->cookie->currency_changed) {
            $currency = new Currency((int) $this->custom_shop['currency']);
            if (Validate::isLoadedObject($currency) && !$currency->deleted) {
                $this->context->cookie->id_currency = (int) $currency->id;
                $this->context->cookie->__set('id_currency', (int) $currency->id);
                $this->context->currency = $currency;
                $this->context->smarty->assign('currency', $currency);
                $this->context->smarty->assign('id_currency_cookie', $currency->id);
            }
        }
    }

    public function initContent() {
        parent::initContent();

        // og:image
        if (Tools::getValue('id_creation')) {
            $aCustomProduct = CustomShopProduct::getProductById(Tools::getValue('id_creation'));
            $oPrestashopProduct = new Product($aCustomProduct['id_product']);
            $this->context->smarty->assign([
                'og_image' => _PS_BASE_URL_ . __PS_BASE_URI__ . 'img/custom_shop/creation/' . $aCustomProduct['custom_img'],
                'og_title' => $aCustomProduct['product_name'],
                'og_description' => (isset($oPrestashopProduct->description_short[1]) ? strip_tags($oPrestashopProduct->description_short[1]) : '')
            ]);
        }

        $aCustomProducts = CustomShopProduct::getProducts($this->custom_shop['id']);
        $aIdCategories = [];
        foreach ($aCustomProducts as $key => &$aCustomProduct) {
            $oPrestashopProduct = new Product($aCustomProduct['id_product']);
            if ($oPrestashopProduct->active) {
                foreach ($oPrestashopProduct->getCategories() as $sIdCategory) {
                    if ($sIdCategory != '45') {
                        $aIdCategories[] = $sIdCategory;
                    }
                }
            }
        }

        $aCategories = [];
        if ($aIdCategories) {
            foreach (array_values(Category::getCategories($this->context->language->id, true, true, 'AND c.`id_parent` = ' . pSQL('45') . (implode(',', $aIdCategories) ? ' AND c.`id_category` IN (' . implode(',', $aIdCategories) . ')' : '')))[0] as $key => $aCategory) {
                $aCategories[$key] = $aCategory['infos'];
            }
        }
        $aParsedUrl = parse_url($_SERVER['HTTP_REFERER']);
        if (isset($_COOKIE['iframe']) && $_COOKIE['iframe'] != $aParsedUrl['scheme'].'://'.$aParsedUrl['host'].$aParsedUrl['path']) {
            unset($_COOKIE['iframe']);
        }
        if (isset($_GET['iframe'])) {
            setcookie('iframe', _PS_BASE_URL_SSL_.'/shop/'.$this->custom_shop['name']);
            setcookie('first_url' , parse_url($_SERVER['HTTP_REFERER'])['host']);
        } else if (isset($_COOKIE['iframe'])
                && (!isset($_SERVER['HTTP_REFERER']) 
                || (parse_url($_SERVER['HTTP_REFERER'])['host'] != $_COOKIE['first_url']
                        && parse_url($_SERVER['HTTP_REFERER'])['host'] != parse_url(_PS_BASE_URL_)['host']))) {
            unset($_COOKIE['iframe']);
        }
        
        $aProducts = $this->context->cart->getProducts(true, null, null, true);
        $aCartCreationsId = [];
        foreach ($aProducts as $aProduct) {
            $aCartCreationsId[] = $aProduct['id_customized_prod'];
        }
        $cart_qties = $this->context->cart->nbProducts(true);
        $this->context->smarty->assign([
            'cart_qties' => $cart_qties,
            'meta_title' => $this->custom_shop['title'] ? : $this->custom_shop['name'],
            'token' => Tools::getToken(false),
            'cart_products' => $aProducts,
            'cart_creations_id' => $aCartCreationsId,
            'is_iframe' => isset($_GET['iframe']) || (isset($_COOKIE['iframe']) && $_COOKIE['iframe']),
            'side' => 'front',
            'header' => _PS_THEME_DIR_ . 'custom-shop-header-front.tpl',
            'footer' => _PS_THEME_DIR_ . 'custom-shop-footer-front.tpl',
            'contact_form' => _PS_THEME_DIR_ . 'custom-shop-front-contact-us.tpl',
            'categories' => $aCategories,
            'cat' => Tools::getValue('category')
        ]);
    }

    public function setMedia() {
        parent::setMedia();
        $this->addCSS(_THEME_CSS_DIR_ . 'contact-form.css');
        $this->addJS(_THEME_JS_DIR_ . 'contact-form.js');
        $this->addJS(_PS_JS_DIR_ . 'validate.js');
    }

}
