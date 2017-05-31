<?php

class CustomShopAdminShopEditControllerCore extends CustomShopAdminControllerCore {

    /**
     * Assign template vars related to page content
     * @see FrontController::initContent()
     */
    public function init() {
        parent::init();
    }

    public function initContent() {
        parent::initContent();
        $submit_success = false;
        if (isset($_POST['title'])) {
            $oCustomShop = new CustomShop($this->custom_shop['id']);
            if (!in_array('included', $_POST)) {
                $oCustomShop->included = 0;
            }
            if (!in_array('promoted', $_POST)) {
                $oCustomShop->promoted = 0;
            }
            foreach ($_POST as $key => $value) {
                if (in_array($key, ['deactivated', 'included', 'promoted'])) {
                    $oCustomShop->{$key} = $value == 'on' ? 1 : 0;
                } else {
                    $oCustomShop->{$key} = $value;
                }
            }
            if (!isset($_POST['deactivated'])) {
                $oCustomShop->deactivated = 0;
            }
            if (!$this->context->cookie->__get('custom_shop_loggedin_super')) {
                $oCustomShop->modified = 1;
            }
            $oCustomShop->save();
            // refresh info
            $this->custom_shop = CustomShop::getShopById($this->custom_shop['id']);

            $submit_success = true;

            $this->context->smarty->assign([
                'shop' => $this->custom_shop
            ]);
        } else {
            if ($this->context->cookie->__get('custom_shop_loggedin_super')) {
                $oCustomShop = new CustomShop($this->custom_shop['id']);
                $oCustomShop->modified = 0;
                $oCustomShop->save();
            }
        }
        $this->context->smarty->assign([
            'submit_success' => $submit_success
        ]);

        $this->setTemplate(_PS_THEME_DIR_ . 'custom-shop-admin-shop-edit.tpl');
    }

}
