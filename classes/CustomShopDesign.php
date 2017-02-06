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
		WHERE `id_shop` = ' . pSQL($iId));
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
        return Db::getInstance()->delete(self::$definition['table'], 'id = ' . pSQL($this->id));
    }
    public function save() {
        if ($this->id) {
            return Db::getInstance()->update(self::$definition['table'], [
                        'price' => pSQL($this->price),
                        'picture' => pSQL($this->picture),
                        'name' => pSQL($this->name),
                        'id_shop' => pSQL($this->id_shop)], 'id = ' . pSQL($this->id));
        } else {
            if (!Db::getInstance()->insert(self::$definition['table'], [
                        'price' => pSQL($this->price),
                        'picture' => pSQL($this->picture),
                        'name' => pSQL($this->name),
                        'id_shop' => pSQL($this->id_shop),
                    ])) {
                return false;
            } else {
                $this->id = Db::getInstance()->Insert_ID();
                return true;
            }
        }
    }

}
