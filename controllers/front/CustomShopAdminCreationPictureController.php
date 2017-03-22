<?php

class CustomShopAdminCreationPictureControllerCore extends CustomShopAdminControllerCore {

    /**
     * Assign template vars related to page content
     * @see FrontController::initContent()
     */
    public function init() {
        parent::init();
    }

    public function initContent() {
        parent::initContent();
        
        $aPictures = CustomShopDesign::getPicturesByShopId($this->custom_shop['id']);
        $this->context->smarty->assign('pictures', $aPictures);
        $aCreations = CustomShopProduct::getProducts($this->custom_shop['id'], false);
        $this->context->smarty->assign('creations', $aCreations);
        $this->context->smarty->assign('menu_creation', _PS_THEME_DIR_ . 'custom-shop-admin-menu-creation.tpl');
        $this->setTemplate(_PS_THEME_DIR_ . 'custom-shop-admin-creation-picture.tpl');
    }

}
