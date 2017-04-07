{include file=$header}
{include file=$menu}
<div class="key-stats-container">
    <div class="key-stats-block">
        Total number of orders since last payment
        <div class="key-stats-number">{if $current_situation.nb_orders}{$current_situation.nb_orders}{else}0{/if}</div>
        <div class="key-stats-number-all-times">Since shop opening: {$nb_orders}</div>
    </div>
    <div class="key-stats-block">
        Total products sold since last payment
        <div class="key-stats-number">{if $current_situation.quantity}{$current_situation.quantity}{else}0{/if}</div>
        <div class="key-stats-number-all-times">Since shop opening: {$nb_products_sold}</div>
    </div>
    <div class="key-stats-block">
        Total sales amount since last payment
        <div class="key-stats-number">{if $current_situation.total_sales}{convertPrice price=$current_situation.total_sales}{else}{convertPrice price=0}{/if}</div>
        <div class="key-stats-number-all-times">Since shop opening: {convertPrice price=$total_sales_amount}</div>
    </div>
    <div class="key-stats-block">
        Total commission since last payment
        <div class="key-stats-number">{if $current_situation.total_commission}{convertPrice price=$current_situation.total_commission}{else}{convertPrice price=0}{/if}</div>
        <div class="key-stats-number-all-times">Since shop opening: {convertPrice price=$total_commission}</div>
    </div>
    <div class="clearfix"></div>
</div>
<div class="font-size-20 text-center margin-top-20">Order summary</div>
<div class="margin-top-10 margin-bottom-10">Next payment of commission on: <span class="bold">{$next_date_payment}</span> (if the minimum of <span class="bold">{if $shop.minimum_to_reach}{convertPrice price=$shop.minimum_to_reach}{else}{convertPrice price=20}{/if}</span> is reached)</div>
<table class="table dashboard-table"> 
    <thead> 
        <tr class="text-center">
            <th class="visible-lg">Date</th>
            <th class="visible-lg">Order N°</th>
            <th>Product name</th>
            <th class="visible-lg">Client name</th> 
            <th class="visible-lg">Client address</th> 
            <th class="visible-lg">Client phone</th> 
            <th class="visible-lg">Product cost</th> 
            <th>Quantity</th> 
            <th>Tracking N°</th> 
            <th>Commission</th> 
            <th>Status</th>
        </tr> 
    </thead> 
    <tbody>
        {foreach from=$orders key=key item=order}
            <tr>
                <td class="visible-lg">{date('Y-m-d', strtotime($order.date_add))}</td>
                <td class="visible-lg">{$order.id_order}</td>
                <td>{$order.product_creation.product_name|escape:'html':'UTF-8'}</td>
                <td class="visible-lg">{$order.customer.firstname|escape:'html':'UTF-8'} {$order.customer.lastname|escape:'html':'UTF-8'}</td>
                <td class="visible-lg">{$order.address_delivery.address1|escape:'html':'UTF-8'} {$order.address_delivery.address2|escape:'html':'UTF-8'} {$order.address_delivery.city|escape:'html':'UTF-8'} {$order.address_delivery.country_name|escape:'html':'UTF-8'}</td>
                <td class="visible-lg">{$order.address_delivery.phone|escape:'html':'UTF-8'} {if $order.address_delivery.phone_mobile != $order.address_delivery.phone}{$order.address_delivery.phone_mobile|escape:'html':'UTF-8'}{/if}</td>
                <td class="visible-lg">{convertPrice price=$order.product_price+$order.design_price}</td>
                <td>{$order.quantity}</td>
                <td>
                    {if !$is_super_admin}
                        {if $order.tracking}
                            {$order.tracking}
                        {else} - {/if}
                    {else}
                        <div class="col-xs-7 padding-right-0 input-group-sm">
                            <input class="form-control tracking-field-{$key} tracking-order-{$order.id_order}" data-id-order="{$order.id_order}" value="{$order.tracking}" type="text" />
                        </div>
                        <div class="col-xs-5 btn-group-sm">
                            <div class="btn btn-success btn-save-tracking" data-id-item="{$key}">Save</div>
                        </div>
                    {/if}
                </td>
                <td>{convertPrice price=$order.design_price*$order.quantity}</td>
                <td>
                    {if !$is_super_admin}
                        {if $order.status}
                            {$status[$order.status]}
                        {else}
                            {$status[1]}
                        {/if}
                    {else}
                        <select class="form-control select-status select-status-{$order.id_order}" data-id-order="{$order.id_order}">
                            {foreach from=$status key='key' item='status_label'}
                                <option value="{$key}" {if $key == $order.status || ($order.status == 0 && $key == 1)}selected{/if}>{$status_label}</option>
                            {/foreach}
                        </select>
                    {/if}
                </td>
            </tr>
        {/foreach}
    </tbody>
</table>
{include file=$footer}