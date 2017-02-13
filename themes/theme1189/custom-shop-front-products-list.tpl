{foreach from=$products item='product'}
    <div class="col-xs-12 col-sm-6 col-lg-3 margin-bottom-10">
        <div class="col-xs-12 padding-20 border shadow">
            <div class="col-xs-8 col-sm-8 col-md-7 padding-left-0">
                <div class="btn btn-primary col-xs-12"><span class="glyphicon glyphicon-shopping-cart"></span> Add to cart</div>
            </div>
            <div class="col-xs-4 col-sm-4 col-md-5 padding-right-0">
                <div class="btn btn-default col-xs-12 quick-view" data-url="{$base_uri}product-popup?id_product={$product.id_product}" data-id-creation="{$product.id}" data-id-design="{$product.id_design}">
                    <span class="glyphicon glyphicon-zoom-in"></span><span class="hidden-xs hidden-sm"> Info</span>
                </div>
            </div>
            <div class="col-xs-12 font-size-15 padding-0 margin-top-10 bold text-center">
                {if $product.product_name}
                    {$product.product_name|truncate:15:'...'|escape:'html':'UTF-8'}
                {else}
                    Product of {$shop.title|truncate:15:'...'|escape:'html':'UTF-8'}
                {/if}
            </div>
            <div class="col-xs-12 padding-0 margin-top-10">
                <div class="thumbnail margin-bottom-0">
                    <img src="{$base_dir}img/custom_shop/creation/{$product.custom_img}" class="big-picture-{$product.id} popup-picture" alt="{$shop.title}" title="{$shop.title}" />
                </div>
                <div class="col-xs-4 padding-5">
                    <div class="thumbnail margin-bottom-0">
                        <img class="mini-picture" src="{$base_dir}img/custom_shop/creation/{$product.custom_img}" data-id-creation="{$product.id}" alt="{$shop.title}" title="{$shop.title}" />
                    </div>
                </div>
                {foreach from=$product.images item=image name=images}
                    <div class="col-xs-4 padding-5">
                        <div class="thumbnail margin-bottom-0" data-id="{$product.id_product}">
                            <img class="mini-picture" src="{$link->getImageLink($product.link_rewrite, $image.id_image, 'large_default')|escape:'html':'UTF-8'}" data-id-creation="{$product.id}" alt="{$shop.title}" title="{$shop.title}"/>
                        </div>
                    </div>
                {/foreach}
            </div>
            <div class="col-xs-12 font-size-20 margin-top-10 text-center bold">{convertPrice price=$product.prices.10}</div>
        </div>
    </div>
{/foreach}
<div class="clearfix"></div>