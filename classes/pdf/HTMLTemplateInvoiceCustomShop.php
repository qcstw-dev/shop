<?php
/**
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
 *  @author    PrestaShop SA <contact@prestashop.com>
 *  @copyright 2007-2016 PrestaShop SA
 *  @license   http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
 *  International Registered Trademark & Property of PrestaShop SA
 */

/**
 * @since 1.5
 */
class HTMLTemplateInvoiceCustomShopCore extends HTMLTemplate
{
    public $bill_info;
    public $available_in_your_account = false;

    /**
     * @param OrderInvoice $order_invoice
     * @param $smarty
     * @throws PrestaShopException
     */
    public function __construct($oBillInfo, $smarty, $bulk_mode = false)
    {
        $this->bill_info = $oBillInfo;
        $this->smarty = $smarty;
        
        // header informations
        $this->date = Tools::displayDate($oBillInfo->date);
        $this->title = '';
    }

    /**
     * Returns the template's HTML header
     *
     * @return string HTML header
     */
    public function getHeader()
    {
        $this->assignCommonHeaderData();
        $this->smarty->assign(array('header' => HTMLTemplateInvoice::l('Invoice')));

        return $this->smarty->fetch($this->getTemplate('header'));
    }

    /**
     * Returns the template's HTML content
     *
     * @return string HTML content
     */
    public function getContent()
    {
        
        $data = array(
            'date' => $this->bill_info->date,
            'total' => $this->bill_info->total,
            'orders' => $this->bill_info->orders
        );

        $this->smarty->assign($data);
        
        $tpls = array(
            'style_tab' => $this->smarty->fetch($this->getTemplate('invoice.style-tab')),
            'order_tab' => $this->smarty->fetch($this->getTemplate('invoice-custom-shop.order-tab'))
        );
        
        $this->smarty->assign($tpls);
        
        if (Tools::getValue('debug')) {
            print_r($this->smarty->fetch($this->getTemplate('invoice-custom-shop')));
            die(json_encode($data));
        }
        return $this->smarty->fetch($this->getTemplate('invoice-custom-shop'));
    }


    /**
     * Returns the template filename when using bulk rendering
     *
     * @return string filename
     */
    public function getBulkFilename()
    {
        return $this->bill_info['date'].'-giftattitude-'.'bill.pdf';
    }

    /**
     * Returns the template filename
     *
     * @return string filename
     */
    public function getFilename()
    {
        return $this->bill_info->date.'-giftattitude-'.'bill.pdf';
    }
}
