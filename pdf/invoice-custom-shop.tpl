{*
* 2007-2016 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
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
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

{$style_tab}
<table id="addresses-tab" cellspacing="0" cellpadding="0">
    <td width="33%"><span class="bold">QCS Asia Co., Ltd. All rights reserved.</span><br/><br/>
        5F-8, NO. 63 HEPING E. RD, SEC 3., TAIPEI, TAIWAN<br/>
        Ph: (886.2)27385787<br />
        Fax : (886.2)27385816<br/>
    </td>
    <td width="33%">
    </td>
    <td width="33%"><span class="bold"></span>{$customer.firstname} {$customer.lastname}<br/><br/>
        {$customer.address}<br/>
        {$customer.zip} {$customer.city}<br/>
        {$customer.country_name}<br/>
        {$customer.phone}
    </td>
</tr>
</table>
<table width="100%" id="body" border="0" cellpadding="0" cellspacing="0" style="margin:0;">
    <tr>
        <td colspan="12">
            {$order_tab}
        </td>
    </tr>
</table>
<table width="100%" id="body" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td colspan="12" style="text-align: right;"><img src="img/paid_stamp.jpg" width="200px" style="margin-top:20px" /></td>
    </tr>
</table>
