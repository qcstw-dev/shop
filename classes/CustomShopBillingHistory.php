<?php

class CustomShopBillingHistoryCore extends ObjectModel {

    public $id;
    public $date;
    public $amount;
    public $id_shop;
    public static $definition = array(
        'table' => 'custom_shop_billing_history',
        'primary' => 'id'
    );

    public function __construct($id = null, $option = []) {
        parent::__construct($id);
        if ($id) {
            $option = self::getBillingById($id);
        }
        if ($option) {
            foreach ($option as $key => $field) {
                $this->{$key} = $field;
            }
        }
    }

    public static function getOrdersByBillId($iBillingId) {
        $aOrders = Db::getInstance()->executeS('
		SELECT o.*, cp.*
		FROM `' . _DB_PREFIX_ . 'orders` o, `' . _DB_PREFIX_ . 'cart_product` cp
                WHERE cp.`id_cart` = o.`id_cart`
                AND cp.`id_customized_prod` != 0
		AND o.`id_billing` = ' . pSQL($iBillingId));
        return $aOrders;
    }

    public static function getAllBilling($iIdShop) {
        return Db::getInstance()->executeS('
		SELECT *
		FROM `' . _DB_PREFIX_ . self::$definition['table'] . '`
		WHERE `id_shop` = ' . pSQL($iIdShop));
    }

    public static function getBillingById($iId) {
        $aBills = Db::getInstance()->executeS('
		SELECT *
		FROM `' . _DB_PREFIX_ . self::$definition['table'] . '`
		WHERE `id` = ' . pSQL($iId));
        $aFormattedBills = [];
        foreach ($aBills as $aBill) {
            $aOrders = CustomShopBillingHistory::getOrdersByBillId($aBill['id']);
            $aFormattedBills['date'] = $aBill['date'];
            $aFormattedBills['total'] = 0;
            $fComission = 0;
            foreach ($aOrders as $aOrder) {
                $fComission = ($aOrder['design_price'] * $aOrder['quantity']);
                $aFormattedBills['orders'][$aOrder['id_order']] = [
                    'id' => $aOrder['id_order'],
                    'date' => $aOrder['date_add'],
                    'comission' => (isset($aFormattedBills['orders'][$aOrder['id_order']]) ? $aFormattedBills['orders'][$aOrder['id_order']]['comission'] + $fComission : $fComission)
                ];
                $aFormattedBills['total'] += $fComission;
            }
        }
        return $aFormattedBills;
    }

}
