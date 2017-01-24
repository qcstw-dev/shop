<?php

class CustomShopCore extends ObjectModel {

    public $id;
    public $name;
    public $title;
    public $motto;
    public $logo;
    public $header;
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

    public static function getShopById($iId) {
        return Db::getInstance()->getRow('
		SELECT *
		FROM `' . _DB_PREFIX_ . 'custom_shop`
		WHERE `id` = ' . pSQL($iId));
    }

    public static function getShopByName($sName) {
        return new CustomShop(Db::getInstance()->getValue('
		SELECT id
		FROM `' . _DB_PREFIX_ . 'custom_shop`
		WHERE `name` = \'' . pSQL($sName) . '\''));
    }

    public function save() {
        if (!Db::getInstance()->insert('custom_shop', [
                    'name' => $this->name,
                    'id_account' => $this->id_account
                ])) {
            return false;
        } else {
            $this->id = Db::getInstance()->Insert_ID();
            return true;
        }
    }

    public static function nameExists($sName) {
        return (bool) Db::getInstance()->getValue('
		SELECT `id`
		FROM `' . _DB_PREFIX_ . 'custom_shop`
		WHERE `name` = \'' . pSQL($sName) . '\'');
    }

}
