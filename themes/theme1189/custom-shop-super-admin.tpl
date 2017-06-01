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
            {if $smarty.server.HTTP_HOST != 'localhost'}
                {if $smarty.server.HTTP_HOST == 'pimpyourkeys.com'}
                    <div class="g-recaptcha" data-sitekey="6LecpxwUAAAAAG7ZSDy38lhkFMOZmHUrG3bHpKHH"></div>
                {else}
                    <div class="g-recaptcha" data-sitekey="6LdWFwwUAAAAABxzvt7l89l6Wm_ZH_aGGI1t8ru9"></div>
                {/if}
            {/if}
            <div class="form-group">
                <input class="btn btn-success col-xs-12 col-lg-4 pull-right" type="submit" value="Log in" />
            </div>
        </form>
    </div>
{else}
    <div class="col-xs-12 margin-bottom-10">
        <div class="pull-left margin-right-10 border" style="background: #d9edf7; width: 50px; height: 30px;"></div><div class="pull-left bold margin-top-5"> New design(s)</div>
    </div>
    <div class="col-xs-12">
        <div class="pull-left margin-right-10 border" style="background: #FFF6D3; width: 50px; height: 30px;"></div><div class="pull-left bold margin-top-5"> Informations edited by shop owner</div>
    </div>
    <table class="table dashboard-table"> 
        <thead> 
            <tr class="text-center">
                <th>Shop ID</th>
                <th>Shop name</th>
                <th>Email</th>
                <th>Owner</th>
                <th>Last payment</th>
                <th>Number<br /> sold products since shop opening</th>
                <th>Total sales<br /> since shop opening</th>
                <th>Total commission<br /> since shop opening</th>
                <th>Total sales<br /> since last payment</th>
                <th>Total commission<br /> since last payment</th>
                <th>Minimum to reach</th>
            </tr> 
        </thead> 
        <tbody>
            {foreach from=$shops item=shop}
                <tr {if $shop.new_design}style="background: #d9edf7"{else if $shop.modified}style="background: #FFF6D3"{/if}>
                    <td>{$shop.id}</td>
                    <td>{$shop.name}</td>
                    <td>{$shop.customer.email}</td>
                    <td>{$shop.customer.firstname} {$shop.customer.lastname}{if !$shop.customer.firstname && !$shop.customer.lastname} - {/if}</td>
                    <td>{if $shop.bill}{$shop.bill.date}{else} - {/if}</td>
                    <td class="quantity-row-{$shop.id}">{if $shop.quantity}{$shop.quantity}{else}0{/if}</td>
                    <td class="total-sales-alltime-row-{$shop.id}">{if $shop.total_sales_from_all_times}{convertPrice price=$shop.total_sales_from_all_times}{else}0{/if}</td>
                    <td class="total-comission-alltime-row-{$shop.id}">{if $shop.total_commission_from_all_times}{convertPrice price=$shop.total_commission_from_all_times}{else}0{/if}</td>
                    <td class="total-sales-row-{$shop.id}">{if $shop.total_sales}{convertPrice price=$shop.total_sales}{else}0{/if}</td>
                    <td class="total-comission-row-{$shop.id}">{if $shop.total_comission}{convertPrice price=$shop.total_comission}{else}0{/if}</td>
                    <td>{convertPrice price=$shop.minimum_to_reach}</td>
                    <td>
                        <div class="btn-group-sm">
                            <div class="btn btn-{if $shop.total_comission >= $shop.minimum_to_reach}primary btn-pay btn-pay-{$shop.id}{else}default disabled{/if}" data-id-shop="{$shop.id}">
                                Pay
                            </div>
                        </div>
                    </td>
                    <td>
                        <div>
                            <a href="{$base_dir}shop/{$shop.name}" target="_blank">
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