<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of DesignController
 *
 * @author QCS18
 */
class DesignController extends FrontController {
    
    public function init() {
        parent::init();

        $this->display_column_left = false;
        $this->display_column_right = false;
    }
    
    public function initContent() {
        parent::initContent();
        $this->context->smarty->assign(array(
            
        ));
        
        $this->setTemplate(_PS_THEME_DIR_ . 'design-choice.tpl');
    }
}
