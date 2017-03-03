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

    public static function getOrders($iId) {
        $aOrders = Db::getInstance()->executeS('
		SELECT o.*, cp.*
		FROM `' . _DB_PREFIX_ . 'orders` o, `' . _DB_PREFIX_ . 'cart_product` cp, `' . _DB_PREFIX_ . 'custom_shop_customized_prod` cscp
                WHERE cp.`id_cart` = o.`id_cart`
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

    public static function nameExists($sName) {
        return (bool) Db::getInstance()->getValue('
		SELECT `id`
		FROM `' . _DB_PREFIX_ . 'custom_shop`
		WHERE `name` = \'' . pSQL($sName) . '\'');
    }

}
