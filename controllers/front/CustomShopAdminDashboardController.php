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
          5 => 'Comission paid'
        ];
        $aOrders = CustomShop::getOrders($this->custom_shop['id']);
        $iTotalProductsSold = 0;
        $fTotalSalesAmount = 0;
        $fTotalComission = 0;
        $aNbOrders = ['ids' => [], 'nbr' => 0];
        foreach ($aOrders as &$aOrder) {
            $iTotalProductsSold += $aOrder['quantity'];
            $fTotalSalesAmount += $aOrder['product_price'] * $aOrder['quantity'];
            $fTotalComission += ($aOrder['design_price'] * $aOrder['quantity']);
            if (!in_array($aOrder['id_order'], $aNbOrders['ids'])) {
                $aNbOrders['ids'][] = $aOrder['id_order']; 
                $aNbOrders['nbr']++; 
            }
        }
        
        $aBills = CustomShopBillingHistory::getAllBilling($this->custom_shop['id']);
        
        $this->context->smarty->assign([
            'orders' => $aOrders,
            'status' => $aStatus,
            'next_date_payment' => date('Y-m-d', strtotime('+1 month', strtotime(date('Y-m').'-05'))),
            'nb_orders' => $aNbOrders['nbr'],
            'nb_products_sold' => $iTotalProductsSold,
            'total_sales_amount' => $fTotalSalesAmount,
            'total_comission' => $fTotalComission,
            'bills' => $aBills
        ]);

        $this->setTemplate(_PS_THEME_DIR_ . 'custom-shop-admin-dashboard.tpl');
    }

}
