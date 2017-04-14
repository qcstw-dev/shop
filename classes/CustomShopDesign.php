<?php

class CustomShopDesignCore extends ObjectModel {

    public $id;
    public $price;
    public $picture;
    public $name;
    public $id_shop;
    public static $definition = array(
        'table' => 'custom_shop_design',
        'primary' => 'id'
    );

    public function __construct($id = null, $option = []) {
        parent::__construct($id);
        if ($id) {
            $option = self::getDesignById($id);
        }
        if ($option) {
            foreach ($option as $key => $field) {
                $this->{$key} = $field;
            }
        }
    }

    public static function getPrice($iId) {
        return Db::getInstance()->getValue('
		SELECT `price`
		FROM `' . _DB_PREFIX_ . self::$definition['table'] . '`
		WHERE `id` = ' . pSQL($iId));
    }

    public static function getDesignById($iId) {
        return Db::getInstance()->getRow('
		SELECT *
		FROM `' . _DB_PREFIX_ . self::$definition['table'] . '`
                WHERE `id` = ' . pSQL($iId));
    }

    public static function getPicturesByShopId($iId) {
        return Db::getInstance()->executeS('
		SELECT *
		FROM `' . _DB_PREFIX_ . self::$definition['table'] . '`
		WHERE `deleted` = 0
		AND `id_shop` = ' . pSQL($iId));
    }

    public function setName($sName) {
        $this->name = $sName;
        return $this;
    }

    public function setPicture($sPicture) {
        $this->picture = $sPicture;
        return $this;
    }

    public function setPrice($iPrice) {
        $this->price = $iPrice;
        return $this;
    }

    public function delete() {
        $aCreations = CustomShopProduct::getProductsByDesign($this->id);
        foreach ($aCreations as $aCreation) {
            $oCreation = new CustomShopProduct($aCreation['id']);
            $oCreation->delete();
        }
//        $this->deletePicture();
//        return Db::getInstance()->delete(self::$definition['table'], 'id = ' . pSQL($this->id));
        return Db::getInstance()->update(self::$definition['table'], ['deleted' => 1], 'id = ' . pSQL($this->id));
    }

    public function deletePicture() {
        $sFolder = 'img/custom_shop/picture/';
        unlink($sFolder . $this->picture);
    }

    public function save() {
        $aData = [
            'price' => pSQL($this->price),
            'picture' => pSQL($this->picture),
            'name' => pSQL($this->name),
            'id_shop' => pSQL($this->id_shop)
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

}
