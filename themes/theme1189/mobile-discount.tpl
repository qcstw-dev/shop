{include file=$header_mobile}
<div class="col-xs-12">
    {capture name=path}
        <a href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}" title="{l s='My account'}">{l s='My account'}</a>
        <span class="navigation-pipe">{$navigationPipe}</span>
        <span class="navigation_page">{l s='My vouchers'}</span>
    {/capture}

    <div class="font-size-20 bold text-center">
        {l s='My vouchers'}
    </div>
    <hr>
    {if isset($cart_rules) && count($cart_rules) && $nb_cart_rules}
        <table class="discount table table-bordered footab">
            <thead>
                <tr>
                    <th data-sort-ignore="true" class="discount_code first_item">{l s='Code'}</th>
                    <th data-sort-ignore="true" class="discount_description item">{l s='Description'}</th>
                    <th class="discount_quantity item visible-sm">{l s='Quantity'}</th>
                    <th data-sort-ignore="true" data-hide="phone,tablet" class="discount_value item">{l s='Value'}*</th>
                    <th data-hide="phone,tablet" class="discount_minimum item visible-sm">{l s='Minimum'}</th>
                    <th data-sort-ignore="true" data-hide="phone,tablet" class="discount_cumulative item visible-sm">{l s='Cumulative'}</th>
                    <th data-hide="phone" class="discount_expiration_date last_item">{l s='Expiration date'}</th>
                </tr>
            </thead>
            <tbody>
                {foreach from=$cart_rules item=discountDetail name=myLoop}
                    <tr class="{if $smarty.foreach.myLoop.first}first_item{elseif $smarty.foreach.myLoop.last}last_item{else}item{/if} {if $smarty.foreach.myLoop.index % 2}alternate_item{/if}">
                        <td class="discount_code">{$discountDetail.code}</td>
                        <td class="discount_description">{$discountDetail.name}</td>
                        <td data-value="{$discountDetail.quantity_for_user}" class="discount_quantity visible-sm">{$discountDetail.quantity_for_user}</td>
                        <td class="discount_value">
                            {if $discountDetail.id_discount_type == 1}
                                {$discountDetail.value|escape:'html':'UTF-8'}%
                            {elseif $discountDetail.id_discount_type == 2}
                            {convertPrice price=$discountDetail.value} ({if $discountDetail.reduction_tax == 1}{l s='Tax included'}{else}{l s='Tax excluded'}{/if})
                        {elseif $discountDetail.id_discount_type == 3}
                            {l s='Free shipping'}
                        {else}
                            -
                        {/if}
                    </td>
                    <td class="discount_minimum visible-sm" data-value="{if $discountDetail.minimal == 0}0{else}{$discountDetail.minimal}{/if}">
                        {if $discountDetail.minimal == 0}
                            {l s='None'}
                        {else}
                            {convertPrice price=$discountDetail.minimal}
                        {/if}
                    </td>
                    <td class="discount_cumulative visible-sm">
                        {if $discountDetail.cumulable == 1}
                            <i class="fa fa-ok icon"></i> {l s='Yes'}
                        {else}
                            <i class="fa fa-times icon"></i> {l s='No'}
                        {/if}
                    </td>
                    <td class="discount_expiration_date" data-value="{$discountDetail.date_to|regex_replace:"/[\-\:\ ]/":""}">
                        {dateFormat date=$discountDetail.date_to}
                    </td>
                </tr>
            {/foreach}
        </tbody>
    </table>
{else}
    <p class="alert alert-warning">{l s='You do not have any vouchers.'}</p>
{/if}

<div class="footer_links clearfix">
    {*<a class="btn btn-default" href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}" title="{l s='Back to your account'}">
        <span>
            <i class="fa fa-chevron-left"></i> 
            {l s='Back to your account'}
        </span>
    </a>*}
    <a class="btn btn-default" href="{$base_dir}mobile" title="{l s='Home'}">
        <span>
            <i class="fa fa-chevron-left"></i> 
            {l s='Home'}
        </span>
    </a>
</div>
</div>
{include file=$footer_mobile}