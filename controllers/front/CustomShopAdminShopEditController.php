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
        
        if (isset($_POST)) {
            $oCustomShop = new CustomShop($this->custom_shop['id']);
            foreach ($_POST as $key => $value) {
                if ($key == 'deactivated') {
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
