<?php

class CustomShopAccountCore extends ObjectModel {

    public $id;
    public $email;
    public $passwd;
    public $registration_date;
    public static $definition = array(
        'table' => 'custom_shop_account',
        'primary' => 'id'
    );

    public function __construct($id = null, $option = []) {
        parent::__construct($id);
        if ($id) {
            $option = self::getAccountById($id);
        }
        if ($option) {
            foreach ($option as $key => $field) {
                $this->{$key} = $field;
            }
        }
    }

    public function login() {
        $context = Context::getContext();
        $context->cookie->__set('custom_shop_loggedin', true);
    }

    public function save() {
        if (!Db::getInstance()->insert('custom_shop_account', [
                    'email' => $this->email,
                    'passwd' => $this->passwd,
                    'registration_date' => $this->registration_date
                ])) {
            return false;
        } else {
            $this->id = Db::getInstance()->Insert_ID();
            return true;
        }
    }

    public function getShop() {
        $sShopName = Db::getInstance()->getValue('
		SELECT name
		FROM `' . _DB_PREFIX_ . 'custom_shop`
		WHERE `id_account` = ' . pSQL($this->id));
        return CustomShop::getShopByName($sShopName);
    }

    public static function getAccountById($iId) {
        return Db::getInstance()->getRow('
		SELECT *
		FROM `' . _DB_PREFIX_ . 'custom_shop_account`
		WHERE `id` = ' . pSQL($iId));
    }

    public static function getAccountByEmail($sEmail) {
        return new CustomShopAccount(Db::getInstance()->getValue('
		SELECT id
		FROM `' . _DB_PREFIX_ . 'custom_shop_account`
		WHERE `email` = \'' . pSQL($sEmail) . '\''));
    }

    public static function checkPassword($sEmail, $sPasswd) {
        return (bool) Db::getInstance()->getValue('
		SELECT `id`
		FROM `' . _DB_PREFIX_ . 'custom_shop_account`
		WHERE `email` = \'' . pSQL($sEmail) . '\'
                AND `passwd` = \'' . pSQL($sPasswd) . '\'');
    }

    public static function emailExists($sEmail) {
        return (bool) Db::getInstance()->getValue('
		SELECT `id`
		FROM `' . _DB_PREFIX_ . 'custom_shop_account`
		WHERE `email` = \'' . pSQL($sEmail) . '\'');
    }

}
