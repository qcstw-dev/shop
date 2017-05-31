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
        if ($this->context->cookie->__get('custom_shop_loggedin_super')) {
            $oCustomShop = new CustomShop($this->custom_shop['id']);
            $oCustomShop->new_design = 0;
            $oCustomShop->save();
        }
        $aPictures = CustomShopDesign::getPicturesByShopId($this->custom_shop['id']);
        foreach ($aPictures as &$aPicture) {
            $aCategories = Database::getInstance()->where('id_design', $aPicture['id'])->get('ps_custom_shop_asso_design_category', null, 'id_category');
            foreach ($aCategories as $aCategory) {
                $aPicture['categories'][] = $aCategory['id_category'];
            }
        }
        $aCreations = CustomShopProduct::getProducts($this->custom_shop['id'], false);
        
        $aDesignCategories = CustomShop::getDesignCategories();
        $this->context->smarty->assign([
                'design_categories' => $aDesignCategories,
                'pictures' => $aPictures,
                'creations' => $aCreations,
                'menu_creation' => _PS_THEME_DIR_ . 'custom-shop-admin-menu-creation.tpl'
                ]);
        $this->setTemplate(_PS_THEME_DIR_ . 'custom-shop-admin-creation-picture.tpl');
    }

}
