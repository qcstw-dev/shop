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
            <td>
                {$order.order_state|escape:'html':'UTF-8'}
            </td>
        </tr>
    {/foreach}
</table>
{include file=$footer_mobile}