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

class CustomShopPdfBillControllerCore extends FrontController {

    public $php_self = 'pdf-custom-shop-bill';
    protected $display_header = false;
    protected $display_footer = false;
    public $content_only = true;
    protected $template;
    public $filename;
    public $bill;

    public function postProcess() {
        $oBillInfo = new CustomShopBillingHistory((int)Tools::getValue('id_bill'));
        $oBillInfo->customer = CustomShopAccount::getAccountByShopId($oBillInfo->id_shop);
        $oBillInfo->customer['country_name'] = Country::getNameById($this->context->language->id, $oBillInfo->customer['country']);
        $this->bill = $oBillInfo;
    }

    public function display() {
        $pdf = new PDF($this->bill, PDF::TEMPLATE_CUSTOM_SHOP_INVOICE, $this->context->smarty);
        $pdf->render();
    }

}
