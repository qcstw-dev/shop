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

        $oMobile = new Mobile_Detect();

        $this->context->smarty->assign(array(
            'is_mobile' => $oMobile->isMobile(),
            'is_tablet' => $oMobile->isTablet(),
            'is_mobile_or_tablet' => $oMobile->isMobile() || $oMobile->isTablet(),
            'shop' => $this->custom_shop,
            'account' => $this->custom_shop_account,
            'logo_default' => _PS_BASE_URL_SSL_ . __PS_BASE_URI__ . 'img/custom_shop_default_logo.jpg',
            'header_default' => _PS_BASE_URL_SSL_ . __PS_BASE_URI__ . 'img/custom_shop_default_header.jpg',
            'logo_gift' => $this->context->link->getMediaLink(_PS_IMG_ . Configuration::get('PS_LOGO')),
            'shop_name' => $this->context->shop->name,
            'custom_shop_name' => Tools::getValue('shop_name') ? : '',
            'shop_title' => Configuration::get('PS_SHOP_NAME'),
            'display_top_logo' => $this->bDisplayTopLogo,
            'picture_dir' => 'img/custom_shop/picture/'
        ));
    }

}
