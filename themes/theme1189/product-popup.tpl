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
        <div class="primary_block one-column product-popup">	
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
                    {if $have_image}
                        <span id="view_full_size">
                            {if $jqZoomEnabled && $have_image}
                                <a class="jqzoom" title="{if !empty($cover.legend)}{$cover.legend|escape:'html':'UTF-8'}{else}{$product->name|escape:'html':'UTF-8'}{/if}" rel="gal1" href="{$link->getImageLink($product->link_rewrite, $cover.id_image, 'tm_thickbox_default')|escape:'html':'UTF-8'}" itemprop="url">
                                    <img id="bigpic" itemprop="image" src="{$link->getImageLink($product->link_rewrite, $cover.id_image, 'tm_large_default')|escape:'html':'UTF-8'}" title="{if !empty($cover.legend)}{$cover.legend|escape:'html':'UTF-8'}{else}{$product->name|escape:'html':'UTF-8'}{/if}" alt="{if !empty($cover.legend)}{$cover.legend|escape:'html':'UTF-8'}{else}{$product->name|escape:'html':'UTF-8'}{/if}"/>
                                </a>
                            {else}
                                <img id="bigpic" itemprop="image" src="{$link->getImageLink($product->link_rewrite, $cover.id_image, 'tm_large_default')|escape:'html':'UTF-8'}" title="{if !empty($cover.legend)}{$cover.legend|escape:'html':'UTF-8'}{else}{$product->name|escape:'html':'UTF-8'}{/if}" alt="{if !empty($cover.legend)}{$cover.legend|escape:'html':'UTF-8'}{else}{$product->name|escape:'html':'UTF-8'}{/if}" width="{$largeSize.width}" height="{$largeSize.height}"/>
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
                                    {foreach from=$images item=image name=thumbnails}
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
                                                        href="javascript:void(0);"
                                                        rel="{literal}{{/literal}gallery: 'gal1', smallimage: '{$link->getImageLink($product->link_rewrite, $imageIds, 'tm_large_default')|escape:'html':'UTF-8'}',largeimage: '{$link->getImageLink($product->link_rewrite, $imageIds, 'tm_thickbox_default')|escape:'html':'UTF-8'}'{literal}}{/literal}"
                                                    {else}
                                                        href="{$link->getImageLink($product->link_rewrite, $imageIds, 'tm_thickbox_default')|escape:'html':'UTF-8'}"
                                                        data-fancybox-group="other-views"
                                                        class="fancybox{if $image.id_image == $cover.id_image} shown{/if}"
                                                    {/if}
                                                    title="{$imageTitle}">
                                                    <img class="img-responsive" id="thumb_{$image.id_image}" src="{$link->getImageLink($product->link_rewrite, $imageIds, 'tm_cart_default')|escape:'html':'UTF-8'}" alt="{$imageTitle}" title="{$imageTitle}" height="{$cartSize.height}" width="{$cartSize.width}" itemprop="image" />
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
            <div class="pb-right-column col-xs-6">
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
                    {if $colors}
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
                        <div class="col-xs-12 padding-top-5 padding-left-0 margin-bottom-20">
                            <div class="col-xs-12 border padding-0">
                                <div class="tab-price-cel-first col-xs-2 padding-0 text-center padding-0">Quantity</div>
                                {foreach from=$prices key=quantity item=price}
                                    <div class="tab-price-cel col-xs-1 padding-0 text-center border-left">{$quantity}pc{if $quantity > 1}s{/if}</div>
                                {/foreach}
                            </div>
                            <div class="col-xs-12 border border-top-0 padding-0">
                                <div class="tab-price-cel-first col-xs-2 padding-0 text-center padding-0">Unit price</div>
                                {foreach from=$prices key=quantity item=price}
                                    <div class="tab-price-cel col-xs-1 padding-0 text-center border-left">{convertPrice price=$price}</div>
                                {/foreach}
                            </div>
                        </div>
                        <div class="clear"></div>
                    </div> <!-- end content_prices -->
                    {if $product->category != 'designs'}
                        <div class="pull-left">
                            <p class="our_price_display" itemprop="offers" itemscope itemtype="http://schema.org/Offer">
                                {strip}
                                    <span id="our_price_display" itemprop="price">{convertPrice price=$prices.10}*</span>
                                    <meta itemprop="priceCurrency" content="{$currency->iso_code}" />
                                    {hook h="displayProductPriceBlock" product=$product type="price"}
                                {/strip}
                            </p>
                            <p>{l s='*price for 10 pieces'}</p>
                        </div>
                    {/if}
                    <div class="product_attributes pull-right">
                        {assign var="isInSelection" value="{($selection && in_array($product->id, $selection))}"}
                        <div class="btn btn-default selection margin-bottom-10 product-{$product->id}"
                             data-product-link="{$product->getLink()|escape:'html':'UTF-8'}" 
                             data-img="{$link->getImageLink($product->link_rewrite, $product->image.id_image, 'tm_home_default')|escape:'html':'UTF-8'}" 
                             data-id="{$product->id}" data-product-title="{$product->name}" data-type="{$product->category}" data-text-add="{l s='Add to selection'}" data-text-remove="{l s='Remove from selection'}">
                            <span class="glyphicon glyphicon-{if !$isInSelection}plus{else}minus{/if}-sign"></span> <span class="text">{if !$isInSelection} {l s='Add to selection'} {else} {l s='Remove from selection'}{/if}</span>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end center infos-->
        </div> <!-- end primary_block -->
    </div> <!-- itemscope product wrapper -->

    {strip}
        {if isset($smarty.get.ad) && $smarty.get.ad}
            {addJsDefL name=ad}{$base_dir|cat:$smarty.get.ad|escape:'html':'UTF-8'}{/addJsDefL}
        {/if}
        {if isset($smarty.get.adtoken) && $smarty.get.adtoken}
            {addJsDefL name=adtoken}{$smarty.get.adtoken|escape:'html':'UTF-8'}{/addJsDefL}
        {/if}
        {addJsDef allowBuyWhenOutOfStock=$allow_oosp|boolval}
        {addJsDef availableNowValue=$product->available_now|escape:'quotes':'UTF-8'}
        {addJsDef availableLaterValue=$product->available_later|escape:'quotes':'UTF-8'}
        {addJsDef attribute_anchor_separator=$attribute_anchor_separator|addslashes}
        {addJsDef attributesCombinations=$attributesCombinations}
        {addJsDef currencySign=$currencySign|html_entity_decode:2:"UTF-8"}
        {addJsDef currencyRate=$currencyRate|floatval}
        {addJsDef currencyFormat=$currencyFormat|intval}
        {addJsDef currencyBlank=$currencyBlank|intval}
        {addJsDef currentDate=$smarty.now|date_format:'%Y-%m-%d %H:%M:%S'}
        {if isset($combinations) && $combinations}
            {addJsDef combinations=$combinations}
            {addJsDef combinationsFromController=$combinations}
            {addJsDef displayDiscountPrice=$display_discount_price}
            {addJsDefL name='upToTxt'}{l s='Up to' js=1}{/addJsDefL}
        {/if}
        {if isset($combinationImages) && $combinationImages}
            {addJsDef combinationImages=$combinationImages}
        {/if}
        {addJsDef customizationFields=$customizationFields}
        {addJsDef default_eco_tax=$product->ecotax|floatval}
        {addJsDef displayPrice=$priceDisplay|intval}
        {addJsDef ecotaxTax_rate=$ecotaxTax_rate|floatval}
        {addJsDef group_reduction=$group_reduction}
        {if isset($cover.id_image_only)}
            {addJsDef idDefaultImage=$cover.id_image_only|intval}
        {else}
            {addJsDef idDefaultImage=0}
        {/if}
        {addJsDef img_ps_dir=$img_ps_dir}
        {addJsDef img_prod_dir=$img_prod_dir}
        {addJsDef id_product=$product->id|intval}
        {addJsDef jqZoomEnabled=$jqZoomEnabled|boolval}
        {addJsDef maxQuantityToAllowDisplayOfLastQuantityMessage=$last_qties|intval}
        {addJsDef minimalQuantity=$product->minimal_quantity|intval}
        {addJsDef noTaxForThisProduct=$no_tax|boolval}
        {addJsDef customerGroupWithoutTax=$customer_group_without_tax|boolval}
        {addJsDef oosHookJsCodeFunctions=Array()}
        {addJsDef productHasAttributes=isset($groups)|boolval}
        {addJsDef productPriceTaxExcluded=($product->getPriceWithoutReduct(true)|default:'null' - $product->ecotax)|floatval}
        {addJsDef productBasePriceTaxExcluded=($product->base_price - $product->ecotax)|floatval}
        {addJsDef productBasePriceTaxExcl=($product->base_price|floatval)}
        {addJsDef productReference=$product->reference|escape:'html':'UTF-8'}
        {addJsDef productAvailableForOrder=$product->available_for_order|boolval}
        {addJsDef productPriceWithoutReduction=$productPriceWithoutReduction|floatval}
        {addJsDef productPrice=$productPrice|floatval}
        {addJsDef productUnitPriceRatio=$product->unit_price_ratio|floatval}
        {addJsDef productShowPrice=(!$PS_CATALOG_MODE && $product->show_price)|boolval}
        {addJsDef PS_CATALOG_MODE=$PS_CATALOG_MODE}
        {if $product->specificPrice && $product->specificPrice|@count}
            {addJsDef product_specific_price=$product->specificPrice}
        {else}
            {addJsDef product_specific_price=array()}
        {/if}
        {if $display_qties == 1 && $product->quantity}
            {addJsDef quantityAvailable=$product->quantity}
        {else}
            {addJsDef quantityAvailable=0}
        {/if}
        {addJsDef quantitiesDisplayAllowed=$display_qties|boolval}
        {if $product->specificPrice && $product->specificPrice.reduction && $product->specificPrice.reduction_type == 'percentage'}
            {addJsDef reduction_percent=$product->specificPrice.reduction*100|floatval}
        {else}
            {addJsDef reduction_percent=0}
        {/if}
        {if $product->specificPrice && $product->specificPrice.reduction && $product->specificPrice.reduction_type == 'amount'}
            {addJsDef reduction_price=$product->specificPrice.reduction|floatval}
        {else}
            {addJsDef reduction_price=0}
        {/if}
        {if $product->specificPrice && $product->specificPrice.price}
            {addJsDef specific_price=$product->specificPrice.price|floatval}
        {else}
            {addJsDef specific_price=0}
        {/if}
        {addJsDef specific_currency=($product->specificPrice && $product->specificPrice.id_currency)|boolval} {* TODO: remove if always false *}
        {addJsDef stock_management=$PS_STOCK_MANAGEMENT|intval}
        {addJsDef taxRate=$tax_rate|floatval}
        {addJsDefL name=doesntExist}{l s='This combination does not exist for this product. Please select another combination.' js=1}{/addJsDefL}
        {addJsDefL name=doesntExistNoMore}{l s='This product is no longer in stock' js=1}{/addJsDefL}
        {addJsDefL name=doesntExistNoMoreBut}{l s='with those attributes but is available with others.' js=1}{/addJsDefL}
        {addJsDefL name=fieldRequired}{l s='Please fill in all the required fields before saving your customization.' js=1}{/addJsDefL}
        {addJsDefL name=uploading_in_progress}{l s='Uploading in progress, please be patient.' js=1}{/addJsDefL}
        {addJsDefL name='product_fileDefaultHtml'}{l s='No file selected' js=1}{/addJsDefL}
        {addJsDefL name='product_fileButtonHtml'}{l s='Choose File' js=1}{/addJsDefL}
        {addJsDef productColumns=1}
    {/strip}

{/if}
