<?php

class MobileHistoryOrderControllerCore extends MobileController {

    public function init() {
        parent::init();
    }

    public function initContent() {
        parent::initContent();
        
        if ($orders = Order::getCustomerOrders($this->context->customer->id)) {
            foreach ($orders as &$order) {
                $myOrder = new Order((int) $order['id_order']);
                if (Validate::isLoadedObject($myOrder)) {
                    $order['virtual'] = $myOrder->isVirtual(false);
                }
            }
        }
        $this->context->smarty->assign(array(
            'orders' => $orders,
        ));
        $this->setTemplate(_PS_THEME_DIR_.'mobile-order-history.tpl');
    }

}
