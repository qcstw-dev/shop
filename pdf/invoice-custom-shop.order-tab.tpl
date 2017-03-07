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
<table class="product" width="100%" cellpadding="4" cellspacing="0">
    <thead>
        <tr>
            <th class="product header small">{l s='Order N°' pdf='true'}</th>
            <th class="product header small">{l s='Date' pdf='true'}</th>
            <th class="product header small">{l s='Comission' pdf='true'}</th>
        </tr>
    </thead>
    <tbody>
        {foreach $orders as $order}
            {cycle values=["color_line_even", "color_line_odd"] assign=bgcolor_class}
            <tr class="product {$bgcolor_class}">
                <td style="text-align: center;">
                   {$order.id}
                </td>
                <td style="text-align: center;">
                   {date('Y-m-d', strtotime($order.date))}
                </td>
                <td style="text-align: center;">
                    {displayPrice currency=1 price=$order.comission}
                </td>
            </tr>
        {/foreach}
            <tr class="product {$bgcolor_class}">
                <td colspan="2" style="text-align: center; font-size: 1.5em;border-top: 2px solid #555; background-color: #eee;">{l s='Total' pdf='true'}</td>
                <td style="text-align: center; font-size: 1.5em;border-top: 2px solid #555;">
                    {displayPrice currency=1 price=$total}
                </td>
            </tr>
    </tbody>
</table>
