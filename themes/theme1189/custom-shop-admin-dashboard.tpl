{include file=$header}
{include file=$menu}
<div class="key-stats-container">
    <div class="key-stats-block">
        Total number of orders
        <div class="key-stats-number">{$nb_orders}</div>
    </div>
    <div class="key-stats-block">
        Total products sold
        <div class="key-stats-number">{$nb_products_sold}</div>
    </div>
    <div class="key-stats-block">
        Total sales amount
        <div class="key-stats-number">{convertPrice price=$total_sales_amount}</div>
    </div>
    <div class="key-stats-block">
        Total comission
        <div class="key-stats-number">{convertPrice price=$total_comission}</div>
    </div>
    <div class="clearfix"></div>
</div>
<div class="font-size-20 text-center margin-top-20">Order summary</div>
<div class="margin-top-10 margin-bottom-10">Next payment of comission on: <span class="bold">{$next_date_payment}</span> (or when <span class="bold">{if $shop.minimum_to_reach}{convertPrice price=$shop.minimum_to_reach}{else}{convertPrice price=300}{/if}</span> is reached)</div>
<table class="table dashboard-table"> 
    <thead> 
        <tr class="text-center">
            <th>Date</th>
            <th>Order N°</th>
            <th>Product name</th>
            <th>Client name</th> 
            <th>Client address</th> 
            <th>Client phone</th> 
            <th>Product cost</th> 
            <th>Quantity</th> 
            <th>Shipping cost</th> 
            <th>Tracking N°</th> 
            <th>Comission</th> 
            <th>Status</th> 
        </tr> 
    </thead> 
    <tbody>
        {foreach from=$orders item=order}
            <tr>
                <td>{date('Y-m-d', strtotime($order.date_add))}</td>
                <td>{$order.id_order}</td>
                <td>{$order.product_creation.product_name|escape:'html':'UTF-8'}</td>
                <td>{$order.customer.firstname|escape:'html':'UTF-8'} {$order.customer.lastname|escape:'html':'UTF-8'}</td>
                <td>{$order.address_delivery.address1|escape:'html':'UTF-8'} {$order.address_delivery.address2|escape:'html':'UTF-8'} {$order.address_delivery.city|escape:'html':'UTF-8'} {$order.address_delivery.country_name|escape:'html':'UTF-8'}</td>
                <td>{$order.address_delivery.phone|escape:'html':'UTF-8'} {if $order.address_delivery.phone_mobile != $order.address_delivery.phone}{$order.address_delivery.phone_mobile|escape:'html':'UTF-8'}{/if}</td>
                <td>{convertPrice price=$order.product_price}</td>
                <td>{$order.quantity}</td>
                <td>{convertPrice price=$order.total_shipping}</td>
                <td>{if $order.tracking}{$order.tracking}{else} - {/if}</td>
                <td>{convertPrice price=$order.design_price*$order.quantity}</td>
                <td>{if $order.status}{$status[$order.status]}{else}{$status[1]}{/if}</td>
            </tr>
        {/foreach}
    </tbody>
</table>
<div class="col-xs-12">
    <div class="bold">Bills History</div>
    {foreach from=$bills item='bill'}
        <li>{$bill.date} - <a href="{$base_dir}index.php?controller=customshoppdfbill&id_bill={$bill.id}" target="_blank" title="Download bill"><span class="fa fa-file-pdf-o"></span> Download</a></li>
    {/foreach}
</div>
{include file=$footer}