{include file=$header}
<div class="text-center bold font-size-24">Customers' management</div>
{if !$is_super_admin}
    <div class="col-xs-12 col-lg-3 margin-auto margin-top-20">
        {if $error_message}
            <div class="alert alert-danger">{$error_message}</div>
        {/if}
        <form method="post">
            <div class="form-group">
                <label>Login</label>
                <input class="form-control" type="text" name="login" value="{if isset($smarty.post.login)}{$smarty.post.login}{/if}"/>
            </div>
            <div class="form-group">
                <label>Password</label>
                <input class="form-control" type="password" name="password" />
            </div>
            <div class="form-group">
                <input class="btn btn-success col-xs-12 col-lg-4 pull-right" type="submit" value="Log in" />
            </div>
        </form>
    </div>
{else}
    <table class="table dashboard-table"> 
        <thead> 
            <tr class="text-center">
                <th>Customer ID</th>
                <th>Shop name</th>
                <th>Email</th>
                <th>Owner</th>
                <th>Last payment</th>
                <th>Number<br /> sold products</th>
                <th>Total sales<br /> from all times</th>
                <th>Total comission<br /> from all times</th>
                <th>Total sales<br /> since last payment</th>
                <th>Total comission<br /> since last payment</th>
                <th>Minimum to reach</th>
            </tr> 
        </thead> 
        <tbody>
            {foreach from=$shops item=shop}
                <tr>
                    <td>{$shop.id_account}</td>
                    <td>{$shop.name}</td>
                    <td>{$shop.customer.email}</td>
                    <td>{$shop.customer.firstname} {$shop.customer.lastname}{if !$shop.customer.firstname && !$shop.customer.lastname} - {/if}</td>
                    <td>{if $shop.bill}{$shop.bill.date}{else} - {/if}</td>
                    <td class="quantity-row-{$shop.id}">{if $shop.quantity}{$shop.quantity}{else}0{/if}</td>
                    <td class="total-sales-alltime-row-{$shop.id}">{if $shop.total_sales_from_all_times}{convertPrice price=$shop.total_sales_from_all_times}{else}0{/if}</td>
                    <td class="total-comission-alltime-row-{$shop.id}">{if $shop.total_comission_from_all_times}{convertPrice price=$shop.total_comission_from_all_times}{else}0{/if}</td>
                    <td class="total-sales-row-{$shop.id}">{if $shop.total_sales}{convertPrice price=$shop.total_sales}{else}0{/if}</td>
                    <td class="total-comission-row-{$shop.id}">{if $shop.total_comission}{convertPrice price=$shop.total_comission}{else}0{/if}</td>
                    <td>{convertPrice price=$shop.minimum_to_reach}</td>
                    <td>
                        <div class="btn-group-sm">
                            <div class="btn btn-{if $shop.total_comission >= $shop.minimum_to_reach}primary btn-pay btn-pay-{$shop.id}{else}default disabled{/if}" data-id-shop="{$shop.id}">Invoice</div>
                        </div>
                    </td>
                    <td>
                        <div>
                            <a href="{$base_dir}{if $smarty.server.HTTP_HOST == 'localhost'}custom-{/if}shop/{$shop.name}" target="_blank">
                                <span class="glyphicon glyphicon-globe"></span>&nbsp;Visit&nbsp;shop
                            </a>
                        </div>
                        <div>
                            <a href="{$base_dir}{$shop.name}/admin" target="_blank">
                                <span class="glyphicon glyphicon-pencil"></span>&nbsp;Shop&nbsp;admin
                            </a>
                        </div>
                    </td>
                </tr>
            {/foreach}
        </tbody>
    </table>
{/if}
{include file=$footer}