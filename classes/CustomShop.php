<?php

class CustomShopCore extends ObjectModel {

    public $id;
    public $name;
    public $title;
    public $motto;
    public $description;
    public $logo;
    public $header;
    public $website;
    public $facebook;
    public $twitter;
    public $minimum_to_reach;
    public $deactivated;
    public $id_account;
    public static $definition = array(
        'table' => 'custom_shop',
        'primary' => 'id'
    );

    public function __construct($id = null, $option = []) {
        parent::__construct($id);
        if ($id) {
            $option = self::getShopById($id);
        }
        if ($option) {
            foreach ($option as $key => $field) {
                $this->{$key} = $field;
            }
        }
    }

    public static function getAllShops() {
        return Db::getInstance()->executeS('
		SELECT *
		FROM `' . _DB_PREFIX_ . 'custom_shop` ORDER BY `id` DESC');
    }
    public static function getResultsFromAllTimes($iShopId) {
        return Db::getInstance()->getRow('
		SELECT SUM(cp.`design_price` * cp.`quantity`) as total_comission, SUM(cp.`quantity`) as quantity, SUM(o.`total_paid`) as total_sales
		FROM `' . _DB_PREFIX_ . 'orders` o, `' . _DB_PREFIX_ . 'cart_product` cp, `' . _DB_PREFIX_ . 'custom_shop_customized_prod` cscp
                WHERE cp.`id_cart` = o.`id_cart`
                AND cscp.`id` = cp.`id_customized_prod`
                AND o.`valid` = 1
                AND o.`id_billing` != 0
		AND cscp.`id_shop` = ' . pSQL($iShopId)
                . ' ORDER BY o.`id_order` DESC');
    }
    public static function getCurrentSituation($iShopId) {
        $aCurrentSituation = Db::getInstance()->getRow('
		SELECT SUM(cp.`design_price` * cp.`quantity`) as total_comission, SUM(cp.`quantity`) as quantity, SUM(o.`total_paid`) as total_sales
		FROM `' . _DB_PREFIX_ . 'orders` o, `' . _DB_PREFIX_ . 'cart_product` cp, `' . _DB_PREFIX_ . 'custom_shop_customized_prod` cscp
                WHERE cp.`id_cart` = o.`id_cart`
                AND cscp.`id` = cp.`id_customized_prod`
                AND o.`valid` = 1
                AND o.`id_billing` = 0
		AND cscp.`id_shop` = ' . pSQL($iShopId)
                . ' ORDER BY o.`id_order` DESC');
        $iNbOrders = Db::getInstance()->getRow('
		SELECT COUNT(o.`id_order`) as orders
		FROM `' . _DB_PREFIX_ . 'orders` o, `' . _DB_PREFIX_ . 'cart_product` cp, `' . _DB_PREFIX_ . 'custom_shop_customized_prod` cscp
                WHERE cp.`id_cart` = o.`id_cart`
                AND cscp.`id` = cp.`id_customized_prod`
                AND o.`valid` = 1
                AND o.`id_billing` = 0
		AND cscp.`id_shop` = ' . pSQL($iShopId)
                . ' GROUP BY o.`id_order`');
        $aCurrentSituation['orders'] = $iNbOrders['orders'];
        return $aCurrentSituation;
    }
    public static function getNonPaidOrdersId($iShopId) {
        return Db::getInstance()->executeS('
		SELECT o.`id_order`
		FROM `' . _DB_PREFIX_ . 'orders` o, `' . _DB_PREFIX_ . 'cart_product` cp, `' . _DB_PREFIX_ . 'custom_shop_customized_prod` cscp
                WHERE cp.`id_cart` = o.`id_cart`
                AND cscp.`id` = cp.`id_customized_prod`
                AND o.`valid` = 1
                AND o.`id_billing` = 0
		AND cscp.`id_shop` = ' . pSQL($iShopId)
                . ' GROUP BY o.`id_order`'
                . ' ORDER BY o.`id_order` DESC');
    }
    public static function getOrders($iId) {
        $aOrders = Db::getInstance()->executeS('
		SELECT o.*, cp.*
		FROM `' . _DB_PREFIX_ . 'orders` o, `' . _DB_PREFIX_ . 'cart_product` cp, `' . _DB_PREFIX_ . 'custom_shop_customized_prod` cscp
                WHERE cp.`id_cart` = o.`id_cart`
                AND o.`valid` = 1
                AND cscp.`id` = cp.`id_customized_prod`
		AND cscp.`id_shop` = ' . pSQL($iId)
                . ' ORDER BY o.`id_order` DESC');
        foreach ($aOrders as &$aOrder) {
            $aOrder['product_prestashop'] = Db::getInstance()->getRow('
		SELECT *
		FROM `' . _DB_PREFIX_ . 'product`
		WHERE `id_product` = ' . pSQL($aOrder['id_product']));
            $aOrder['product_creation'] = CustomShopProduct::getProductById($aOrder['id_customized_prod']);
            $aOrder['product_creation']['design'] = CustomShopDesign::getDesignById($aOrder['product_creation']['id_design']);
            $aOrder['customer'] = Db::getInstance()->getRow('
		SELECT *
		FROM `' . _DB_PREFIX_ . 'customer`
		WHERE `id_customer` = ' . pSQL($aOrder['id_customer']));
            $aOrder['address_delivery'] = Db::getInstance()->getRow('
		SELECT *
		FROM `' . _DB_PREFIX_ . 'address` 
		WHERE `id_address` = ' . pSQL($aOrder['id_address_delivery']));
            $aOrder['address_delivery']['country_name'] = Country::getNameById(Context::getContext()->language->id, $aOrder['address_delivery']['id_country']);
        }

        return $aOrders;
    }

    public function setLogo($sLogo) {
        $this->logo = $sLogo;
        return $this;
    }

    public function setHeader($sHeader) {
        $this->header = $sHeader;
        return $this;
    }

    public static function getShopById($iId) {
        return Db::getInstance()->getRow('
		SELECT *
		FROM `' . _DB_PREFIX_ . 'custom_shop`
		WHERE `id` = ' . pSQL($iId));
    }

    public static function getShopByName($sName) {
        return Db::getInstance()->getRow('
		SELECT *
		FROM `' . _DB_PREFIX_ . 'custom_shop`
		WHERE `name` = \'' . pSQL($sName) . '\'');
    }

    public function save() {
        $aData = [
            'name' => pSQL($this->name),
            'title' => pSQL($this->title),
            'motto' => pSQL($this->motto),
            'description' => pSQL($this->description),
            'logo' => pSQL($this->logo),
            'header' => pSQL($this->header),
            'website' => pSQL($this->website),
            'facebook' => pSQL($this->facebook),
            'twitter' => pSQL($this->twitter),
            'minimum_to_reach' => pSQL($this->minimum_to_reach),
            'deactivated' => pSQL($this->deactivated),
            'id_account' => pSQL($this->id_account)
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

    public static function isShopDeactivatedByEmail($sEmail) {
        return (bool) Db::getInstance()->getValue('
		SELECT cs.`deactivated`
		FROM `' . _DB_PREFIX_ . 'custom_shop` cs, `' . _DB_PREFIX_ . 'custom_shop_account` csa
                WHERE cs.`id_account` = csa.`id`
		AND csa.`email` = \'' . pSQL($sEmail) . '\'');
    }
    public static function nameExists($sName) {
        return (bool) Db::getInstance()->getValue('
		SELECT `id`
		FROM `' . _DB_PREFIX_ . 'custom_shop`
		WHERE `name` = \'' . pSQL($sName) . '\'');
    }

}
