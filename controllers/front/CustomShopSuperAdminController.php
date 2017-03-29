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

        $sErrorMessage = '';
        $sLogin = 'qcsasia';
        $sPassword = 'ab119955CD';
        if (!$this->context->cookie->__get('custom_shop_loggedin_super')) {
            if (Tools::getIsset('login') && Tools::getIsset('password')) {
                if (Tools::getValue('login') == $sLogin && Tools::getValue('password') == $sPassword) {
                    $this->context->cookie->__set('custom_shop_loggedin_super', true);
                } else if (Tools::getValue('login') != $sLogin) {
                    $sErrorMessage = 'Wrong login';
                } else if (Tools::getValue('password') != $sPassword) {
                    $sErrorMessage = 'Wrong password';
                }
            }
        }

        $aShops = [];
        if ($this->context->cookie->__get('custom_shop_loggedin_super')) {
            $aShops = CustomShop::getAllShops();
            foreach ($aShops as &$aShop) {
                $aShop['customer'] = CustomShopAccount::getAccountById($aShop['id_account']);
                $aCurrentSituation = CustomShop::getCurrentSituation($aShop['id']);
                $aOrders = CustomShop::getOrders($aShop['id'], true);
                $iTotalProductsSold = 0;
                $fTotalSalesAmount = 0;
                $fTotalCommission = 0;
                $aNbOrders = ['ids' => [], 'nbr' => 0];
                foreach ($aOrders as &$aOrder) {
                    $iTotalProductsSold += $aOrder['quantity'];
                    $fTotalSalesAmount += $aOrder['total_products'];
                    $fTotalCommission += ($aOrder['design_price'] * $aOrder['quantity']);
                    if (!in_array($aOrder['id_order'], $aNbOrders['ids'])) {
                        $aNbOrders['ids'][] = $aOrder['id_order'];
                        $aNbOrders['nbr'] ++;
                    }
                }
                $aShop['total_commission_from_all_times'] = $fTotalCommission;
                $aShop['total_comission'] = $aCurrentSituation['total_commission'];
                $aShop['total_sales_from_all_times'] = $fTotalSalesAmount;
                $aShop['total_sales'] = $aCurrentSituation['total_sales'];
                $aShop['quantity'] = $iTotalProductsSold;
                $aShop['bill'] = CustomShopBillingHistory::getBillingById($aShop['id'], 'shop');
                $aShop['minimum_to_reach'] = $aShop['minimum_to_reach'] ? : 50;
            }
        }
        $this->context->smarty->assign([
            'shops' => $aShops,
            'side' => 'back',
            'is_super_admin' => $this->context->cookie->__get('custom_shop_loggedin_super'),
            'header' => _PS_THEME_DIR_ . 'custom-shop-header-back.tpl',
            'footer' => _PS_THEME_DIR_ . 'custom-shop-footer-back.tpl',
            'error_message' => $sErrorMessage
        ]);

        $this->setTemplate(_PS_THEME_DIR_ . 'custom-shop-super-admin.tpl');
    }

}
