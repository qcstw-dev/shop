<?php

class CustomShopAdminControllerCore extends CustomShopControllerCore {

    /**
     * Assign template vars related to page content
     * @see FrontController::initContent()
     */
    public function init() {
        parent::init();
        $bRedirection = false;
        if (!$this->context->cookie->__get('custom_shop_loggedin')) {
            $bRedirection = true;
        }
        if (Tools::getValue('shop_name')) {
//            if (!$this->context->cookie->custom_shop_id || ($this->context->cookie->custom_shop_id != CustomShop::getShopByName(Tools::getValue('shop_name'))->id)) {
//                $this->context->cookie->__set('custom_shop_id', CustomShop::getShopByName(Tools::getValue('shop_name'))->id);
//            }
//            $this->custom_shop = new CustomShop($this->context->cookie->custom_shop_id);
            $this->custom_shop = new CustomShop(CustomShop::getShopByName(Tools::getValue('shop_name'))->id);
        } else {
            $bRedirection = true;
        }
        if ($this->custom_shop) {
            $this->custom_shop_account = CustomShopAccount::getAccountById($this->custom_shop->id_account);
        } else {
            $bRedirection = true;
        }
        if ($bRedirection) {
            header('Location :'.$this->base_uri.'custom-shop-registration');
        }
//        if (!$this->context->cookie->custom_shop_account_id || ($this->context->cookie->custom_shop_account_id != $this->custom_shop->id_account)) {
//            if (Tools::getValue('shop_name')) {
//                $this->context->cookie->__set('custom_shop_account_id', $this->custom_shop->id_account);
//            }
//            $this->custom_shop_account = CustomShopAccount::getAccountById($this->custom_shop->id_account);
//        }
        
    }

    public function initContent() {
        parent::initContent();
        $this->context->smarty->assign([
           'menu' => _PS_THEME_DIR_ . 'custom-shop-menu.tpl' 
        ]);
    }

}
