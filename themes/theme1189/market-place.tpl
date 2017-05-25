<div class="col-xs-2 margin-top-20 padding-top-10 border">
    <div class="bold font-size-20">Design category:</div>
    <ul>
        {foreach from=$design_categories item='design_category'}
            <li>
                <label class="checkbox cursor-pointer"><input class="design-cat-{$design_category.id}" type="checkbox" {if isset($criteria.id_cat_design) && ((is_array($criteria.id_cat_design) && in_array($design_category.id, $criteria.id_cat_design)) || $design_category.id == $criteria.id_cat_design)}checked{/if}/> {$design_category.name}</label>
            </li>
        {/foreach}
    </ul>
    <div class="bold font-size-20 margin-top-20">Product type:</div>
    <ul>
        {foreach from=$product_categories item='product_category'}
            <li>
                <label class="checkbox cursor-pointer"><input class="product-cat-{$product_category.id_category}" type="checkbox" {if isset($criteria.id_cat_prod) && ((is_array($criteria.id_cat_prod) && in_array($product_category.id_category, $criteria.id_cat_prod)) || $product_category.id_category == $criteria.id_cat_prod)}checked{/if}/> {$product_category.name}</label>
            </li>
        {/foreach}
    </ul>
</div>
<div class="col-xs-10 margin-top-20 products-container">
    {foreach from=$products item='product'}
        <div class="col-xs-4 margin-bottom-20">
            <div class="col-xs-12 border shadow padding-top-10 padding-bottom-10" itemscope itemtype="http://schema.org/Product">
                <div class="thumbnail margin-bottom-10 cursor-pointer quick-view-creation" 
                     data-id-product="{$product.id_product}" 
                     data-id-creation="{$product.id}"
                     data-id-design="{$product.id_design}">
                    <img itemprop="image" src="{$base_dir_ssl}img/custom_shop/creation/{$product.custom_img}" alt="{$product.product_name}" title="{$product.product_name}" />
                </div>
               <h5 itemprop="name" class="col-xs-12 padding-0 bold text-center creation-title cursor-pointer quick-view-creation" 
                     data-id-product="{$product.id_product}" 
                     data-id-creation="{$product.id}"
                     data-id-design="{$product.id_design}">{$product.product_name}</h5>
                <div class="col-xs-6 padding-0 creation-shop-name">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                    <a href="{$base_dir}shop/{$product.shop.name}" class="underline" title="{$product.shop.name}" target="_blank">
                {if $product.shop.title}{$product.shop.title}{else}{$product.shop.name}{/if}
            </a>
        </div>
        <div class="col-xs-6 padding-0 text-center bold font-size-20 cursor-pointer quick-view-creation" 
             data-id-product="{$product.id_product}" 
             data-id-creation="{$product.id}"
             data-id-design="{$product.id_design}" itemprop="price">{convertPrice price=$product.prices.10}</div>
         <div class="col-xs-12 padding-0">
             <div class="btn {if in_array($product['id'], $cart_creations_id)}btn-success{else}btn-primary{/if} btn-lg add-creation col-xs-12" data-id-creation="{$product.id}">
                <span class="glyphicon {if in_array($product['id'], $cart_creations_id)}glyphicon-ok{else}glyphicon-shopping-cart{/if}"></span> <span class="">Add to cart</span>
            </div>
         </div>
    </div>
</div>
{/foreach}
</div>