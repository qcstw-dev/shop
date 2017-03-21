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
*  @author    PrestaShop SA <contact@prestashop.com>
*  @copyright 2007-2016 PrestaShop SA
*  @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
<div data-role="content" id="content" class="">
    {include file="$tpl_dir./errors.tpl"}

    <div class="font-size-20 text-center bold">{l s='Order confirmation' mod='paypal'}</div>
    <hr>

    {assign var='current_step' value='payment'}

    {include file="$tpl_dir./errors.tpl"}

    {$HOOK_ORDER_CONFIRMATION}
    {$HOOK_PAYMENT_RETURN}
    <br />
    

    {if $order}
        <p>{l s='Total of the transaction (taxes incl.) :' mod='paypal'} <span class="bold">{$price|escape:'htmlall':'UTF-8'}</span></p>
        <p>{l s='Your order ID is :' mod='paypal'} 
            <span class="bold">
                {if $smarty.const._PS_VERSION_ >= 1.5}
                    {Order::getUniqReferenceOf($order.id_order)|escape:'htmlall':'UTF-8'}
                {else}
                    {$order.id_order|intval}
                {/if}
            </span>
        </p>
        <p>{l s='Your PayPal transaction ID is :' mod='paypal'} <span class="bold">{$order.id_transaction|escape:'htmlall':'UTF-8'}</span></p>
        {/if}

    <br />

    {if !$is_guest}
        <a class="underline" href="{$base_uri}shop/{$custom_shop_name}" data-role="button" data-theme="a" data-icon="back" data-ajax="false">{l s='Continue shopping' mod='paypal'}</a>
    {else}
        <ul data-role="listview" data-inset="true" id="list_myaccount">
            <li data-theme="a" data-icon="check">
                <a class="underline" href="{$base_uri}shop/{$custom_shop_name}" data-ajax="false">{l s='Continue shopping' mod='paypal'}</a>
            </li>
        </ul>
    {/if}
    <br />
</div><!-- /content -->
