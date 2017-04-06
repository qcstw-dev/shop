<?php

class CustomShopAccountCore extends ObjectModel {

    public $id;
    public $email;
    public $passwd;
    public $registration_date;
    public $firstname;
    public $lastname;
    public $company;
    public $address;
    public $zip;
    public $city;
    public $country;
    public $phone;
    public $newsletter;
    public $account_holder;
    public $account_number;
    public $bank_name;
    public $bank_address;
    public $swift;
    public $paypal_email;
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
        $context->cookie->__set('custom_shop_loggedin', $this->id);
    }

    public function save() {
        $aData = [
            'email' => pSQL($this->email),
            'passwd' => pSQL($this->passwd),
            'registration_date' => pSQL($this->registration_date),
            'firstname' => pSQL($this->firstname),
            'lastname' => pSQL($this->lastname),
            'company' => pSQL($this->company),
            'address' => pSQL($this->address),
            'zip' => pSQL($this->zip),
            'city' => pSQL($this->city),
            'country' => pSQL($this->country),
            'phone' => pSQL($this->phone),
            'newsletter' => pSQL($this->newsletter),
            'account_holder' => pSQL($this->account_holder),
            'account_number' => pSQL($this->account_number),
            'bank_name' => pSQL($this->bank_name),
            'bank_address' => pSQL($this->bank_address),
            'swift' => pSQL($this->swift),
            'paypal_email' => pSQL($this->paypal_email),
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

    public function getShop() {
        $sShopName = Db::getInstance()->getValue('
		SELECT name
		FROM `' . _DB_PREFIX_ . 'custom_shop`
		WHERE `id_account` = ' . pSQL($this->id));
        return CustomShop::getShopByName($sShopName);
    }

    public static function getAllAccounts() {
        return Db::getInstance()->getRow('
		SELECT *
		FROM `' . _DB_PREFIX_ . 'custom_shop_account`');
    }
    public static function getAccountByShopId($iShopId) {
        return Db::getInstance()->getRow('
		SELECT *
		FROM `' . _DB_PREFIX_ . 'custom_shop_account` a, `' . _DB_PREFIX_ . 'custom_shop` s
                    WHERE s.`id_account` = a.`id`
		AND s.`id` = ' . pSQL($iShopId));
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

    public static function isOwner ($iAccountId, $iShopId) {
        return Db::getInstance()->getValue('
		SELECT `id`
		FROM `' . _DB_PREFIX_ . 'custom_shop`
                    WHERE `id` = \'' . pSQL($iShopId) . '\'
		AND `id_account` = \'' . pSQL($iAccountId) . '\'');
    }
}
