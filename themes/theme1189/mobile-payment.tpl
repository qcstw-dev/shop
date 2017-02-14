<div class="col-xs-12">
    <div id="HOOK_TOP_PAYMENT">{$HOOK_TOP_PAYMENT}</div>
    {foreach $summary.products as $key => $product}
        <div class="row padding">
            <div class="col-xs-4 thumbnail border-none">
                <img class="popup" src="{$base_uri}{$custom_picture_path}{$product.custom_picture}.png" alt="{$product.name|escape:'html':'UTF-8'}" title="{$product.name|escape:'html':'UTF-8'}" />
            </div>
            <div class="col-xs-8 padding-0">
                <div class="underline bold">{l s="Description"}:</div>
                <div>{$product.name|truncate:20:'...'|escape:'html':'UTF-8'}</div>
                <div class="margin-top-5">
                    <div><span class="bold underline">{l s="Unit price"}:</span> 
                        {if $product.price != $product.price_without_reduction}
                            <del>{displayWtPrice p="`$product.price_without_reduction`"}</del> <span class="color-red">{displayWtPrice p="`$product.price`"}</span>
                        {else}
                            {displayWtPrice p="`$product.price`"}
                        {/if}
                    </div>
                </div>
                <div class="margin-top-5">
                    <div><span class="bold underline">{l s="Qty"}:</span>
                        {$product.quantity}
                    </div>
                </div>
            </div>
        </div>
        <hr>
    {/foreach}
    <div class="row padding font-size-15 bold text-center">
        <div>
            {l s='Total products'}: {displayWtPrice p="`$summary['total_products']`"}
        </div>
        <div>
            {l s='Total shipping'}: {displayWtPrice p="`$summary['total_shipping']`"}
        </div>
        {if $summary['total_discounts']}
            <div>{l s='Vouchers'}: -{convertPrice price=$summary['total_discounts']}
            </div>
        {/if}
        <div class="font-size-20">
            {l s='Total Order'}: {displayWtPrice p="`$summary['total_price']`"}
        </div>
    </div>
    <hr>
    <div id="HOOK_PAYMENT">{$HOOK_PAYMENT}</div>
</div>