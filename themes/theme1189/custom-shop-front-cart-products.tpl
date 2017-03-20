<div class="cart-content">
    {if $products}
        {foreach $products item='product'}
            <div class="col-xs-12 padding-0 block-cart-element block-cart-element-{$product.id_customized_prod}">
                <div class="col-xs-6 thumbnail margin-bottom-0">
                    <img class="popup" src="{$base_uri}{$creation_picture_path}{$product.customized_prod.custom_img}" alt="{$product.name|escape:'html':'UTF-8'}" title="{$product.name|escape:'html':'UTF-8'}" />
                </div>
                <div class="col-sm-6">
                    <div class="remove-from-cart margin-bottom-10 pull-left margin-right-10 cursor-pointer" 
                         data-id-creation="{$product.id_customized_prod}"
                         title="{l s='remove this product from my cart' mod='blockcart'}">
                        <span class="glyphicon glyphicon-trash"></span>
                    </div>
                    <div>
                        {$product.cart_quantity}</span>&nbsp;x&nbsp;
                    </div>
                    <div>
                        <a class="quick-view" href="{$base_uri}product-popup?id_product={$product.id_product}" data-id-creation="{$product.customized_prod.id}" data-id-design="{$product.customized_prod.id_design}">
                            {$product.name|truncate:20:'...'|escape:'html':'UTF-8'}
                        </a>
                    </div>
                    <div class="bold font-size-20">
                        {if !isset($product.is_gift) || !$product.is_gift}
                    {if $priceDisplay == $smarty.const.PS_TAX_EXC}{displayWtPrice p="`$product.total`"}{else}{displayWtPrice p="`$product.total_wt`"}{/if}
                {else}
                    {l s='Free!' mod='blockcart'}
                {/if}
            </div>
        </div>
        <div class="clearfix"></div>
        <hr>
    </div>
    {/foreach}
    {/if}
    <div class="alert alert-info margin-bottom-0 text-center empty-cart-message" {if $products}style="display: none"{/if}>
        {l s='Your cart is empty'}
    </div>
    <a class="btn btn-primary checkout-btn col-xs-12" {if !$products}style="display: none"{/if} href="{$base_dir}shop/{$custom_shop_name}/checkout" title="">{l s='Checkout'} <span class="glyphicon glyphicon-chevron-right"></span></a>
    <div class="clearfix"></div>
</div>
<div class="clearfix"></div>