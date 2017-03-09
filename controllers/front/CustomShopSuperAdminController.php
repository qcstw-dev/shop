<?php

class CustomShopSuperAdminControllerCore extends CustomShopControllerCore {

    /**
     * Assign template vars related to page content
     * @see FrontController::initContent()
     */

    public function init() {
        parent::init();
        if (Tools::getIsset('disconnect')) {
            $this->context->cookie->__set('custom_shop_loggedin_super', false);
        }
    }

    public function initContent() {
        parent::initContent();
        
        $bConnected = false;
        $sErrorMessage = '';
        $sLogin = 'qcsasia';
        $sPassword = 'ab119955CD';
        if (!$this->context->cookie->__get('custom_shop_loggedin_super')) {
            if (Tools::getIsset('login') && Tools::getIsset('password')) {
                if (Tools::getValue('login') == $sLogin && Tools::getValue('password') == $sPassword) {
                    $bConnected = true;
                    $this->context->cookie->__set('custom_shop_loggedin_super', true);
                } else if (Tools::getValue('login') != $sLogin) {
                    $sErrorMessage = 'Wrong login';
                } else if (Tools::getValue('password') != $sPassword) {
                    $sErrorMessage = 'Wrong password';
                }
            }
        } else {
            $bConnected = true;
        }
        
        $aShops = [];
        if ($bConnected) {
            $aShops = CustomShop::getAllShops();
            foreach ($aShops as &$aShop) {
                $aShop['customer'] = CustomShopAccount::getAccountById($aShop['id_account']);
                $aCurrentSituation = CustomShop::getCurrentSituation($aShop['id']);
                $aResultsFromAllTimes = CustomShop::getResultsFromAllTimes($aShop['id']);
                $aShop['total_comission_from_all_times'] = $aResultsFromAllTimes['total_comission'];
                $aShop['total_comission'] = $aCurrentSituation['total_comission'];
                $aShop['total_sales_from_all_times'] = $aResultsFromAllTimes['total_sales'];
                $aShop['total_sales'] = $aCurrentSituation['total_sales'];
                $aShop['quantity'] = $aCurrentSituation['quantity'];
                $aShop['bill'] = CustomShopBillingHistory::getBillingById($aShop['id'], 'shop');
            }
        }
        $this->context->smarty->assign([
            'shops' => $aShops,
            'side' => 'back',
            'header' => _PS_THEME_DIR_ . 'custom-shop-header-back.tpl',
            'footer' => _PS_THEME_DIR_ . 'custom-shop-footer-back.tpl',
            'connected' => $bConnected,
            'error_message' => $sErrorMessage
        ]);
        
        $this->setTemplate(_PS_THEME_DIR_ . 'custom-shop-super-admin.tpl');
    }

}
