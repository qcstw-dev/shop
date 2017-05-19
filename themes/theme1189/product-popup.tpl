<!--Replaced theme 1 -->
{include file="$tpl_dir./errors.tpl"}

{if $errors|@count == 0}
    {if !isset($priceDisplayPrecision)}
        {assign var='priceDisplayPrecision' value=2}
    {/if}
    {if !$priceDisplay || $priceDisplay == 2}
        {assign var='productPrice' value=$product->getPrice(true, $smarty.const.NULL, $priceDisplayPrecision)}
        {assign var='productPriceWithoutReduction' value=$product->getPriceWithoutReduct(false, $smarty.const.NULL, $priceDisplayPrecision)}
    {elseif $priceDisplay == 1}
        {assign var='productPrice' value=$product->getPrice(false, $smarty.const.NULL, $priceDisplayPrecision)}
        {assign var='productPriceWithoutReduction' value=$product->getPriceWithoutReduct(true, $smarty.const.NULL, $priceDisplayPrecision)}
    {/if}
    <div itemscope itemtype="http://schema.org/Product">
        <div class="primary_block one-column product-popup padding-top-10">
            {if isset($adminActionDisplay) && $adminActionDisplay}
                <div id="admin-action">
                    <p>{l s='This product is not visible to your customers.'}
                        <input type="hidden" id="admin-action-product-id" value="{$product->id}" />
                        <input type="submit" value="{l s='Publish'}" name="publish_button" class="exclusive" />
                        <input type="submit" value="{l s='Back'}" name="lnk_view" class="exclusive" />
                    </p>
                    <p id="admin-action-result"></p>
                </div>
            {/if}

            {if isset($confirmation) && $confirmation}
                <p class="confirmation">
                    {$confirmation}
                </p>
            {/if}
            <!-- left infos-->  
            <div class="pb-left-column col-sm-6 col-md-6 col-lg-6">
                <!-- product img-->        
                <div id="image-block" class="clearfix{if isset($images) && count($images) > 0} is_caroucel{/if}">
                    <div class="col-xs-12 font-size-13 margin-top-10 hidden bold color-danger product-picture-message">*Design not for sell. For reference only</div>
                    {if !$content_only}
                        {if $product->new}
                            <span class="new-box no-print">
                                <span class="new-label">{l s='New'}</span>
                            </span>
                        {/if}
                        {if $product->on_sale}
                            <span class="sale-box no-print">
                                <span class="sale-label">{l s='Sale!'}</span>
                            </span>
                        {/if}
                    {/if}
                    {if $have_image}
                        <span id="view_full_size">
                            {if isset($smarty.get.side) && $smarty.get.side == 'front'}
                                {assign var='cover_url' value=$cover.cover}
                            {else}
                                {assign var='cover_url' value=$link->getImageLink($product->link_rewrite, $cover.id_image, 'tm_large_default')|escape:'html':'UTF-8'}
                            {/if}
                            {if $jqZoomEnabled && $have_image}
                                <a class="jqzoom" title="{if !empty($cover.legend)}{$cover.legend|escape:'html':'UTF-8'}{else}{$product->name|escape:'html':'UTF-8'}{/if}" rel="gal1" href="{$cover_url}" itemprop="url">
                                    <img id="bigpic" itemprop="image" src="{$cover_url}" title="{if !empty($cover.legend)}{$cover.legend|escape:'html':'UTF-8'}{else}{$product->name|escape:'html':'UTF-8'}{/if}" alt="{if !empty($cover.legend)}{$cover.legend|escape:'html':'UTF-8'}{else}{$product->name|escape:'html':'UTF-8'}{/if}"/>
                                </a>
                            {else}
                                <img id="bigpic" itemprop="image" src="{$cover_url}" title="{if !empty($cover.legend)}{$cover.legend|escape:'html':'UTF-8'}{else}{$product->name|escape:'html':'UTF-8'}{/if}" alt="{if !empty($cover.legend)}{$cover.legend|escape:'html':'UTF-8'}{else}{$product->name|escape:'html':'UTF-8'}{/if}" width="{$largeSize.width}" height="{$largeSize.height}"/>
                                {if !$content_only}
                                    <span class="span_link no-print">{l s='View larger'}</span>
                                {/if}
                            {/if}
                        </span>
                    {else}
                        <span id="view_full_size">
                            <img itemprop="image" src="{$img_prod_dir}{$lang_iso}-default-large_default.jpg" id="bigpic" alt="" title="{$product->name|escape:'html':'UTF-8'}" width="{$largeSize.width}" height="{$largeSize.height}"/>
                            {if !$content_only}
                                <span class="span_link">
                                    {l s='View larger'}
                                </span>
                            {/if}
                        </span>
                    {/if}
                </div> <!-- end image-block -->

                {if isset($images) && count($images) > 0}
                    <!-- thumbnails -->
                    <div id="views_block" class="clearfix{if isset($images) && count($images) < 2} hidden{/if}">
                        <div id="thumbs_list">
                            <ul id="thumbs_list_frame">
                                {if isset($images)}
                                    {assign var='counter' value=1}
                                    {foreach from=$images key=k item=image name=thumbnails}
                                        {if preg_match('/^[0-9]+$/', $image.legend) || $image.legend == 'recess'}
                                            {continue}
                                        {else}
                                            {assign var=imageIds value="`$product->id`-`$image.id_image`"}
                                            {if !empty($image.legend)}
                                                {assign var=imageTitle value=$image.legend|escape:'html':'UTF-8'}
                                            {else}
                                                {assign var=imageTitle value=$product->name|escape:'html':'UTF-8'}
                                            {/if}
                                            <li id="thumbnail_{$image.id_image}"{if $smarty.foreach.thumbnails.last} class="last"{/if}>
                                                <a 
                                                    {if $jqZoomEnabled && $have_image}
                                                        {if isset($smarty.get.side) && $smarty.get.side == 'front' && $image.cover}
                                                            {assign var='img_url_small' value=$image.cover}
                                                            {assign var='img_url_large' value=$image.cover}
                                                        {else}
                                                            {assign var='img_url_small' value=$link->getImageLink($product->link_rewrite, $imageIds, 'tm_large_default')|escape:'html':'UTF-8'}
                                                            {assign var='img_url_large' value=$link->getImageLink($product->link_rewrite, $imageIds, 'tm_large_default')|escape:'html':'UTF-8'}
                                                        {/if}
                                                        {if $counter==1 || $k == 'design'}
                                                            class="first-thumb"
                                                        {/if}
                                                        {$counter++}
                                                        href="javascript:void(0);"
                                                        rel="{literal}{{/literal}gallery: 'gal1', smallimage: '{$img_url_small}',largeimage: '{$img_url_large}'{literal}}{/literal}"
                                                    {else}
                                                        {if isset($smarty.get.side) && $smarty.get.side == 'front' && $image.cover}
                                                            {assign var='img_url' value=$image.cover}
                                                        {else}
                                                            {assign var='img_url' value=$link->getImageLink($product->link_rewrite, $imageIds, 'tm_thickbox_default')|escape:'html':'UTF-8'}
                                                        {/if}
                                                        href="{$img_url}"
                                                        data-fancybox-group="other-views"
                                                        class="fancybox{if $image.id_image == $cover.id_image} shown{/if}"
                                                    {/if}
                                                    title="{$imageTitle}">
                                                    {if isset($smarty.get.side) && $smarty.get.side == 'front' && isset($image.cover) && $image.cover}
                                                        {assign var='mini_img_url' value=$image.cover}
                                                    {else if isset($smarty.get.side) && $smarty.get.side == 'front' && $k == 'design' && isset($image.picture)}
                                                        {assign var='mini_img_url' value=$image.picture}
                                                    {else}
                                                        {assign var='mini_img_url' value=$link->getImageLink($product->link_rewrite, $imageIds, 'tm_cart_default')|escape:'html':'UTF-8'}
                                                    {/if}
                                                    <img class="img-responsive" id="thumb_{$image.id_image}" src="{$mini_img_url}" alt="{$imageTitle}" title="{$imageTitle}" height="{$cartSize.height}" width="{$cartSize.width}" itemprop="image" />
                                                </a>
                                            </li>
                                        {/if}
                                    {/foreach}
                                {/if}
                            </ul>
                        </div> <!-- end thumbs_list -->
                    </div> 
                    <!-- end views-block -->
                    <!-- end thumbnails -->
                {/if}
                {if isset($images) && count($images) > 1}
                    <p class="resetimg clear no-print">
                        <span id="wrapResetImages" style="display: none;">
                            <a href="{$link->getProductLink($product)|escape:'html':'UTF-8'}" data-id="resetImages">
                                <i class="fa fa-repeat"></i>
                                {l s='Display all pictures'}
                            </a>
                        </span>
                    </p>
                {/if}
            </div>
            <!-- center infos -->
            <div class="pb-right-column col-sm-6">
                <div class="bg-container">
                    <h1 itemprop="name" class="padding-bottom-5 margin-top-10 border-bottom">{$product->name|escape:'html':'UTF-8'}</h1>

                    {if $product->description}
                        <div class="grid-desc padding-top-5 margin-bottom-10 border-bottom">{$product->description|truncate:300:'...'}</div>
                    {/if}
                    {if $features}
                        {assign var="logoProcessDisplayed" value="false"}
                        <div class="margin-bottom-10 border-bottom">
                            <div class="col-md-6 padding-0">
                                <p><span class="bold">{l s='Reference'}</span>: {$product->reference}</p>
                                {foreach from=$features key=k item=feature}
                                    {if $k == 2}
                                    </div>
                                    <div class="col-md-6 padding-0">
                                    {/if}
                                    {if isset($feature.value)}
                                        <p><span class="bold">{$feature.name|escape:'html':'UTF-8'}</span>: {$feature.value|escape:'html':'UTF-8'}</p>
                                        {if $feature.name == 'Logo process'}
                                            {assign var="logoProcessDisplayed" value="true"}
                                        {/if}
                                    {/if}
                                {/foreach}
                                {if $logoProcessDisplayed == 'false'}
                                    <p><span class="bold">{l s='Logo process'}</span>: {l s='Doming'}</p>
                                {/if}
                                <p><span class="bold">{l s='Unit weight'}</span>: {round($product->weight,2)}g</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    {/if}
                    {if $colors && (!isset($smarty.get.side) || (isset($smarty.get.side) && $smarty.get.side != 'front'))}
                        <div class="border-bottom">
                            <div class="pull-left bold">{l s='Colors available'}: </div>
                            <div class="pull-left">
                                <ul class="color-preview-list margin-bottom-5">
                                    {foreach from=$colors item=color}
                                        <li class="color-preview" style="background: {$color.color}"></li>
                                        {/foreach}
                                </ul>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    {/if}
                    <div class="content_prices">
                        <!-- prices -->
                        <div class="col-xs-12 padding-top-5 padding-left-0 margin-bottom-10">
                            <div class="col-xs-6 col-sm-12 border padding-0">
                                <div class="tab-price-cel-first col-sm-2 padding-0 text-center padding-0">Quantity</div>
                                {foreach from=$prices key=quantity item=price}
                                    <div class="tab-price-cel col-sm-1 padding-0 text-center border-left">{$quantity}pc{if $quantity > 1}s{/if}</div>
                                {/foreach}
                            </div>
                            <div class="col-xs-6 col-sm-12 border border-top-0 padding-0">
                                <div class="tab-price-cel-first col-sm-2 padding-0 text-center padding-0">Unit price</div>
                                {foreach from=$prices key=quantity item=price}
                                    <div class="tab-price-cel col-sm-1 padding-0 text-center border-left">{convertPrice price=$price}</div>
                                {/foreach}
                            </div>
                        </div>
                        <div class="clear"></div>
                    </div> <!-- end content_prices -->
                    {if $product->category != 'designs' && (!isset($smarty.get.side) || (isset($smarty.get.side) && $smarty.get.side != 'admin')) }
                        <div class="pull-left">
                            <div class="our_price_display" itemprop="offers" itemscope itemtype="http://schema.org/Offer">
                                {strip}
                                    <span id="our_price_display" itemprop="price">{convertPrice price=$prices.10}*</span>
                                    <meta itemprop="priceCurrency" content="{$currency->iso_code}" />
                                    {hook h="displayProductPriceBlock" product=$product type="price"}
                                {/strip}
                            </div>
                            <div>{l s='*price for 10 pieces'}</div>
                        </div>
                    {/if}
                    {if (isset($smarty.get.side) && $smarty.get.side == 'front' && $id_creation)}
                        <div class="btn btn-primary add-creation margin-top-20 margin-left-20" data-id-creation="{$id_creation}"><span class="glyphicon glyphicon-shopping-cart"></span> Add to cart</div>
                    {/if}
                    {if !isset($smarty.get.side) || (isset($smarty.get.side) && $smarty.get.side != 'admin' && $smarty.get.side != 'front' && $smarty.get.side != 'front_mobile')}
                        <div class="product_attributes pull-right">
                            {assign var="isInSelection" value="{($selection && in_array($product->id, $selection))}"}
                            <div class="btn btn-default selection margin-bottom-10 product-{$product->id}"
                                 data-product-link="{$product->getLink()|escape:'html':'UTF-8'}" 
                                 data-img="{$link->getImageLink($product->link_rewrite, $product->image.id_image, 'tm_home_default')|escape:'html':'UTF-8'}" 
                                 data-id="{$product->id}" data-product-title="{$product->name}"
                                 data-type="product"
                                 data-text-add="{l s='Add to selection'}" 
                                 data-text-remove="{l s='Remove from selection'}">
                                <span class="glyphicon glyphicon-{if !$isInSelection}plus{else}minus{/if}-sign"></span> <span class="text">{if !$isInSelection} {l s='Add to selection'} {else} {l s='Remove from selection'}{/if}</span>
                            </div>
                        </div>
                    {/if}
                    {if isset($smarty.get.side) && $smarty.get.side == 'front_mobile'}
                        <div class="pull-right margin-right-20">
                            <a class="btn btn-default" href="{$base_uri}mobile-designs?id_product={$product->id}">
                                <span class="glyphicon glyphicon-plus-sign color-green"></span> <span class="text">{l s='Select'}</span>
                            </a>
                        </div>
                    {/if}

                </div>
            </div>
            <!-- end center infos-->
            <div class="clearfix"></div>
        </div> <!-- end primary_block -->
    </div> <!-- itemscope product wrapper -->
{/if}
