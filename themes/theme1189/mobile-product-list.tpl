{if isset($products) && $products}
    {if isset($first_item_id)}
        {assign var='id_item' value=$first_item_id}
    {else}
        {assign var='id_item' value=1}
    {/if}
    {foreach from=$products key=key item=product name=products}
        {if $product.id_category_default == '45'}
            <div class="col-xs-6 col-md-3 margin-bottom-10 block-product">
                <div class="col-xs-12 border padding-0">
                    <div class="col-xs-6 padding-0 padding-top-5 padding-bottom-5 text-center btn-add selection product-{$product.id_product}" data-id="{$product.id_product}" title="{l s='Add to selection'}">
                        <a href="{$base_uri}mobile-designs?id_product={$product.id_product}">
                            <span class="glyphicon glyphicon-plus-sign"></span> <span class="text">{l s='Select'}</span>
                        </a>
                    </div>
                    <a href="{$base_uri}mobile-product-page?id_product={$product.id_product}">
                        <div class="col-xs-6 padding-0 padding-top-5 padding-bottom-5 text-center preview product-{$product.id_product}" data-id="{$product.id_product}" title="{l s='Product details'}">
                            <span class="glyphicon glyphicon-zoom-in"></span> <span class="text">{l s='Details'}</span>
                        </div>
                        <div class="col-xs-12 border-top text-center bold padding-0 padding-top-5">
                            <span class="font-size-13">
                                {$product.name|truncate:15:'...'|escape:'html':'UTF-8'}
                            </span>
                        </div>
                    </a>
                    <div class="col-xs-12 border-bottom slick-pictures-product-list slick-pictures-product-list-{$id_item}">
                        {foreach from=$product.images item=image name=images}
                            <div class="thumbnail border-none margin-bottom-0 popup-product" data-id="{$product.id_product}">
                                <img class="picture" src="{$link->getImageLink($product.link_rewrite, $image.id_image, 'large_default')|escape:'html':'UTF-8'}" />
                            </div>
                        {/foreach}
                    </div>
                    <div class="col-xs-12 text-center bold">
                        <a href="{$base_uri}mobile-product-page?id_product={$product.id_product}">
                            <span class="price font-size-15 visible-xs">
                                {convertPrice price=$product.prices.10}
                            </span>
                            <span class="font-size-20 visible-sm">
                                {convertPrice price=$product.prices.10}
                            </span>
                        </a>
                    </div>
                    <div class="popup-product-content-{$product.id_product} hidden">
                        <div class="row">
                            <div class="col-xs-12 margin-bottom-10">
                                <div class="btn btn-default close-popup pull-left"><span class="glyphicon glyphicon-chevron-left"></span> Back</div>
                                <a href="{$base_uri}mobile-product-page?id_product={$product.id_product}" class="btn btn-default pull-right">
                                    <span class="glyphicon glyphicon-zoom-in"></span> {l s='Details'}
                                </a>
                            </div>
                            <div class="col-xs-12 text-center bold margin-bottom-10">{$product.name}</div>
                            <div class="col-xs-12 margin-bottom-10 slick-popup-{$product.id_product}">
                                {foreach from=$product.images item=image name=images}
                                    {if !is_numeric($image.legend) && $image.legend != 'recess'}
                                        <div class="thumbnail border-none margin-bottom-0">
                                            <img class="border" src="{$link->getImageLink($product.link_rewrite, $image.id_image, 'large_default')|escape:'html':'UTF-8'}" />
                                        </div>
                                    {/if}
                                {/foreach}
                            </div>
                            <a class="btn btn-success col-xs-12" href="{$base_uri}mobile-designs?id_product={$product.id_product}">
                                <span class="glyphicon glyphicon-plus-sign"></span> <span class="text">{l s='Select'}</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        {else}
            <div class="col-xs-6 col-sm-3 margin-bottom-10">
                <div class="col-xs-12 border padding-0">
                    <div class="col-xs-6 padding-0 padding-top-5 padding-bottom-5 text-center btn-add selection" data-id="{$product.id_product}" title="Add to selection">
                        <a href="{$base_uri}mobile-layout-maker?id_design={$product.id_product}">
                            <span class="glyphicon glyphicon-plus-sign"></span> <span class="text">{l s='Select'}</span>
                        </a>
                    </div>
                    <div class="popup-product" data-id="{$product.id_product}">
                        <div class="col-xs-6 padding-0 padding-top-5 padding-bottom-5 text-center preview">
                            <span class="glyphicon glyphicon-zoom-in"></span> <span class="text">{l s='Zoom'}</span>
                        </div>
                        <div class="col-xs-12 padding-0 border-bottom border-top">
                            <div class="thumbnail border-none margin-bottom-0 popup-product" data-id="{$product.id_product}">
                                <img src="{$link->getImageLink($product.link_rewrite, $product.images.0.id_image, 'medium_default')|escape:'html':'UTF-8'}" alt="" title=""/>
                            </div>
                        </div>
                        <div class="col-xs-12 text-center bold padding-0 padding-top-5">
                            <span class="font-size-13">
                                {$product.name|truncate:12:'...'|escape:'html':'UTF-8'}
                            </span>
                        </div>
                    </div>
                </div>
                <div class="popup-product-content-{$product.id_product} hidden">
                    <div class="row">
                        <div class="col-xs-12 margin-bottom-10">
                            <div class="btn btn-default close-popup pull-left col-xs-4"><span class="glyphicon glyphicon-chevron-left"></span> {l s='Back'}</div>
                            <div class="col-xs-8 font-size-15 text-center bold margin-top-5">{$product.name|escape:'html':'UTF-8'}</div>
                        </div>
                        <div class="col-xs-12 padding-0 margin-bottom-10">
                            <div class="thumbnail border-none margin-bottom-0">
                                <img class="border" src="{$link->getImageLink($product.link_rewrite, $product.images.0.id_image, 'large_default')|escape:'html':'UTF-8'}">
                            </div>
                        </div>
                        <a class="btn btn-success col-xs-12" href="{$base_uri}mobile-layout-maker?id_design={$product.id_product}">
                            <span class="glyphicon glyphicon-plus-sign"></span> <span class="text">{l s='Select'}</span>
                        </a>
                    </div>
                </div>
            </div>
        {/if}
        {assign var=id_item value=$id_item+1}
    {/foreach}
{/if}