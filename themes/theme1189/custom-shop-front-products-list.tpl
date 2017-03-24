{foreach from=$products key=index item='product'}
    <div class="col-xs-12 col-sm-6 col-lg-3 margin-bottom-10">
        <div class="col-xs-12 padding-10 border shadow">
            <div class="col-xs-7 padding-left-0">
                <div class="btn btn-primary add-creation col-xs-12" data-id-creation="{$product.id}"><span class="glyphicon glyphicon-shopping-cart"></span> <span class="hidden-xs">Add to cart</span></div>
            </div>
            <div class="col-xs-5 padding-right-0">
                <div class="btn btn-default col-xs-12 quick-view" data-url="{$base_uri}product-popup?id_product={$product.id_product}" data-id-creation="{$product.id}" data-id-design="{$product.id_design}">
                    <span class="glyphicon glyphicon-info-sign"></span><span class="hidden-xs hidden-sm"> Info</span>
                </div>
            </div>
            <div class="col-xs-12 font-size-15 padding-0 margin-top-10 bold text-center vertical-center product-title">
                {if $product.product_name}
                    {$product.product_name|escape:'html':'UTF-8'}
                {else}
                    {'Product of'|cat:$shop.title|truncate:15:'...'|escape:'html':'UTF-8'}
                {/if}
            </div>
            <div class="col-xs-12 padding-0">
                <div class="thumbnail margin-bottom-0">
                    <img src="{$base_dir}img/custom_shop/creation/{$product.custom_img}" class="big-picture-{$product.id} popup-picture" alt="{$product.product_name}" title="{$product.product_name}"/>
                </div>
                <div class="col-xs-4 padding-5">
                    <div class="thumbnail margin-bottom-0">
                        <img class="mini-picture" src="{$base_dir}img/custom_shop/creation/{$product.custom_img}" data-id-creation="{$product.id}" alt="{$product.product_name}" title="{$product.product_name}" />
                    </div>
                </div>
                {foreach from=$product.images item=image name=images}
                    <div class="col-xs-4 padding-5">
                        <div class="thumbnail margin-bottom-0" data-id="{$product.id_product}">
                            <img class="mini-picture" src="{$link->getImageLink($product.link_rewrite, $image.id_image, 'large_default')|escape:'html':'UTF-8'}" data-id-creation="{$product.id}" alt="{$product.product_name}" title="{$product.product_name}"/>
                        </div>
                    </div>
                {/foreach}
            </div>
            <div class="col-xs-12 font-size-20 text-center bold">{convertPrice price=$product.prices.10}</div>
        </div>
    </div>
{/foreach}
<div class="clearfix"></div>