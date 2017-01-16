<?php

class ShopControllerCore extends FrontController
{
    /**
     * Assign template vars related to page content
     * @see FrontController::initContent()
     */
    public function init() {
        parent::init();

        $this->display_column_left = false;
        $this->display_column_right = false;
    }
    public function initContent()
    {
        parent::initContent();
        $this->setTemplate(_PS_THEME_DIR_.'shop.tpl');
    }
}
