{if $products}
    {if $bLoadJs}
        <div class="white-popup padding-10">
            <div class="product-list">
                <div class="col-xs-12 margin-bottom-20">
                    <div class="btn-group pull-left">
                        <button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="glyphicon glyphicon-filter"></span>
                            Filter products by category
                            <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu dropdown-menu-popup-list-prod">
                            <li>
                                <div class="filter-category cursor-pointer padding-10" data-id-category="45">
                                    <div class="col-xs-3 thumbnail margin-bottom-0">
                                        <img src="{$link->getCatImageLink($products_categories[45]['link_rewrite'], 45, 'tm_cart_default')}" class="" alt="{$products_categories.45.name}" title="{$products_categories.45.name}" />
                                    </div>
                                    <div class="col-xs-8 padding-top-20 font-size-13 bold">
                                        All
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </li>
                            {foreach from=$categories item='category'}
                                <li>
                                    <div class="filter-category cursor-pointer padding-10" data-id-category="{$category.id_category}">
                                        <div class="col-xs-3 thumbnail margin-bottom-0">
                                            <img src="{$link->getCatImageLink($category['link_rewrite'], $category['id_category'], 'tm_cart_default')}" class="" alt="{$category.name}" title="{$category.name}" />
                                        </div>
                                        <div class="col-xs-8 padding-top-20 font-size-13 bold">
                                            {$category.name}
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </li>
                            {/foreach}
                        </ul>
                    </div>
                </div>
                <div class="col-xs-12 font-size-15 margin-bottom-20 bold padding-bottom-5 border-bottom title-category"></div>
                <div class="clearfix"></div>
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
                                <span class="glyphicon glyphicon-info-sign"></span><span class="hidden-xs"> Info</span>
                            </div>
                        </div>
                        <div class="col-xs-12 slick-pictures-product-list slick-pictures-product-list-{$id_item} margin-bottom-0">
                            <div class="thumbnail border-none margin-bottom-0 cursor-pointer quick-view" data-url="{$base_uri}product-popup?id_product={$product.id_product}" data-id="{$product.id_product}">
                                <img class="picture" src="{$link->getImageLink($product.link_rewrite, $product.images.0.id_image, 'large_default')|escape:'html':'UTF-8'}" />
                            </div>
                            {*{foreach from=$product.images item=image name=images}
                            <div class="thumbnail border-none margin-bottom-0 cursor-pointer quick-view" data-url="{$base_uri}product-popup?id_product={$product.id_product}" data-id="{$product.id_product}">
                            <img class="picture" src="{$link->getImageLink($product.link_rewrite, $image.id_image, 'large_default')|escape:'html':'UTF-8'}" />
                            </div>
                            {/foreach}*}
                        </div>
                        <div class="col-xs-12 font-size-13 bold padding-bottom-5">Excluding commission: <span class="font-size-15">{convertPrice price=$product.prices.10}</span></div>
                        <div class="btn btn-success col-xs-12 btn-select-product" data-id-product="{$product.id_product}">Select</div>
                    </div>
                </div>
                {assign var=id_item value=$id_item+1}
            {/foreach}
            {if $bLoadJs}
            </div>
            <div id="waypoint">&nbsp;</div>
            <div class="clearfix"></div>
        </div>
        {*<script>
        $('.slick-pictures-product-list').slick({
        infinite: true,
        slidesToShow: 1,
        slidesToScroll: 1,
        responsive: []
        });
        </script>*}
        <script type="text/javascript" src="{$js_dir}custom-shop-product-list.js"></script>
    {/if}
{/if}