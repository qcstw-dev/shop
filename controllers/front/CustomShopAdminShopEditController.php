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
            $oCustomShop->save();
            // refresh info
            $this->custom_shop = CustomShop::getShopById($this->custom_shop['id']);
            $this->context->smarty->assign([
               'shop' => $this->custom_shop 
            ]);
        }
        
        
        $this->setTemplate(_PS_THEME_DIR_ . 'custom-shop-admin-shop-edit.tpl');
    }

}
