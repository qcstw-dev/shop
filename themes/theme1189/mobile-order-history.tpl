{include file=$header_mobile}
<table class="table">
    <tr>
        <th>
            {l s="Order reference"}
        </th>
        <th>
            {l s="Date"}
        </th>
        <th>
            {l s="Total price"}
        </th>
        <th>
            {l s="Status"}
        </th>
    </tr>
    {foreach $orders as $order}
        <tr>
            <td>
                {$order.reference}
            </td>
            <td>
                {dateFormat date=$order.date_add full=0}
            </td>
            <td>
                {displayPrice price=$order.total_paid currency=$order.id_currency no_utf8=false convert=false}
            </td>
            <td class="{if isset($order.order_state_color) && Tools::getBrightness($order.order_state_color) > 128} dark{/if}"{if isset($order.order_state_color) && $order.order_state_color} style="color: #fff; background-color:{$order.order_state_color|escape:'html':'UTF-8'}; border-radius: 10px;"{/if}>
                {$order.order_state|escape:'html':'UTF-8'}
            </td>
        </tr>
    {/foreach}
</table>
{include file=$footer_mobile}