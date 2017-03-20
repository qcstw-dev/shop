{include file=$header}
<div id="custom-shop-checkout">
    <div class="col-xs-12 padding-0">
        {if !$checkout_step || is_numeric($checkout_step)}
            <a href="{$base_uri}shop/{$custom_shop_name}/checkout?step=1" class="col-xs-12 title-block">
                <span class="glyphicon glyphicon-list-alt padding-right-20"></span> {l s="Summary"} <span class="glyphicon glyphicon-chevron-down pull-right"></span>
            </a>
            {if $checkout_step == 1 || !$checkout_step}
                {include file=$custom_shop_summary}
            {/if}
            <a {if $checkout_step > 2}href="{$base_uri}shop/{$custom_shop_name}/checkout?step=2"{/if} class="col-xs-12 title-block {if $checkout_step == 1 || !$checkout_step}disabled{/if}">
                <span class="glyphicon glyphicon-user padding-right-20"></span> {l s="Sign in"} <span class="glyphicon glyphicon-chevron-down pull-right"></span>
            </a>
            {if $checkout_step == 2}
                {include file=$custom_shop_login}
            {/if}
            <a {if $checkout_step > 3}href="{$base_uri}shop/{$custom_shop_name}/checkout?step=3"{/if} class="col-xs-12 title-block {if $checkout_step < 3}disabled{/if}">
                <span class="glyphicon glyphicon-home padding-right-20"></span> {l s="Addresses"} <span class="glyphicon glyphicon-chevron-down pull-right"></span>
            </a>
            {if $checkout_step == 3}
                <div class="col-xs-12 block-checkout font-size-13">
                    {include file=$custom_shop_addresses}
                </div>
            {/if}
            <a {if $checkout_step > 4}href="{$base_uri}shop/{$custom_shop_name}/checkout?step=4"{/if} class="col-xs-12 title-block {if $checkout_step < 4}disabled{/if}">
                <span class="fa fa-truck padding-right-20"></span> {l s="Shipping"} <span class="glyphicon glyphicon-chevron-down pull-right"></span>
            </a>
            {if $checkout_step == 4}
                <div class="col-xs-12 padding-0 block-checkout padding-top-10 padding-bottom-10 font-size-13">
                    {include file=$custom_shop_shipping}
                </div>
            {/if}
            <a {if $checkout_step == 5}href="{$base_uri}shop/{$custom_shop_name}/checkout?step=5"{/if} class="col-xs-12 title-block {if $checkout_step < 5}disabled{/if}">
                <span class="fa fa-credit-card padding-right-20"></span> {l s="Payment"} <span class="glyphicon glyphicon-chevron-down pull-right"></span>
            </a>
            {if $checkout_step == 5}
                <div class="col-xs-12 padding-0 block-checkout padding-top-10 padding-bottom-10 font-size-13">
                    {include file=$custom_shop_payment}
                </div>
            {/if}
        {elseif $checkout_step == 'order-confirmation'}
            {include file=$custom_shop_payment_confirmation}
        {/if}
    </div>
</div>
{include file=$footer}