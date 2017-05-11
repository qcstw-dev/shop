<div class="col-xs-12 block-checkout font-size-13">
    {foreach from=$cart_products item=product name=cart_products}
        <div class="block-product block_product_{$product.id_product}_{$product.custom_picture}_{$product.id_customized_prod}">
            <div class="margin-bottom-10">
                <div class="col-xs-4 col-lg-2 thumbnail">
                    <img class="popup-picture" data-text="*On this preview the picture might look pixelated. No worry! We use the original picture to produce." src="{$base_uri}{if isset($product.customized_prod)}{$creation_picture_path}{$product.customized_prod.custom_img}{else}{$custom_picture_path}{$product.custom_picture}.png{/if}" alt="{$product.name|escape:'html':'UTF-8'}" title="{$product.name|escape:'html':'UTF-8'}" />
                </div>
                <div class="col-xs-8 col-lg-10 padding-right-0">
                    <div class="block-modify pull-right">
                        <div class="cursor-pointer font-size-20 delete" data-id="{$product.id_product}_{$product.custom_picture}_{$product.id_customized_prod}"><span class="glyphicon glyphicon-trash"></span></div>
                    </div>
                    <div class="col-xs-10 padding-0"><span class="underline bold">{l s="Description"}:</span> {$product.description_short}</div>
                    <div class="clearfix"></div>
                    <div class="row margin-top-5">
                        <div class="col-xs-4 col-sm-2 bold underline">{l s="Quantity"}:</div>
                        <div class="col-xs-8">
                            <div class="cart_quantity cart_quantity_down" data-id="{$product.id_product}_{$product.custom_picture}_{$product.id_customized_prod}"><span class="glyphicon glyphicon-minus-sign"></span></div> 
                            <input type="hidden" value="{$product.quantity}" class="input-qty cart_quantity_input_{$product.id_product}_{$product.custom_picture}_{$product.id_customized_prod}_hidden" data-id="{$product.id_product}_{$product.custom_picture}_{$product.id_customized_prod}" />
                            <input type="text" value="{$product.quantity}" class="input-qty cart_quantity_input_{$product.id_product}_{$product.custom_picture}_{$product.id_customized_prod} cart_quantity_input" data-id="{$product.id_product}_{$product.custom_picture}_{$product.id_customized_prod}" />
                            <div class="cart_quantity cart_quantity_up" data-id="{$product.id_product}_{$product.custom_picture}_{$product.id_customized_prod}"><span class="glyphicon glyphicon-plus-sign"></span></div>
                        </div>
                    </div>
                    <div class="row margin-top-5">
                        <div class="col-xs-6 padding-right-0 col-sm-2 bold underline">{l s="Unit price"}:</div>
                        <div class="col-xs-5 padding-left-40 bold unit_product_{$product.id_product}_{$product.custom_picture}_{$product.id_customized_prod}">
                            <del class="price_without_quantity_discount">
                                {if $product.price != $product.price_without_reduction}
                                    {displayWtPrice p="`$product.price_without_reduction`"}
                                {/if}
                            </del> 
                            <span class="price{if $product.price != $product.price_without_reduction} color-red{/if}">
                                {displayWtPrice p="`$product.price_wt`"}
                            </span>
                        </div>
                    </div>
                </div>
            </div>
            <!-- prices -->
            <div class="col-xs-12 col-sm-8 margin-top-10 padding-xs-0 padding-sm-0">
                <div class="col-xs-12 padding-0">
                    <div class="tab-price-cel-first col-xs-2 padding-0 text-center padding-0 border">Quantity</div>
                    {foreach from=$product.prices key=quantity item=price}
                        <div class="tab-price-cel col-xs-1 padding-0 text-center border">{$quantity}pc{if $quantity > 1}s{/if}</div>
                    {/foreach}
                </div>
                <div class="col-xs-12 padding-0">
                    <div class="tab-price-cel-first col-xs-2 padding-0 text-center padding-0 border">Unit price</div>
                    {foreach from=$product.prices key=quantity item=price}
                        <div class="tab-price-cel col-xs-1 padding-0 text-center border">{convertPrice price=$price}</div>
                    {/foreach}
                </div>
            </div>
            <div class="clearfix"></div>
            <div class="font-size-15 bold text-center margin-top-xs-10 pull-right">
                <div class="col-xs-6">{l s='Total'}</div>
                <div class="col-xs-6 total_product_{$product.id_product}_{$product.custom_picture}_{$product.id_customized_prod}">{displayWtPrice p="`$product.total_wt`"}</div>
            </div>
            <div class="clearfix"></div>
            <hr>
        </div>
    {/foreach}
    <div class="col-xs-12 margin-bottom-10 padding-0">
        {if $voucherAllowed}
            <form action="{$base_uri}shop/{$custom_shop_name}/checkout" method="post" id="voucher">
                <div class="col-xs-4 col-lg-1 padding-left-0 padding-top-10 bold">
                    {l s='Vouchers'}:
                </div>
                <div class="col-xs-8 col-lg-3 col-sm-3 padding-0">
                    <div class="input-group">
                        <input type="hidden" name="submitDiscount" />
                        <input type="text" class="discount_name form-control" id="discount_name" name="discount_name" value="{if isset($discount_name) && $discount_name}{$discount_name}{/if}" />
                        <span class="input-group-btn">
                            <button type="submit" name="submitAddDiscount" class="btn btn-default">{l s='Ok'}</button>
                        </span>
                    </div>
                </div>
            </form>
            <div class="clearfix"></div>
            {if $displayVouchers}
                <p id="title" class="margin-top-10 title-offers">{l s='Take advantage of our exclusive offers:'}</p>
                <div id="display_cart_vouchers">
                    {foreach $displayVouchers as $voucher}
                        {if $voucher.code != ''}<span class="voucher_name" data-code="{$voucher.code|escape:'html':'UTF-8'}">{$voucher.code|escape:'html':'UTF-8'}</span> - {/if}{$voucher.name}<br />
                    {/foreach}
                </div>
            {/if}
        {/if}
    </div>
    {if !$logged}
        <div class="col-xs-12 padding-0">
            <div class="col-xs-4 col-lg-1 padding-left-0 bold">{l s='Shipping'}:</div>
            <div class="col-xs-8 col-lg-3 padding-0">{l s='Calculated when address keyed'}</div>
        </div>
    {/if}
    <div class="clearfix"></div>
    <hr>
    <div class="font-size-15 bold text-center margin-top-10 pull-right">
        {if $summary['total_shipping']}
            <div class="col-xs-6">{l s='Shipping'}</div>
            <div class="col-xs-6">{convertPrice price=$summary['total_shipping']}</div>
        {/if}
        {if $summary['total_discounts']}
            <div class="col-xs-6">{l s='Vouchers'}</div>
            <div class="col-xs-6">-<span class="total_voucher">{convertPrice price=$summary['total_discounts']}</span></div>
        {/if}
    </div>
    <div class="clearfix"></div>
    <div class="font-size-20 bold text-center margin-top-10 pull-right">
        <div class="col-xs-6">{l s='TOTAL'}</div>
        <div class="col-xs-6 cart_total">{$total_cart}</div>
    </div>
    <div class="clearfix"></div>
    <a class="btn btn-primary margin-top-10 col-xs-12 col-sm-4 col-lg-2 pull-right" href="{$base_uri}shop/{$custom_shop_name}/checkout?step={if $isLogged}3{else}2{/if}" >{l s="Next"} <span class="glyphicon glyphicon-chevron-right"></span></a>
</div>