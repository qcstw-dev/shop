<?php

class LayoutMakerControllerCore extends FrontController 
{
    public function init() {
        parent::init();
        $this->display_column_left = false;
        $this->display_column_right = false;
    }
    
    public function setMedia() {
        parent::setMedia(); // JS and CSS files
        $this->context->controller->addJS(_THEME_JS_DIR_ . 'jquery-ui.min.js', 'all');
//        $this->context->controller->addJS(_THEME_JS_DIR_ . 'fileupload/jquery.ui.widget.js', 'all');
//        $this->context->controller->addJS(_THEME_JS_DIR_ . 'fileupload/canvas-to-blob.min.js', 'all');
//        $this->context->controller->addJS(_THEME_JS_DIR_ . 'fileupload/load-image.all.min.js', 'all');
//        $this->context->controller->addJS(_THEME_JS_DIR_ . 'fileupload/jquery.fileupload.js', 'all');
//        $this->context->controller->addJS(_THEME_JS_DIR_ . 'fileupload/jquery.fileupload-process.js', 'all');
//        $this->context->controller->addJS(_THEME_JS_DIR_ . 'fileupload/jquery.fileupload-image.js', 'all');
//        $this->context->controller->addJS(_THEME_JS_DIR_ . 'fileupload/jquery.iframe-transport.js', 'all');
//        $this->context->controller->addJS(_THEME_JS_DIR_ . 'fileupload/custom.js', 'all');
        $this->context->controller->addJS(_THEME_JS_DIR_ . 'layout_maker/component.js', 'all');
        $this->context->controller->addJS(_THEME_JS_DIR_ . 'layout_maker/custom.js', 'all');

        $this->context->controller->addCSS(_THEME_CSS_DIR_ . 'layout_maker/component.css', 'all');
        $this->context->controller->addCSS(_THEME_CSS_DIR_ . 'layout_maker/custom.css', 'all');
        $this->context->controller->addCSS(_THEME_CSS_DIR_ . 'layout_maker/demo.css', 'all');
        $this->context->controller->addCSS(_THEME_CSS_DIR_ . 'layout_maker/jquery-ui.css', 'all');
        $this->context->controller->addCSS(_THEME_CSS_DIR_ . 'layout_maker/normalize.css', 'all');
    }

    public function initContent()
    {
        parent::initContent();
        $this->setTemplate(_PS_THEME_DIR_.'layout-maker.tpl');
        
//        $aProduct = [];
//        $aDesign = [];
//        
//        if (isset($_GET['product'], $_GET['design']) && $_GET['product'] && $_GET['design']) {
//            $oProduct = new Product($_GET['product'], true, $this->context->language->id);
//            $aProductImages = $oProduct->getImages($this->context->language->id);
//            $aProduct['id'] = $_GET['product'];
//            foreach ($aProductImages as $aProductImage) {
//                if ($aProductImage['legende'] == '')
//                $aProduct['img'] = $this->context->link->getImageLink($oProduct->link_rewrite, $_GET['product'], 'layout');
//            }
//            
//            $oDesign = new Product($_GET['design'], true, $this->context->language->id);
//            $aDesign['id'] = $_GET['design'];
//            $aDesign['img'] = $this->context->link->getImageLink($oDesign->link_rewrite, $_GET['design'], 'layout');
//        }
        
        
        /*
        $aSelection = explode(',', $this->context->cookie->selection);        
        $preselected_product = (isset($_GET['product']) && $_GET['product'] ? $_GET['product'] : null);
        $preselected_design = (isset($_GET['design']) && $_GET['design'] ? $_GET['design'] : null);
        
        if ($preselected_product && $preselected_design) {
            $aSelection[] = $preselected_product;  
            $aSelection[] = $preselected_design;
        }
        
        $selection = ($this->context->cookie->selection ? $aSelection : []);
        
        $this->context->smarty->assign(array(
            'selection' => $selection,
            'preselected_product' => $preselected_product,
            'preselected_design' => $preselected_design,
        ));
*/
    }
}
