<?php

class CustomShopHomeControllerCore extends CustomShopControllerCore
{
    /**
     * Assign template vars related to page content
     * @see FrontController::initContent()
     */
    
    public function initContent() {
        parent::initContent();
        $this->context->smarty->assign(array(
            'shop_name' => Tools::getValue('shop_name')
        ));
        $this->setTemplate(_PS_THEME_DIR_.'custom_shop.tpl');
    }
}
