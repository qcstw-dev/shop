{foreach from=$products key=index item='product'}
    <div class="col-xs-12 col-sm-6 col-lg-3 margin-bottom-10">
        <div class="col-xs-12 padding-10 border shadow">
            <div class="col-xs-5 padding-0">
                <div class="btn btn-primary btn-sm add-creation col-xs-12" data-id-creation="{$product.id}">
                    <span class="glyphicon glyphicon-shopping-cart"></span> <span class="">Add to cart</span>
                </div>
            </div>
            <div class="col-xs-4 padding-right-0">
                <div class="btn btn-default btn-sm col-xs-12 quick-view" data-id-product="{$product.id_product}" data-id-creation="{$product.id}" data-id-design="{$product.id_design}">
                        <div class="glyphicon glyphicon-info-sign pull-left margin-top-2"></div> Info
                </div>
            </div>
            <div class="col-xs-3 padding-right-0 text-center bold color-success cursor-pointer font-size-13 share-btn" data-id="{$product.id}"><span class="glyphicon glyphicon-share-alt"></span> Share</div>
            <div class="popup-share-{$product.id} hidden">
                <a target="_blank" class="btn btn-default col-xs-12 col-sm-6 margin-auto color-facebook bold social-network-share" href="https://www.facebook.com/sharer/sharer.php?u={$base_dir_ssl}shop/{$shop.name}?id_product={$product.id_product}%26id_creation={$product.id}%26id_design={$product.id_design}" >
                    <span class="fa fa-facebook"></span> Share on Facebook
                </a>
                <a target="_blank" class="btn btn-default col-xs-12 col-sm-6 margin-auto color-twitter margin-top-10 bold social-network-share" href="https://twitter.com/home?status={$base_dir_ssl}shop/{$shop.name}?id_product={$product.id_product}%26id_creation={$product.id}%26id_design={$product.id_design}">
                    <span class="fa fa-twitter"></span> Share on Twitter
                </a>
                <a target="_blank" class="btn btn-default col-xs-12 col-sm-6 margin-auto color-googleplus margin-top-10 bold social-network-share" href="https://plus.google.com/share?url={$base_dir_ssl}shop/{$shop.name}?id_product={$product.id_product}%26id_creation={$product.id}%26id_design={$product.id_design}">
                    <span class="fa fa-google-plus"></span> Share on Google+
                </a>
                <a target="_blank" class="btn btn-default col-xs-12 col-sm-6 margin-auto color-linkedin margin-top-10 bold social-network-share" href="https://www.linkedin.com/shareArticle?mini=true&title={$product.product_name|escape:'html':'UTF-8'}&summary=&source=&url={$base_dir_ssl}shop/{$shop.name}?id_product={$product.id_product}%26id_creation={$product.id}%26id_design={$product.id_design}">
                    <span class="fa fa-linkedin"></span> Share on Linkedin
                </a>
                <a target="_blank" class="btn btn-default col-xs-12 col-sm-6 margin-auto color-pinterest margin-top-10 bold social-network-share" href="https://www.pinterest.com/pin/create/button/" data-pin-url="{$base_dir_ssl}shop/{$shop.name}?id_product={$product.id_product}%26id_creation={$product.id}%26id_design={$product.id_design}" data-pin-media="{$base_dir_ssl}img/custom_shop/creation/{$product.custom_img}" data-pin-custom="true">
                    <span class="fa fa-pinterest"></span> Share on Pinterest
                </a>
                <div class="clearfix"></div>
            </div>
            <div class="col-xs-12 font-size-13 padding-0 bold text-center product-title">
                {if $product.product_name}
                    {$product.product_name|escape:'html':'UTF-8'}
                {else}
                    {'Product of'|cat:$shop.title|truncate:15:'...'|escape:'html':'UTF-8'}
                {/if}
            </div>
            <div class="col-xs-12 padding-0">
                <div class="thumbnail margin-bottom-0">
                    <div class="picture-mention hidden color-danger" data-id-creation="{$product.id}">*Design not for sell, for reference only</div>
                    <img src="{$base_dir_ssl}img/custom_shop/creation/{$product.custom_img}" class="big-picture-{$product.id} popup-picture" alt="{$product.product_name}" title="{$product.product_name}"/>
                </div>
                <div class="col-xs-4 padding-5">
                    <div class="thumbnail margin-bottom-0">
                        <img class="mini-picture first-thumb" src="{$base_dir_ssl}img/custom_shop/creation/{$product.custom_img}" data-id-creation="{$product.id}" alt="{$product.product_name}" title="{$product.product_name}" />
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