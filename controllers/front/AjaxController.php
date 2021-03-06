<?php

class AjaxControllerCore extends FrontController {

    public function displayAjaxSearchCreations() {
        $aCriteria = [];
        if (Tools::getValue('design_cat')) {
            $aCriteria['id_cat_design'] = Tools::getValue('design_cat');
        }
        if (Tools::getValue('product_cat')) {
            $aCriteria['id_cat_prod'] = Tools::getValue('product_cat');
        }
        $aCriteria['order'] = 'random';
        
        $aResult = CustomShopProduct::getCreations($aCriteria, 40, Tools::getValue('exceptions'));
        
        $aCartProducts = $this->context->cart->getProducts(true, null, null, true);
        
        $aCartCreationsId = [];
        foreach ($aCartProducts as $aCartProduct) {
            $aCartCreationsId[] = $aCartProduct['id_customized_prod'];
        }
        
        $this->context->smarty->assign(array(
            'products' => $aResult['products'],
            'loadmore' => Tools::getValue('loadmore'),
            'count' => $aResult['count'],
            'total_count' => $aResult['total_count'],
            'cart_creations_id' => $aCartCreationsId,
        ));
        $this->setTemplate(_PS_THEME_DIR_ . 'market-place-creations-list.tpl');
        $sHtml = rtrim($this->display(), "1");
        echo $sHtml;
    }
    
    public function displayAjaxGetShippingCostByCountry() {
        $oCountry = new Country(Tools::getValue('id_country'));
        $oCarrier = new Carrier(Carrier::getCarriers($this->context->language->id, true, false)[0]['id_carrier']);
        $fShippingPrice = $oCarrier->getDeliveryPriceByWeight($this->context->cart->getTotalWeight(), Country::getIdZone($oCountry->id));
        $fTotalCart = $this->context->cart->getOrderTotal($this->context->cart->id);
        $fTotalCartWithShipping = $fShippingPrice + $fTotalCart;
        $aTablePrices = [
            'shipping' => Tools::displayPrice(Tools::convertPrice($fShippingPrice, $this->context->currency)),
            'total_cart' => Tools::displayPrice(Tools::convertPrice($fTotalCartWithShipping, $this->context->currency))
        ];
        echo json_encode($aTablePrices);
    }

    public function displayAjaxProductList() {
        $iLastRange = Tools::getValue('last_range') ? Tools::getValue('last_range') : 0;

        if (Tools::getValue('nb_products') && Tools::getValue('nb_products')) {
            $iNbProducts = Tools::getValue('nb_products');
        } else {
            $iNbProducts = 6;
        }

        $aProducts = Product::getProducts($this->context->language->id, $iLastRange, $iNbProducts, 'date_add', 'DESC', '45', true, $this->context, true);
        
        $this->context->smarty->assign(array(
            'products' => $aProducts,
            'first_item_id' => $iLastRange + 1
        ));
        $this->setTemplate(_PS_THEME_DIR_ . 'mobile-product-list.tpl');
        $sHtml = rtrim($this->display(), "1");
        echo $sHtml;
    }

    public function displayAjaxAddToSelection() {
        // add or remove from selection
        $result = [];
        $result['success'] = true;
        if (isset($_POST['id_product']) && $_POST['id_product']) {
            $context = Context::getContext();
            if ($context->cookie->selection) {
                $aProductArray = explode(',', $context->cookie->selection);
                if (in_array($_POST['id_product'], $aProductArray) !== false) {
                    // remove product from selection
                    if (($key = array_search($_POST['id_product'], $aProductArray)) !== false) {
                        unset($aProductArray[$key]);
                        $result['type'] = 'remove';
                        $context->cookie->__set('selection', implode(',', $aProductArray));
                    }
                } else {
                    // add product from selection
                    $aProductArray = explode(',', $context->cookie->selection);
                    $aProductArray[] = $_POST['id_product'];
                    $context->cookie->__set('selection', implode(',', $aProductArray));
                    $result['type'] = 'add';
                    
                    $aData = [
                        'id_guest' => $this->context->customer->id_guest,
                        'id_'.$_POST['type'] => $_POST['id_product'],
                        'date' => date('Y-m-d'),
                    ];
                    Db::getInstance()->insert('tracking_selection', $aData);
                }
            } else {
                $aData = [
                    'id_guest' => $this->context->customer->id_guest,
                    'id_'.$_POST['type'] => $_POST['id_product'],
                    'date' => date('Y-m-d'),
                ];
                Db::getInstance()->insert('tracking_selection', $aData);
                
                $context->cookie->__set('selection', $_POST['id_product']);
            }
        } else {
            $result['success'] = false;
        }
        echo json_encode($result);
    }

    public function displayAjaxDeleteStoredCustomImage() {
        $sFileName = $_POST['file_name'];
        $result = [];
        $result['success'] = true;
        $context = Context::getContext();
        $aImagesArray = [];
        if ($context->cookie->custom_images) {
            $aImagesArray = explode(',', $context->cookie->custom_images);
        }
        if (($key = array_search($sFileName, $aImagesArray)) !== false) {
            $sPathToCustomImage = _PS_IMG_DIR_ . 'layout_maker/temp/' . $sFileName . '.png';
            if (file_exists($sPathToCustomImage)) {
                unlink($sPathToCustomImage);
            }
            unset($aImagesArray[$key]);
            $context->cookie->__set('custom_images', implode(',', $aImagesArray));
        } else {
            $result['success'] = false;
        }
        echo json_encode($result);
    }

