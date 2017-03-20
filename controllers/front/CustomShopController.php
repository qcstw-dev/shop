<?php

class CustomShopControllerCore extends FrontController {

    /**
     * Assign template vars related to page content
     * @see FrontController::initContent()
     */
    public $bDisplayTopLogo = true;
    public $custom_shop;
    public $custom_shop_account;
    public $bRedirection = false;

    public function init() {
        parent::init();
        $this->display_column_left = false;
        $this->display_column_right = false;
        $this->display_header = false;
        $this->display_footer = false;
        
        if (Tools::getValue('shop_name')) {
            $this->custom_shop = CustomShop::getShopByName(Tools::getValue('shop_name'));
            if ($this->custom_shop) {
                $this->context->smarty->assign('id_shop', $this->custom_shop['id']);
                $this->context->smarty->assign('name_shop', $this->custom_shop['name']);
            } else {
                $this->bRedirection = true;
            }
        } else {
            $this->bRedirection = true;
        }
        if ($this->custom_shop) {
            $this->custom_shop_account = CustomShopAccount::getAccountById($this->custom_shop['id_account']);
        } else {
            $this->bRedirection = true;
        }
    }

    public function initContent() {
        parent::initContent();

        $this->context->smarty->assign(array(
            'shop' => $this->custom_shop,
            'account' => $this->custom_shop_account,
            'logo_gift' => $this->context->link->getMediaLink(_PS_IMG_ . Configuration::get('PS_LOGO')),
            'shop_name' => $this->context->shop->name,
            'custom_shop_name' => Tools::getValue('shop_name') ? : '',
            'shop_title' => Configuration::get('PS_SHOP_NAME'),
            'display_top_logo' => $this->bDisplayTopLogo,
            'picture_dir' => 'img/custom_shop/picture/'
        ));
    }

}
