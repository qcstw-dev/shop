<?php

class CustomShopCore extends ObjectModel {

    public $id;
    public $name;
    public $title;
    public $motto;
    public $description;
    public $logo;
    public $header;
    public $facebook;
    public $twitter;
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
            'facebook' => pSQL($this->facebook),
            'twitter' => pSQL($this->twitter),
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
