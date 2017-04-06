<?php

class CustomShopAdminDashboardControllerCore extends CustomShopAdminControllerCore {

    /**
     * Assign template vars related to page content
     * @see FrontController::initContent()
     */
    public function init() {
        parent::init();
    }

    public function initContent() {
        parent::initContent();

        $aStatus = [
          1 => 'New',  
          2 => 'Cancelled',  
          3 => 'Shipped',  
          4 => 'Received',  
          5 => 'Commission paid'
        ];
        $aOrders = CustomShop::getOrders($this->custom_shop['id'], false);
        $iTotalProductsSold = 0;
        $aTotalSalesAmount = [];
        $fTotalCommission = 0;
        $aNbOrders = ['ids' => [], 'nbr' => 0];
        if ($aOrders) {
            foreach ($aOrders as &$aCommissionPaidOrder) {
                $iTotalProductsSold += $aCommissionPaidOrder['quantity'];
                $aTotalSalesAmount[$aCommissionPaidOrder['id_order']] = $aCommissionPaidOrder['total_products'];
                $fTotalCommission += ($aCommissionPaidOrder['design_price'] * $aCommissionPaidOrder['quantity']);
                if (!in_array($aCommissionPaidOrder['id_order'], $aNbOrders['ids'])) {
                    $aNbOrders['ids'][] = $aCommissionPaidOrder['id_order']; 
                    $aNbOrders['nbr']++; 
                }
            }
        }

        $aCurrentSituation = CustomShop::getCurrentSituation($this->custom_shop['id']);
        $aBills = CustomShopBillingHistory::getAllBilling($this->custom_shop['id']);

        $this->context->smarty->assign([
            'orders' => $aOrders,
            'status' => $aStatus,
            'next_date_payment' => date('Y-m-d', strtotime('+1 month', strtotime(date('Y-m').'-05'))),
            'nb_orders' => $aNbOrders['nbr'],
            'nb_products_sold' => $iTotalProductsSold,
            'total_sales_amount' => array_sum($aTotalSalesAmount),
            'total_commission' => $fTotalCommission,
            'current_situation' => $aCurrentSituation,
            'bills' => $aBills
        ]);

        $this->setTemplate(_PS_THEME_DIR_ . 'custom-shop-admin-dashboard.tpl');
    }

}