    public function displayAjaxStoreCustomImage() {
        $result = [];
        $result['success'] = true;

        foreach ($_FILES as $file) {
            $sId = time() . '_' . rand(1, 100);
            $sName = $sId . '.png';
            $sFolder = 'img/layout_maker/temp/';
            if (move_uploaded_file($file['tmp_name'], $sFolder . basename($sName))) {
                $context = Context::getContext();
                $aImagesArray = [];
                if ($context->cookie->custom_images) {
                    $aImagesArray = explode(',', $context->cookie->custom_images);
                }
                $aImagesArray[] = $sId;
                $context->cookie->__set('custom_images', implode(',', $aImagesArray));
                $context->cookie->setExpire(time() + 4 * 60 * 60 * 1000);
                $result['image_name'] = $sId;
                
                 $aData = [
                    'id_guest' => $this->context->customer->id_guest,
                    'uploaded_design' => $sId,
                    'date' => date('Y-m-d'),
                ];
                Db::getInstance()->insert('tracking_selection', $aData);
                
            } else {
                $result['success'] = false;
            }
        }
        echo json_encode($result);
    }

    public function displayAjaxStoreCustomImageMobile() {
        $result = [];
        $result['success'] = true;

        foreach ($_FILES as $file) {
            $sId = time() . '_' . rand(1, 100);
            $sName = $sId . '.png';
            $sFolder = 'img/layout_maker/temp/';
            if (move_uploaded_file($file['tmp_name'], $sFolder . basename($sName))) {
                $context = Context::getContext();
                if ($context->cookie->custom_image_mobile) {
                    unlink($sFolder . $context->cookie->custom_image_mobile . '.png');
                }
                $context->cookie->__set('custom_image_mobile', $sId);
                $context->cookie->setExpire(time() + 4 * 60 * 60 * 1000);
                $result['image_name'] = $sId;
                
                $aData = [
                    'id_guest' => $this->context->customer->id_guest,
                    'uploaded_design' => $sId,
                    'date' => date('Y-m-d'),
                ];
                Db::getInstance()->insert('tracking_selection', $aData);
                
            } else {
                $result['success'] = false;
            }
        }
        echo json_encode($result);
    }

    public function displayAjaxLayoutMakerSelect() {
        $result = [];
        $result['success'] = true;
        if ((isset($_POST['id_product']) && $_POST['id_product']) || (isset($_POST['id_design']) && $_POST['id_design'])) {
            if (isset($_POST['id_design']) && $_POST['id_design'] && $_POST['id_design'] != 'custom') {
                $oDesign = new Product($_POST['id_design'], true, $this->context->language->id);
                $aDesignImage = $oDesign->getImages($this->context->language->id)[0];
                $sFinalPicture = $this->context->link->getImageLink($oDesign->link_rewrite, $aDesignImage['id_image'], 'layout');
                if (isset($sFinalPicture)) {
                    $result['url'] = $sFinalPicture;
                } else {
                    $result['success'] = false;
                    $result['error'] = 'Combination not available';
                }
            }
            if (isset($_POST['id_design']) && $_POST['id_design'] && $_POST['id_design'] === 'custom') {
                $result['custom'] = true;
            }
            if (isset($_POST['id_product']) && $_POST['id_product']) {
                $oProduct = new Product($_POST['id_product'], true, $this->context->language->id);
                foreach ($oProduct->getImages($this->context->language->id) as $aProductImage) {
                    if ($aProductImage['legend'] && (preg_match('/^[0-9]+$/', $aProductImage['legend']) || $aProductImage['legend'] === 'recess')) {
                        $result['colors'][] = [
                            'color' => $this->context->link->getImageLink($oProduct->link_rewrite, $aProductImage['id_image'], 'layout'),
                            'name' => $aProductImage['legend']
                        ];
                    }
                }
                if (!isset($result['colors'])) {
                    $result['success'] = false;
                    $result['error'] = 'Colors missing';
                }
                $aFeatures = $oProduct->getFrontFeatures($this->context->language->id);
                $aFeaturesByKey = [];
                foreach ($aFeatures as $key => $aFeature) {
                    $aFeaturesByKey[$aFeature['id_feature']]['name'] = $aFeature['name'];
                    $aFeaturesByKey[$aFeature['id_feature']]['value'] = $aFeature['value'];
                }
                $result['item_size'] = isset($aFeaturesByKey['8']['value']) ? $aFeaturesByKey['8']['value'] : '';
                $result['design_size'] = isset($aFeaturesByKey['9']['value']) ? $aFeaturesByKey['9']['value'] : '';
            }
        } else {
            $result['success'] = false;
            $result['error'] = 'Product or design missing';
        }
        echo json_encode($result);
    }
}
