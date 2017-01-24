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
		FROM `' . _DB_PREFIX_ . 'custom_shop_design`
		WHERE `id` = ' . pSQL($iId));
    }

    public function save() {
        if (!Db::getInstance()->insert('custom_shop_design', [
                    'price' => $this->price,
                    'picture' => $this->picture,
                    'name' => $this->name,
                    'id_shop' => $this->id_shop,
                ])) {
            return false;
        } else {
            $this->id = Db::getInstance()->Insert_ID();
            return true;
        }
    }
}
