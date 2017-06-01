{if !$loadmore}
    <div class="products-container margin-top-20">
    {/if}
    {if $products}
        {foreach from=$products item='product'}
            <div class="col-xs-3 margin-bottom-20">
                <div class="col-xs-12 border shadow padding-top-10 padding-bottom-10 block-product" data-id-creation="{$product.id}" itemscope itemtype="http://schema.org/Product">
                    <div class="thumbnail border-none padding-0 margin-bottom-0 cursor-pointer quick-view-creation" 
                         data-id-product="{$product.id_product}" 
                         data-id-creation="{$product.id}"
                         data-id-design="{$product.id_design}">
                        <img itemprop="image" class="padding-0" src="{$base_dir_ssl}img/custom_shop/creation/{$product.custom_img}" alt="{$product.product_name}" title="{$product.product_name}" />
                    </div>
                    <h5 itemprop="name" class="col-xs-12 padding-0 bold text-center creation-title cursor-pointer quick-view-creation" 
                        data-id-product="{$product.id_product}" 
                        data-id-creation="{$product.id}"
                        data-id-design="{$product.id_design}">{$product.product_name}</h5>
                    <div class="col-xs-12 padding-0 creation-shop-name">
                        <img src="{$img_dir}shop-icon.png" class="margin-bottom-10" alt="icon shop" title="icon shop" />
                        <a href="{$base_dir}shop/{$product.shop.name}" class="underline bold padding-top-5" title="{$product.shop.name}" target="_blank">
                    {if $product.shop.title}{$product.shop.title}{else}{$product.shop.name}{/if}
                </a>
            </div>
            <div class="col-xs-12 padding-0">
                <div class="btn {if in_array($product['id'], $cart_creations_id)}btn-success{else}btn-primary{/if} btn-sm add-creation col-xs-12" data-id-creation="{$product.id}">
                    <span class="glyphicon {if in_array($product['id'], $cart_creations_id)}glyphicon-ok{else}glyphicon-shopping-cart{/if}"></span> <span class="">Add to cart</span>
                </div>
            </div>
            <div class="col-xs-12 margin-top-10 text-center bold font-size-20 cursor-pointer quick-view-creation" 
                 data-id-product="{$product.id_product}" 
                 data-id-creation="{$product.id}"
                 data-id-design="{$product.id_design}" itemprop="price">
                {convertPrice price=$product.prices.10}
            </div>
        </div>
    </div>
{/foreach}
{else}
    {if !$loadmore}
        <div class="col-xs-12 padding-0">
            <div class="alert alert-info bold text-center">No products found for your criteria</div>
        </div>
    {/if}
{/if}
{if $count == 40 && $total_count > 40}
    <div class="col-xs-12 btn-load-more-creations">
        <div class="col-xs-12 btn btn-success btn-lg">
            <span class="glyphicon glyphicon-plus-sign"></span> Load more creations
        </div>
    </div>
{/if}
{if !$loadmore}
</div>
{/if}