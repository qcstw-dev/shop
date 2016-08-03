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
                } else {
                    // add product from selection
                     $aProductArray = explode(',', $context->cookie->selection);
                    $aProductArray[] = $_POST['id_product'];
                    $context->cookie->__set('selection', implode(',', $aProductArray));
                }
            } else {
                $context->cookie->__set('selection', $_POST['id_product']);
            }
        } else {
            $result['success'] = false;
        }
        echo json_encode($result);
    }
//    public function displayAjaxAddToSelection() {
//        // add or remove from selection
//        $result = [];
//        $result['success'] = true;
//        if (isset($_POST['id_product']) && $_POST['id_product']) {
//            if (isset($_SESSION['selection'])) {
//                if (in_array($_POST['id_product'], $_SESSION['selection'])) {
//                    // remove product from selection
//                    unset($_SESSION['selection'][$_POST['id_product']]);
//                } else {
//                    // add product from selection
//                    $_SESSION['selection'][] = $_POST['id_product'];
//                }
//            } else {
//                $_SESSION['selection'][] = $_POST['id_product']; 
//            }
//        } else {
//            $result['success'] = false;
//        }
//        echo json_encode($result);
//    }
}