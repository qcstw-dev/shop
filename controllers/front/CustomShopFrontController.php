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
        if ($this->bRedirection) {
            Tools::redirect(_PS_BASE_URL_ . __PS_BASE_URI__);
        }
        // redirect if shop desactivated
        $totalToPay = $this->context->cart->getOrderTotal(false);
        
        $this->context->smarty->assign(array(
            'total_cart' => Tools::displayPrice($totalToPay),
        ));
    }

    public function initContent() {
        parent::initContent();

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
            foreach (array_values(Category::getCategories($this->context->language->id, true, true, 'AND c.`id_parent` = ' . pSQL('45'). (implode(',', $aIdCategories) ? ' AND c.`id_category` IN (' . implode(',', $aIdCategories) . ')' : '') ))[0] as $key => $aCategory) {
                $aCategories[$key] = $aCategory['infos'];
            }
        }
        
        $aProducts = $this->context->cart->getProducts(true, null, null, true);
        $cart_qties = $this->context->cart->nbProducts(true);
        $this->context->smarty->assign([
            'cart_qties' => $cart_qties,
            'meta_title' => $this->custom_shop['title'] ? : $this->custom_shop['name'],
            'token' => Tools::getToken(false),
            'cart_products' => $aProducts,
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
