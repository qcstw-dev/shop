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
    public function save() {
        $aData = [
            'date' => pSQL($this->date),
            'amount' => pSQL($this->amount),
            'id_shop' => pSQL($this->id_shop),
        ];
        if ($this->id) {
            return Db::getInstance()->update(self::$definition['table'], $aData, 'id = ' . pSQL($this->id));
        } else {
            if (!Db::getInstance()->insert(self::$definition['table'], $aData)) {
                return false;
            } else {
                $this->id = Db::getInstance()->Insert_ID();
                return true;
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
    public static function getBillingById($iId, $sIdType = 'bill') {
        $aBill = Db::getInstance()->getRow('
		SELECT *
		FROM `' . _DB_PREFIX_ . self::$definition['table'] . '`
		WHERE '.($sIdType == 'shop' ? '`id_shop` = ' . pSQL($iId) .' ORDER BY `date` DESC' : '`id` = ' . pSQL($iId)));
        $aFormattedBills = [];
        if ($aBill) {
            $aOrders = CustomShopBillingHistory::getOrdersByBillId($aBill['id']);
            $aFormattedBills['date'] = $aBill['date'];
            $aFormattedBills['total'] = $fComission = 0;
            $aFormattedBills['quantity'] = $iQuantity = 0;
            foreach ($aOrders as $aOrder) {
                $fComission = ($aOrder['design_price'] * $aOrder['quantity']);
                $iQuantity += $aOrder['quantity'];
                $aFormattedBills['orders'][$aOrder['id_order']] = [
                    'id' => $aOrder['id_order'],
                    'date' => $aOrder['date_add'],
                    'comission' => (isset($aFormattedBills['orders'][$aOrder['id_order']]) ? $aFormattedBills['orders'][$aOrder['id_order']]['comission'] + $fComission : $fComission),
                    'quantity' => ($iQuantity ? $iQuantity + $aOrder['quantity'] : $aOrder['quantity'])
                ];
                $aFormattedBills['total'] += $fComission;
                $aFormattedBills['quantity'] += $iQuantity;
            }
        }
        return $aFormattedBills;
    }
}
