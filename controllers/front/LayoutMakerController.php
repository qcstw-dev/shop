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
        $this->context->controller->addJS(_THEME_JS_DIR_ . 'fileupload/jquery.ui.widget.js', 'all');
        $this->context->controller->addJS(_THEME_JS_DIR_ . 'fileupload/canvas-to-blob.min.js', 'all');
        $this->context->controller->addJS(_THEME_JS_DIR_ . 'fileupload/load-image.all.min.js', 'all');
        $this->context->controller->addJS(_THEME_JS_DIR_ . 'fileupload/jquery.fileupload.js', 'all');
        $this->context->controller->addJS(_THEME_JS_DIR_ . 'fileupload/jquery.fileupload-process.js', 'all');
        $this->context->controller->addJS(_THEME_JS_DIR_ . 'fileupload/jquery.fileupload-image.js', 'all');
        $this->context->controller->addJS(_THEME_JS_DIR_ . 'fileupload/jquery.iframe-transport.js', 'all');
        $this->context->controller->addJS(_THEME_JS_DIR_ . 'fileupload/custom.js', 'all');
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

        $selection = ($this->context->cookie->selection ? explode(',', $this->context->cookie->selection) : []);

        $this->context->smarty->assign(array(
            'selection' => $selection
        ));
    }
}
