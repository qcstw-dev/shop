<?php

class CustomShopSuperAdminControllerCore extends CustomShopControllerCore {

    /**
     * Assign template vars related to page content
     * @see FrontController::initContent()
     */

    public function init() {
        parent::init();
        if (Tools::getValue('disconnect')) {
            $this->context->cookie->__set('custom_shop_loggedin_super', false);
        }
        $this->context->cookie->__set('custom_shop_loggedin_super', true);
        if (!$this->context->cookie->__get('custom_shop_loggedin_super')) {
            header('Location: ' . _PS_BASE_URL_ . __PS_BASE_URI__ . 'custom-shop-register');
        }
    }

    public function initContent() {
        parent::initContent();
        
        $aShops = CustomShop::getAllShops();
        foreach ($aShops as &$aShop) {
            $aShop['customer'] = CustomShopAccount::getAccountById($aShop['id_account']);
            $aCurrentSituation = CustomShop::getCurrentSituation($aShop['id']);
            $aShop['total_comission'] = $aCurrentSituation['total_comission'];
            $aShop['quantity'] = $aCurrentSituation['quantity'];
            $aShop['bill'] = CustomShopBillingHistory::getBillingById($aShop['id'], 'shop');
        }
        var_dump($aShops);
        $this->context->smarty->assign([
            'shops' => $aShops,
            'side' => 'back',
            'header' => _PS_THEME_DIR_ . 'custom-shop-header-back.tpl',
            'footer' => _PS_THEME_DIR_ . 'custom-shop-footer-back.tpl'
        ]);
        
        $this->setTemplate(_PS_THEME_DIR_ . 'custom-shop-super-admin.tpl');
    }

}
