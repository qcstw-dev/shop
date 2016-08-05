<?php

class LayoutMakerControllerCore extends FrontController
{
    
    public function init(){
      parent::init();
    }
    
    /**
     * Initializes page content variables
     */
    public function initContent()
    {
        parent::initContent();

        $this->setTemplate(_PS_THEME_DIR_.'layout-maker.tpl');

        $selection = ($this->context->cookie->selection ? explode(',', $this->context->cookie->selection) : []);
        
        $this->context->smarty->assign(array(
            'selection'            => $selection
        ));
    }
}