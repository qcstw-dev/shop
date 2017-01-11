<?php

class CustomShopControllerCore extends FrontController
{
    /**
     * Assign template vars related to page content
     * @see FrontController::initContent()
     */
    public function initContent()
    {
        parent::initContent();
        $this->context->smarty->assign(array(
            'id_shop' => Tools::getValue('id_shop')
        ));
        $this->setTemplate(_PS_THEME_DIR_.'custom_shop.tpl');
    }
}
