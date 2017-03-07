{include file=$header}
<table class="table dashboard-table"> 
    <thead> 
        <tr class="text-center">
            <th>Customer ID</th>
            <th>Email</th>
            <th>Firstname</th>
            <th>Lastname</th>
            <th>Last payment</th>
            <th>Total products</th>
            <th>Total comission</th>
        </tr> 
    </thead> 
    <tbody>
        {foreach from=$shops item=shop}
            <tr>
                <td>{$shop.id_account}</td>
                <td>{$shop.customer.email}</td>
                <td>{if $shop.customer.firstname}{$shop.customer.firstname}{else} - {/if}</td>
                <td>{if $shop.customer.lastname}{$shop.customer.lastname}{else} - {/if}</td>
                <td>{if $shop.bill}{$shop.bill.date}{else} - {/if}</td>
                <td>{if $shop.quantity}{$shop.quantity}{else}0{/if}</td>
                <td>{$shop.total_comission}</td>
                <td><div class="btn-group-sm">{if $shop.total_comission >= $shop.minimum_to_reach}<div class="btn btn-primary">Mark as paid</div>{else}<div class="btn btn-default disabled">Mark as paid</div>{/if}</div></td>
            </tr>
        {/foreach}
    </tbody>
</table>
{include file=$footer}