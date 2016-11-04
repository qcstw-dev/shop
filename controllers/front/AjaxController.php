<?php

class AjaxControllerCore extends FrontController {

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
                }
            } else {
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
                $result['image_name'] = $sId;
            } else {
                $result['success'] = false;
            }
        }
//        if (isset($_POST['image_url'])) {
//            $sImgPath = $_POST['image_url'];
//            $sImgPath = str_replace('data:image/png;base64,', '', $sImgPath);
//            $sImgPath = str_replace(' ', '+', $sImgPath);
//            $sData = base64_decode($sImgPath);
//
//            $sId = time() . '_' . rand(1, 100);
//
//            $sName = $sId . '.png';
//            $sFolder = 'img/layout_maker/temp';
//
//            $sImgFinalPath = $sFolder . '/' . $sName;
//            if (file_put_contents($sImgFinalPath, $sData)) {
//                $context = Context::getContext();
//                $aImagesArray = [];
//                if ($context->cookie->custom_images) {
//                    $aImagesArray = explode(',', $context->cookie->custom_images);
//                }
//                $aImagesArray[] = $sId;
//                $context->cookie->__set('custom_images', implode(',', $aImagesArray));
//                $result['image_name'] = $sId;
//            } else {
//                $result['success'] = false;
//            }
//        } else {
//            $result['success'] = false;
//        }
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

    // version pre-made design on products
//    public function displayAjaxLayoutMakerSelect() {
//        $result = [];
//        $result['success'] = true;
//        if (isset($_POST['id_product'], $_POST['id_design']) && $_POST['id_product'] && $_POST['id_design']) {
//            $oProduct = new Product($_POST['id_product'], true, $this->context->language->id);
//            if ($_POST['id_design'] != 'custom') {
//                $oDesign = new Product($_POST['id_design'], true, $this->context->language->id);
//                $aDesignImages = $oDesign->getImages($this->context->language->id);
//                foreach ($aDesignImages as $aDesignImage) {
//                    if ($aDesignImage['legend'] === $oProduct->reference) {
//                        $sFinalPicture = $this->context->link->getImageLink($oDesign->link_rewrite, $aDesignImage['id_image'], 'layout');
//                    }
//                }
//                if (isset($sFinalPicture)) {
//                    $result['url'] = $sFinalPicture;
//                } else {
//                    $result['success'] = false;
//                    $result['error'] = 'Combination not available';
//                }
//            } else {
//                $result['custom'] = true;
//            }
//            foreach ($oProduct->getImages($this->context->language->id) as $aProductImage){
//                if ($aProductImage['legend'] && (preg_match('/^[0-9]+$/', $aProductImage['legend']) || $aProductImage['legend'] === 'blank')) {
//                    $result['colors'][] = $this->context->link->getImageLink($oProduct->link_rewrite, $aProductImage['id_image'], 'layout');
//                }
//            }
//            $aFeatures = $oProduct->getFrontFeatures($this->context->language->id);
//            $aFeaturesByKey = [];
//            foreach ($aFeatures as $key=>$aFeature) {
//                $aFeaturesByKey[$aFeature['id_feature']]['name'] = $aFeature['name'];
//                $aFeaturesByKey[$aFeature['id_feature']]['value'] = $aFeature['value'];
//            }
//            $result['item_size'] = isset($aFeaturesByKey['8']['value']) ? $aFeaturesByKey['8']['value'] : '';
//            $result['design_size'] = isset($aFeaturesByKey['9']['value']) ? $aFeaturesByKey['9']['value'] : '';
//        } else {
//            $result['success'] = false;
//            $result['error'] = 'Product or design missing';
//        }
//        echo json_encode($result);
//    }
}
