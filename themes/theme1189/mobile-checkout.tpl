{include file=$header_mobile}
<div id="mobile-checkout">
    <div class="col-xs-12">
        <a href="{$base_uri}mobile-checkout?step=1" class="col-xs-12 title-block">
            <span class="glyphicon glyphicon-list-alt padding-right-20"></span> {l s="Summary"} <span class="glyphicon glyphicon-chevron-down pull-right"></span>
        </a>
        {if $checkout_step == 1 || !$checkout_step}
            {include file=$mobile_summary}
        {/if}
        <a href="{$base_uri}mobile-checkout?step=2" class="col-xs-12 title-block">
            <span class="glyphicon glyphicon-user padding-right-20"></span> {l s="Sign in"} <span class="glyphicon glyphicon-chevron-down pull-right"></span>
        </a>
        {if $checkout_step == 2}
            {include file=$mobile_login}
        {/if}
        <a href="{$base_uri}mobile-checkout?step=3" class="col-xs-12 title-block">
            <span class="glyphicon glyphicon-home padding-right-20"></span> {l s="Addresses"} <span class="glyphicon glyphicon-chevron-down pull-right"></span>
        </a>
        {if $checkout_step == 3}
            <div class="col-xs-12 block-checkout font-size-13">
                {include file=$mobile_addresses}
            </div>
        {/if}
        <a href="{$base_uri}mobile-checkout?step=4" class="col-xs-12 title-block">
            <span class="fa fa-truck padding-right-20"></span> {l s="Shipping"} <span class="glyphicon glyphicon-chevron-down pull-right"></span>
        </a>
        {if $checkout_step == 4}
            <div class="col-xs-12 padding-0 block-checkout padding-top-10 padding-bottom-10 font-size-13">
                {include file=$mobile_shipping}
            </div>
        {/if}
        <a href="{$base_uri}mobile-checkout?step=5" class="col-xs-12 title-block">
            <span class="fa fa-credit-card padding-right-20"></span> {l s="Payment"} <span class="glyphicon glyphicon-chevron-down pull-right"></span>
        </a>
        {if $checkout_step == 5}
            <div class="col-xs-12 padding-0 block-checkout padding-top-10 padding-bottom-10 font-size-13">
                {include file=$mobile_shipping}
            </div>
        {/if}
    </div>
</div>
{include file=$footer_mobile}