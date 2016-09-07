{if isset($products) && $products}
    {*define number of products per line in other page for desktop*}
    {if $page_name !='category'}
        {if ($hide_left_column || $hide_right_column) && ($hide_left_column !='true' || $hide_right_column !='true')}     {* left or right column *}
                {assign var='nbItemsPerLine' value=3}
                {assign var='nbItemsPerLineTablet' value=2}
                {assign var='nbItemsPerLineMobile' value=2}
            {elseif ($hide_left_column && $hide_right_column) && ($hide_left_column =='true' && $hide_right_column =='true')} {* no columns *}
                {assign var='nbItemsPerLine' value=4}
                {assign var='nbItemsPerLineTablet' value=4}
                {assign var='nbItemsPerLineMobile' value=2}
            {else}																											  {* left and right column *}
                {assign var='nbItemsPerLine' value=2}
                {assign var='nbItemsPerLineTablet' value=1}
                {assign var='nbItemsPerLineMobile' value=2}
            {/if}
        {else}																												  {* category page *}
            {assign var='nbItemsPerLine' value=3}
            {assign var='nbItemsPerLineTablet' value=2}
            {assign var='nbItemsPerLineMobile' value=2}
        {/if}
        {*define numbers of product per line in other page for tablet*}

        {assign var='nbLi' value=$products|@count}
        {math equation="nbLi/nbItemsPerLine" nbLi=$nbLi nbItemsPerLine=$nbItemsPerLine assign=nbLines}
        {math equation="nbLi/nbItemsPerLineTablet" nbLi=$nbLi nbItemsPerLineTablet=$nbItemsPerLineTablet assign=nbLinesTablet}

        <!-- Products list -->
        <ul{if isset($id) && $id} id="{$id}"{/if} class="product_list grid row{if isset($class) && $class} {$class}{/if}">
            {foreach from=$products item=product name=products}
                {assign var="isInSelection" value="{($selection && in_array($product.id_product, $selection))}"}
                {math equation="(total%perLine)" total=$smarty.foreach.products.total perLine=$nbItemsPerLine assign=totModulo}
                {math equation="(total%perLineT)" total=$smarty.foreach.products.total perLineT=$nbItemsPerLineTablet assign=totModuloTablet}
                {math equation="(total%perLineM)" total=$smarty.foreach.products.total perLineM=$nbItemsPerLineMobile assign=totModuloMobile}
            {if $totModulo == 0}{assign var='totModulo' value=$nbItemsPerLine}{/if}
        {if $totModuloTablet == 0}{assign var='totModuloTablet' value=$nbItemsPerLineTablet}{/if}
    {if $totModuloMobile == 0}{assign var='totModuloMobile' value=$nbItemsPerLineMobile}{/if}
    <li class="ajax_block_product col-xs-6 col-sm-{12/$nbItemsPerLineTablet} col-md-{12/$nbItemsPerLine}{if $smarty.foreach.products.iteration%$nbItemsPerLine == 0} last-in-line{elseif $smarty.foreach.products.iteration%$nbItemsPerLine == 1} first-in-line{/if}{if $smarty.foreach.products.iteration > ($smarty.foreach.products.total - $totModulo)} last-line{/if}{if $smarty.foreach.products.iteration%$nbItemsPerLineTablet == 0} last-item-of-tablet-line{elseif $smarty.foreach.products.iteration%$nbItemsPerLineTablet == 1} first-item-of-tablet-line{/if}{if $smarty.foreach.products.iteration%$nbItemsPerLineMobile == 0} last-item-of-mobile-line{elseif $smarty.foreach.products.iteration%$nbItemsPerLineMobile == 1} first-item-of-mobile-line{/if}{if $smarty.foreach.products.iteration > ($smarty.foreach.products.total - $totModuloMobile)} last-mobile-line{/if}">
        <div class="product-container" itemscope itemtype="http://schema.org/Product">
            <div class="left-block">
                <div class="product-image-container">
                    {if $product.category == 'products'}
                        <div class="col-xs-12 padding-0">
                            <div class="col-md-6 padding-0">
                                <a class="btn btn-default btn-detail cursor-pointer quick-view-bis" href="{$product.link|escape:'html':'UTF-8'}" rel="{$product.link|escape:'html':'UTF-8'}">
                                    <span class="glyphicon glyphicon-zoom-in"></span> {l s='Product details'}
                                </a>
                            </div>
                            <div class="col-md-6 padding-0">
                            {else}
                                <div class="col-xs-12 padding-0">
                                    <div class="col-xs-12 padding-0">
                                    {/if}
                                    <div class="btn btn-default selection cursor-pointer {if !$isInSelection}btn-add{else}btn-remove{/if} product-{$product.id_product}" data-product-link="{$product.link|escape:'html':'UTF-8'}" data-img="{$link->getImageLink($product.link_rewrite, $product.id_image, 'tm_home_default')|escape:'html':'UTF-8'}" data-img-large="{$link->getImageLink($product.link_rewrite, $product.id_image, 'tm_thickbox_default')|escape:'html':'UTF-8'}" data-id="{$product.id_product}" data-product-title="{$product.name}" data-type="{$product.category}" title="{if !$isInSelection} {l s='Add to selection'} {else} {l s='Remove from selection'}{/if}" data-text-add="{l s='Add to selection'}" data-text-remove="{l s='Remove from selection'}">
                                        <span class="glyphicon glyphicon-{if !$isInSelection}plus-sign{else}minus-sign{/if}"></span> <span class="text">{if !$isInSelection}{l s='Add to selection'}{else}{l s='Remove from selection'}{/if}</span>
                                    </div>
                                </div>
                            </div>
                            {if isset($quick_view) && $quick_view && $product.category == 'products'}
                                <a class="quick-view-bis product_img_link" href="{$product.link|escape:'html':'UTF-8'}" rel="{$product.link|escape:'html':'UTF-8'}">
                            {/if}
                            <img class="replace-2x img-responsive {if $product.category != 'products'}popup{/if}" data-src="{$link->getImageLink($product.link_rewrite, $product.id_image, 'tm_thickbox_default')|escape:'html':'UTF-8'}" src="{$link->getImageLink($product.link_rewrite, $product.id_image, 'tm_home_default')|escape:'html':'UTF-8'}" alt="{if !empty($product.legend)}{$product.legend|escape:'html':'UTF-8'}{else}{$product.name|escape:'html':'UTF-8'}{/if}" title="{if !empty($product.legend)}{$product.legend|escape:'html':'UTF-8'}{else}{$product.name|escape:'html':'UTF-8'}{/if}" itemprop="image" />
                            {if isset($quick_view) && $quick_view}
                                </a>
                            {/if}
                            {hook h="displayProductListImages" product=$product}
                            {hook h="displayProductListGallery" product=$product}
                        </div>
                        {hook h="displayProductDeliveryTime" product=$product}
                        {hook h="displayProductPriceBlock" product=$product type="weight"}
                    </div>
                    <div class="right-block">
                        {if $product.category == 'products'}
                            <h5 itemprop="name">
                                {if isset($product.pack_quantity) && $product.pack_quantity}{$product.pack_quantity|intval|cat:' x '}{/if}
                                <a class="quick-view-bis product-name" rel="{$product.link|escape:'html':'UTF-8'}" title="{$product.name|escape:'html':'UTF-8'}" href="{$product.link|escape:'html':'UTF-8'}" title="{$product.name|escape:'html':'UTF-8'}" itemprop="url" >
                                    <span class="list-name">{$product.name|cat:$product.reference|truncate:100:'...'|escape:'html':'UTF-8'}</span>
                                    <span class="grid-name">{$product.name|cat:$product.reference|truncate:30:'...'|escape:'html':'UTF-8'}</span>
                                </a>
                            </h5>
                        {/if}
                    <p class="product-desc" itemprop="description">
                        <span class="list-desc">{$product.description_short|strip_tags:'UTF-8'|truncate:360:'...'}</span>
                        <span class="grid-desc">{$product.description_short|strip_tags:'UTF-8'|truncate:40:'...'}</span>
                    </p>
                    {if (!$PS_CATALOG_MODE && $product.category == 'products' && ((isset($product.show_price) && $product.show_price) || (isset($product.available_for_order) && $product.available_for_order)))}
                        <div itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="content_price">
                            {if isset($product.show_price) && $product.show_price && !isset($restricted_country_mode)}
                                <span itemprop="price" class="price product-price{if isset($product.specific_prices) && $product.specific_prices && isset($product.specific_prices.reduction) && $product.specific_prices.reduction > 0} product-price-new{/if}">
                            {if !$priceDisplay}{convertPrice price=$product.price}{else}{convertPrice price=$product.price_tax_exc}{/if}
                        </span>
                        <meta itemprop="priceCurrency" content="{$currency->iso_code}" />
                        {if isset($product.specific_prices) && $product.specific_prices && isset($product.specific_prices.reduction) && $product.specific_prices.reduction > 0}
                            {hook h="displayProductPriceBlock" product=$product type="old_price"}
                            <span class="old-price product-price">
                                {displayWtPrice p=$product.price_without_reduction}
                            </span>
                            {hook h="displayProductPriceBlock" id_product=$product.id_product type="old_price"}
                            {if $product.specific_prices.reduction_type == 'percentage'}
                                <span class="price-percent-reduction">-{$product.specific_prices.reduction * 100}%</span>
                            {/if}
                        {/if}
                        {hook h="displayProductPriceBlock" product=$product type="price"}
                        {hook h="displayProductPriceBlock" product=$product type="unit_price"}
                    {/if}
                </div>
            {/if}
            <div class="hovBox">
                {hook h='displayProductListReviews' product=$product}
                <div class="button-container">
                    {*{We avoid to display cart button adding a condition if 'false' }*}
                    {if 
                false &&
                (($product.id_product_attribute == 0 || (isset($add_prod_display) && ($add_prod_display == 1))) && $product.available_for_order && !isset($restricted_country_mode) && $product.customizable != 2 && !$PS_CATALOG_MODE)}
                    {if (!isset($product.customization_required) || !$product.customization_required) && ($product.allow_oosp || $product.quantity > 0)}
                    {capture}add=1&amp;id_product={$product.id_product|intval}{if isset($static_token)}&amp;token={$static_token}{/if}{/capture}
                    <a class="ajax_add_to_cart_button btn btn-default" href="{$link->getPageLink('cart', true, NULL, $smarty.capture.default, false)|escape:'html':'UTF-8'}" rel="nofollow" title="{l s='Add to cart'}" data-id-product="{$product.id_product|intval}" data-minimal_quantity="{if isset($product.product_attribute_minimal_quantity) && $product.product_attribute_minimal_quantity > 1}{$product.product_attribute_minimal_quantity|intval}{else}{$product.minimal_quantity|intval}{/if}">
                        <span>{l s='Add to cart'}</span>
                    </a>					
                {else}
                    <span class="ajax_add_to_cart_button btn btn-default disabled">
                        <span>{l s='Add to cart'}</span>
                    </span>
                {/if}
                {/if}
                    {if $product.category == 'products'}
                        <a itemprop="url" class="lnk_view quick-view-bis btn btn-default" rel="{$product.link|escape:'html':'UTF-8'}" href="{$product.link|escape:'html':'UTF-8'}" title="{l s='View'}">
                            <span class="glyphicon glyphicon-zoom-in"></span> {l s='Product details'}
                        </a>
                    {/if}
                </div>
                {if isset($product.color_list)}
                    <div class="color-list-container">{$product.color_list}</div>
                {/if}
                <div class="product-flags">
                    {if (!$PS_CATALOG_MODE AND ((isset($product.show_price) && $product.show_price) || (isset($product.available_for_order) && $product.available_for_order)))}
                        {if isset($product.online_only) && $product.online_only}
                            <span class="online_only">{l s='Online only'}</span>
                        {/if}
                    {/if}
                    {if isset($product.on_sale) && $product.on_sale && isset($product.show_price) && $product.show_price && !$PS_CATALOG_MODE}
                    {elseif isset($product.reduction) && $product.reduction && isset($product.show_price) && $product.show_price && !$PS_CATALOG_MODE}
                        <span class="discount">{l s='Reduced price!'}</span>
                    {/if}
                </div>
                {if (!$PS_CATALOG_MODE && $PS_STOCK_MANAGEMENT && ((isset($product.show_price) && $product.show_price) || (isset($product.available_for_order) && $product.available_for_order)))}
                    {if isset($product.available_for_order) && $product.available_for_order && !isset($restricted_country_mode)}
                        <span itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="availability">
                            {if ($product.allow_oosp || $product.quantity > 0)}
                                <span class="{if $product.quantity <= 0 && !$product.allow_oosp}out-of-stock{else}available-now{/if}">
                                    <link itemprop="availability" href="http://schema.org/InStock" />{if $product.quantity <= 0}{if $product.allow_oosp}{if isset($product.available_later) && $product.available_later}{$product.available_later}{else}{l s='In Stock'}{/if}{else}{l s='Out of stock'}{/if}{else}{if isset($product.available_now) && $product.available_now}{$product.available_now}{else}{l s='In Stock'}{/if}{/if}
                                </span>
                            {elseif (isset($product.quantity_all_versions) && $product.quantity_all_versions > 0)}
                                <span class="available-dif">
                                    <link itemprop="availability" href="http://schema.org/LimitedAvailability" />{l s='Product available with different options'}
                                </span>
                            {else}
                                <span class="out-of-stock">
                                    <link itemprop="availability" href="http://schema.org/OutOfStock" />{l s='Out of stock'}
                                </span>
                            {/if}
                        </span>
                    {/if}
                {/if}
            </div>
        </div>
    </div><!-- .product-container> -->
    </li>
    {/foreach}
        </ul>
        {addJsDefL name=min_item}{l s='Please select at least one product' js=1}{/addJsDefL}
        {addJsDefL name=max_item}{l s='You cannot add more than %d product(s) to the product comparison' sprintf=$comparator_max_item js=1}{/addJsDefL}
        {addJsDef comparator_max_item=$comparator_max_item}
        {addJsDef comparedProductsIds=$compared_products}
        {addJsDef nbItemsPerLine=$nbItemsPerLine}
        {addJsDef nbItemsPerLineTablet=$nbItemsPerLineTablet}
        {addJsDef nbItemsPerLineMobile=$nbItemsPerLineMobile}
        {/if}