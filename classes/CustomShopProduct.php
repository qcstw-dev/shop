<?php

class CustomShopProductCore extends ObjectModel {

    public $id;
    public $id_product;
    public $id_design;
    public $custom_img;
    public $product_name;
    public $published;
    public $id_shop;
    public static $definition = array(
        'table' => 'custom_shop_customized_prod',
        'primary' => 'id'
    );

    public function __construct($id = null, $option = []) {
        parent::__construct($id);
        if ($id) {
            $option = self::getProductById($id);
        }
        if ($option) {
            foreach ($option as $key => $field) {
                $this->{$key} = $field;
            }
        }
    }

    public function setPublished($iStatus) {
        $this->published = $iStatus;
        return $this;
    }

    public function setProductName($sProductName) {
        $this->product_name = $sProductName;
        return $this;
    }

    public function setCustomImg($sCustomImg) {
        $this->custom_img = $sCustomImg;
        return $this;
    }

    public function saveCreationPicture($sPicturePath) {
        $sImgPath = $sPicturePath;
        $sImgPath = str_replace('data:image/png;base64,', '', $sImgPath);
        $sImgPath = str_replace(' ', '+', $sImgPath);
        $sData = base64_decode($sImgPath);

        $sId = time() . '_' . $this->id_design . '_' . $this->id_product;

        $sName = $sId . '.png';
        $sFolder = 'img/custom_shop/creation';

        $sImgFinalPath = $sFolder . '/' . $sName;

        if (file_put_contents($sImgFinalPath, $sData)) {
            $this->setCustomImg($sName);
        }
        return $sImgFinalPath;
    }

    public static function getProductById($iId) {
        return Db::getInstance()->getRow('
		SELECT *
		FROM `' . _DB_PREFIX_ . self::$definition['table'] . '`
		WHERE `id` = ' . pSQL($iId));
    }

    public static function getProductsByDesign($iDesignId) {
        return Db::getInstance()->executeS('
		SELECT *
		FROM `' . _DB_PREFIX_ . self::$definition['table'] . '`
		WHERE `id_design` = ' . pSQL($iDesignId));
    }

    public static function getProducts($iShopId, $bOnlyPublished = true) {
        return Db::getInstance()->executeS('
		SELECT *
		FROM `' . _DB_PREFIX_ . self::$definition['table'] . '`
		WHERE `id_shop` = ' . pSQL($iShopId)
                        . ($bOnlyPublished ? ' AND `published` = 1' : ''));
    }

    public function delete() {
        $this->deleteCustomImage();
        return Db::getInstance()->delete(self::$definition['table'], 'id = ' . pSQL($this->id));
    }

    public function deleteCustomImage() {
        $sFolder = 'img/custom_shop/creation/';
        unlink($sFolder . $this->custom_img);
    }

    public function save() {
        $aData = [
            'id_product' => pSQL($this->id_product),
            'id_design' => pSQL($this->id_design),
            'custom_img' => pSQL($this->custom_img),
            'product_name' => pSQL($this->product_name),
            'published' => pSQL($this->published),
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
