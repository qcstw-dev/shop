<?php

class AjaxControllerCore extends FrontController
{
    public function displayAjaxAddToSelection() {
        // add or remove from selection
        $result = [];
        $result['success'] = true;
        if (isset($_POST['id_product']) && $_POST['id_product']) {
            $context = Context::getContext();
            if ($context->cookie->selection) {
                if (strpos($context->cookie->selection, $_POST['id_product']) !== false) {
                    // remove product from selection
                    $aProductArray = explode(',', $context->cookie->selection);
                    if(($key = array_search($_POST['id_product'], $aProductArray)) !== false) {
                        unset($aProductArray[$key]);
                    }
                    $context->cookie->__set('selection', implode(',', $aProductArray));
                    $result['type'] = 'remove';
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
    
    public function displayAjaxLayoutMakerSelect() {
        $result = [];
        $result['success'] = true;
        if (isset($_POST['id_product'], $_POST['id_design']) && $_POST['id_product'] && $_POST['id_design']) {
            $oProduct = new Product($_POST['id_product'], true, $this->context->language->id);
            $oDesign = new Product($_POST['id_design'], true, $this->context->language->id);
            $aDesignImages = $oDesign->getImages($this->context->language->id);
            foreach ($aDesignImages as $aDesignImage) {
                if ($aDesignImage['legend'] === $oProduct->reference) {
                    $sFinalPicture = $this->context->link->getImageLink($oDesign->link_rewrite, $aDesignImage['id_image'], 'layout');
                }
            }
            if (isset($sFinalPicture)) {
                $result['url'] = $sFinalPicture;
                foreach ($oProduct->getImages($this->context->language->id) as $aProductImage){
                    if ($aProductImage['legend'] && preg_match('/^[0-9]+$/', $aProductImage['legend'])) {
                        $result['colors'][] = $this->context->link->getImageLink($oProduct->link_rewrite, $aProductImage['id_image'], 'layout');
                    }
                }
            } else {
                $result['success'] = false;
                $result['error'] = 'Combination not available';
            }
            
        } else {
            $result['success'] = false;
            $result['error'] = 'Product or design missing';
        }
        echo json_encode($result);
    }
}