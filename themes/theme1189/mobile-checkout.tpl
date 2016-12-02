{include file=$header_mobile}
<div id="mobile-checkout">
    <div class="col-xs-12">
        <a href="{$base_uri}mobile-checkout?step=1" class="col-xs-12 title-block">
            {l s="Summary"} <span class="glyphicon glyphicon-chevron-down pull-right"></span>
        </a>
        {if $checkout_step == 1 || !$checkout_step}
            {include file=$mobile_summary}
        {/if}
        <a href="{$base_uri}mobile-checkout?step=2" class="col-xs-12 title-block">
            {l s="Sign in"} <span class="glyphicon glyphicon-chevron-down pull-right"></span>
        </a>
        {if $checkout_step == 2}
            {include file=$mobile_login}
        {/if}
        <a href="{$base_uri}mobile-checkout?step=3" class="col-xs-12 title-block">
            {l s="Addresses"} <span class="glyphicon glyphicon-chevron-down pull-right"></span>
        </a>
        {if $checkout_step == 3}
            <div class="col-xs-12 block-checkout font-size-13">
                {include file=$mobile_addresses}
            </div>
        {/if}
    </div>
</div>
{include file=$footer_mobile}