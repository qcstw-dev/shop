{if $bLoadJs}
    <div class="white-popup">
    {/if}
    {if isset($first_item_id)}
        {assign var='id_item' value=$first_item_id}
    {else}
        {assign var='id_item' value=1}
    {/if}
    {foreach from=$products item='product'}
        <div class="col-xs-12 col-sm-4 margin-bottom-10 block-product">
            <div class="col-xs-12 padding-0 padding-10 border shadow">
                <div class="col-xs-8 font-size-13 padding-0 margin-top-10 bold product-name">
                    {$product.name|truncate:15:'...'|escape:'html':'UTF-8'}
                </div>
                <div class="col-xs-4 padding-0">
                    <div class="btn btn-default quick-view col-xs-12" data-url="{$base_uri}product-popup?id_product={$product.id_product}">
                        <span class="glyphicon glyphicon-info-sign"></span> Info
                    </div>
                </div>
                <div class="col-xs-12 slick-pictures-product-list slick-pictures-product-list-{$id_item} margin-bottom-0">
                    {foreach from=$product.images item=image name=images}
                        <div class="thumbnail border-none margin-bottom-0 cursor-pointer quick-view" data-url="{$base_uri}product-popup?id_product={$product.id_product}" data-id="{$product.id_product}">
                            <img class="picture" src="{$link->getImageLink($product.link_rewrite, $image.id_image, 'large_default')|escape:'html':'UTF-8'}" />
                        </div>
                    {/foreach}
                </div>
                <div class="col-xs-12 font-size-15 bold">{convertPrice price=$product.prices.10}</div>
                <div class="btn btn-success col-xs-12 btn-select-product" data-id-product="{$product.id_product}">Select</div>
            </div>
        </div>
        {assign var=id_item value=$id_item+1}
    {/foreach}
    <div class="clearfix"></div>
    {if $bLoadJs}
    </div>
    <script>
        $('.slick-pictures-product-list').slick({
            infinite: true,
            slidesToShow: 1,
            slidesToScroll: 1,
            responsive: []
        });
    </script>
    <script type="text/javascript" src="{$js_dir}custom-shop-product-list.js"></script>
{/if}