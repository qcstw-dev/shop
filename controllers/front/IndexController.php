<?php
/*
* 2007-2016 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Open Software License (OSL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/osl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2016 PrestaShop SA
*  @license    http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*/

class IndexControllerCore extends FrontController
{
    public $php_self = 'index';

    /**
     * Assign template vars related to page content
     * @see FrontController::initContent()
     */
    public function initContent()
    {
        parent::initContent();
        $this->addJS(_THEME_JS_DIR_.'index.js');
        
        $oDesignCategory = new Category('46', $this->context->language->id);
        $oProductCategory = new Category('45', $this->context->language->id);
        
        $aDesigns = $oDesignCategory->getProducts($this->context->language->id, 0, 10, 'date_add', 'DESC', null, null, null, null, null, null, true);
        $aProducts = $oProductCategory->getProducts($this->context->language->id, 0, 10, 'date_add', 'DESC');
        
        $aCreations = Order::getLastCreations(10);
        $aCreationsUrl = []; 
        foreach ($aCreations as $aCreation) {
            $aCreationsUrl[] = 'img/layout_maker/custom_pictures/'.$aCreation['custom_picture'].'.png';
        }
        
        $this->context->smarty->assign(array('HOOK_HOME' => Hook::exec('displayHome'),
            'HOOK_HOME_TAB'         => Hook::exec('displayHomeTab'),
            'HOOK_HOME_TAB_CONTENT' => Hook::exec('displayHomeTabContent'),
            'aProducts'             => $aProducts,
            'aDesigns'              => $aDesigns,
            'aCreations'            => $aCreations,
            'aCreationsUrl'         => $aCreationsUrl,
            'link'                  => $this->context->link
        ));
        $this->setTemplate(_PS_THEME_DIR_.'index.tpl');
    }
    public function setMedia() {
        parent::setMedia();
        $this->context->controller->addCSS(_THEME_CSS_DIR_ . 'slick/slick.css', 'all');
        $this->context->controller->addCSS(_THEME_CSS_DIR_ . 'slick/slick-theme.css', 'all'); 
        $this->context->controller->addJS(_THEME_JS_DIR_ . 'slick/slick.min.js', 'all');
        $this->context->controller->addJS(_THEME_JS_DIR_ . 'slick/custom.js', 'all');
    }
}
