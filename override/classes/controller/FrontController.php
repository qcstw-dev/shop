<?php

class FrontController extends FrontControllerCore {
    public function initHeader()
    {
        self::$smarty->assign('currentController', get_class($this));
        return parent::initHeader();
    }
    public function initContent() {
        parent::initContent();
        $aSelectedItems = ($this->context->cookie->selection ? explode(',', $this->context->cookie->selection) : []);
        $aCustomDesigns = ($this->context->cookie->custom_images ? explode(',', $this->context->cookie->custom_images) : []);
        $aSelectedDesigns = [];
        $aSelectedProducts = [];
        $preselected_product = (isset($_GET['product']) && $_GET['product'] ? $_GET['product'] : null);
        $preselected_design = (isset($_GET['design']) && $_GET['design'] ? $_GET['design'] : null);
        
        if ($preselected_product && $preselected_design) {
            if (!in_array($preselected_product, $aSelectedItems)) {
                $aSelectedItems[] = $preselected_product;  
            }
            if (!in_array($preselected_design, $aSelectedItems)) {
                $aSelectedItems[] = $preselected_design;
            }
        }
        
        if ($aSelectedItems) {
            foreach ($aSelectedItems as $sSelectedItemId) {
                $oItem = new Product($sSelectedItemId, true, $this->context->language->id);
                $oItem->image = Product::getCover($oItem->id);
                if(in_array('45', $oItem->getCategories())){
                    // it's a product
                    $aSelectedProducts[] = $oItem;
                } else {
                    // it's a design
                    $aSelectedDesigns[] = $oItem;
                }
            }
        }
        $bBlinking = false;
        if ($aSelectedProducts && $this->context->cookie->blinking != 'false') {
            $bBlinking = true;
        }
        
        $this->context->smarty->assign(array(
            'selection'             => $aSelectedItems,
            'aCustomDesigns'        => $aCustomDesigns,
            'aSelectedDesigns'      => $aSelectedDesigns,
            'aSelectedProducts'     => $aSelectedProducts,
            'bBlinking'             => $bBlinking,
            'preselected_product'   => $preselected_product,
            'preselected_design'    => $preselected_design,
        ));
    }
    public function init() {
        
        parent::init();
        
        $useSSL = ((isset($this->ssl) && $this->ssl && Configuration::get('PS_SSL_ENABLED')) || Tools::usingSecureMode()) ? true : false;
        $protocol_content = ($useSSL) ? 'https://' : 'http://';
        $base_uri = $protocol_content.Tools::getHttpHost().__PS_BASE_URI__.(!Configuration::get('PS_REWRITING_SETTINGS') ? 'index.php' : '');
        $this->context->smarty->assign(array(
            'custom_picture_path' => 'img/layout_maker/custom_pictures/',
            'temp_custom_picture_path' => 'img/layout_maker/temp/',
            'original_picture_path'=> 'img/layout_maker/original_picture/',
            'custom_picture_uri'    => $base_uri.'img/layout_maker/custom_pictures/',
            'original_picture_uri'=> $base_uri.'img/layout_maker/original_picture/'));
    }
    public function setMedia() {
        parent::setMedia(); // JS and CSS files
        $this->context->controller->addJS(_THEME_JS_DIR_ . 'jquery-ui.min.js', 'all');
        $this->context->controller->addJS(_THEME_JS_DIR_ . 'fileupload/jquery.ui.widget.js', 'all');
        $this->context->controller->addJS(_THEME_JS_DIR_ . 'fileupload/canvas-to-blob.min.js', 'all');
        $this->context->controller->addJS(_THEME_JS_DIR_ . 'fileupload/load-image.all.min.js', 'all');
        $this->context->controller->addJS(_THEME_JS_DIR_ . 'fileupload/jquery.fileupload.js', 'all');
        $this->context->controller->addJS(_THEME_JS_DIR_ . 'fileupload/jquery.fileupload-process.js', 'all');
        $this->context->controller->addJS(_THEME_JS_DIR_ . 'fileupload/jquery.fileupload-image.js', 'all');
        $this->context->controller->addJS(_THEME_JS_DIR_ . 'fileupload/jquery.iframe-transport.js', 'all');
        $this->context->controller->addJS(_THEME_JS_DIR_ . 'fileupload/custom.js', 'all');
        $this->context->controller->addJS(_THEME_JS_DIR_ . '/selection.js', 'all');
    }
}