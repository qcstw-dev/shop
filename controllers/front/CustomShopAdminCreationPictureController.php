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
        $aDesignCategories = CustomShopDesign::getDesignCategories();
        $aPictures = CustomShopDesign::getPicturesByShopId($this->custom_shop['id']);
        $aCreations = CustomShopProduct::getProducts($this->custom_shop['id'], false);
        $this->context->smarty->assign([
                'design_categories' => $aDesignCategories,
                'pictures' => $aPictures,
                'creations' => $aCreations,
                'menu_creation' => _PS_THEME_DIR_ . 'custom-shop-admin-menu-creation.tpl'
                ]);
        $this->setTemplate(_PS_THEME_DIR_ . 'custom-shop-admin-creation-picture.tpl');
    }

}
