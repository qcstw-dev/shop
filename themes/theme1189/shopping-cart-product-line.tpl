<tr id="product_{$product.id_product}_{$product.id_product_attribute}_{if $quantityDisplayed > 0}nocustom{else}0{/if}_{$product.id_address_delivery|intval}{if !empty($product.gift)}_gift{/if}_{$product.custom_picture}" class="cart_item{if isset($productLast) && $productLast && (!isset($ignoreProductLast) || !$ignoreProductLast)} last_item{/if}{if isset($productFirst) && $productFirst} first_item{/if}{if isset($customizedDatas.$productId.$productAttributeId) AND $quantityDisplayed == 0} alternate_item{/if} address_{$product.id_address_delivery|intval} {if $odd}odd{else}even{/if}">
    <td class="cart_product" rowspan="4">
        <div class="thumbnail border-none">
            <img class="popup" src="{$base_uri}{$custom_picture_path}{$product.custom_picture}.png" alt="{$product.name|escape:'html':'UTF-8'}" />
        </div>
    </td>
    <td class="cart_description" data-title="{l s='Description'}" colspan="7">
        {capture name=sep} : {/capture}
    {capture}{l s=' : '}{/capture}
    <p class="product-name">
        <a class="quick-view-bis"  href="{$base_uri}product-popup?id_product={$product.id_product}">{$product.name|escape:'html':'UTF-8'}</a>
    </p>
    {if $product.reference}<small class="cart_ref">{l s='SKU'}{$smarty.capture.default}{$product.reference|escape:'html':'UTF-8'}</small>{/if}
    {if isset($product.attributes) && $product.attributes}
        <small>
            <a href="{$link->getProductLink($product.id_product, $product.link_rewrite, $product.category, null, null, $product.id_shop, $product.id_product_attribute)|escape:'html':'UTF-8'}">{$product.attributes|@replace: $smarty.capture.sep:$smarty.capture.default|escape:'html':'UTF-8'}</a>
        </small>
    {/if}
</td>
{if $PS_STOCK_MANAGEMENT}
    <td class="cart_avail" rowspan="4"><span class="label{if $product.quantity_available <= 0 && isset($product.allow_oosp) && !$product.allow_oosp} label-danger{elseif $product.quantity_available <= 0} label-warning{else} label-success{/if}">{if $product.quantity_available <= 0}{if isset($product.allow_oosp) && $product.allow_oosp}{if isset($product.available_later) && $product.available_later}{$product.available_later}{else}{l s='In Stock'}{/if}{else}{l s='Out of stock'}{/if}{else}{if isset($product.available_now) && $product.available_now}{$product.available_now}{else}{l s='In Stock'}{/if}{/if}</span>{hook h="displayProductDeliveryTime" product=$product}</td>
    {/if}
<td class="cart_unit" data-title="{l s='Unit price'}"  rowspan="4">
    <span class="price" id="product_price_{$product.id_product}_{$product.id_product_attribute}{if $quantityDisplayed > 0}_nocustom{/if}_{$product.id_address_delivery|intval}{if !empty($product.gift)}_gift{/if}_{$product.custom_picture}">
        {if !empty($product.gift)}
            <span class="gift-icon">{l s='Gift!'}</span>
        {else}
            {if !$priceDisplay}
                <span class="price{if isset($product.is_discounted) && $product.is_discounted && isset($product.reduction_applies) && $product.reduction_applies} special-price{/if}">{convertPrice price=$product.price_wt}</span>
            {else}
                <span class="price{if isset($product.is_discounted) && $product.is_discounted && isset($product.reduction_applies) && $product.reduction_applies} special-price{/if}">{convertPrice price=$product.price}</span>
            {/if}
            {if isset($product.is_discounted) && $product.is_discounted && isset($product.reduction_applies) && $product.reduction_applies}
                <span class="price-percent-reduction small">
                    {if !$priceDisplay}
                        {if isset($product.reduction_type) && $product.reduction_type == 'amount'}
                            {assign var='priceReduction' value=($product.price_wt - $product.price_without_specific_price)}
                            {assign var='symbol' value=$currency->sign}
                        {else}
                            {assign var='priceReduction' value=(($product.price_without_specific_price - $product.price_wt)/$product.price_without_specific_price) * 100 * -1}
                            {assign var='symbol' value='%'}
                        {/if}
                    {else}
                        {if isset($product.reduction_type) && $product.reduction_type == 'amount'}
                            {assign var='priceReduction' value=($product.price - $product.price_without_specific_price)}
                            {assign var='symbol' value=$currency->sign}
                        {else}
                            {assign var='priceReduction' value=(($product.price_without_specific_price - $product.price)/$product.price_without_specific_price) * 100 * -1}
                            {assign var='symbol' value='%'}
                        {/if}
                    {/if}
                    {if $symbol == '%'}
                        &nbsp;{$priceReduction|round:2|string_format:"%.2f"|regex_replace:"/[^\d]0+$/":""}{$symbol}&nbsp;
                    {else}
                        &nbsp;{convertPrice price=$priceReduction}&nbsp;
                    {/if}
                </span>
                <span class="old-price">{convertPrice price=$product.price_without_specific_price}</span>
            {/if}
        {/if}
    </span>
</td>

<td class="cart_quantity" data-title="{l s='Qty'}" rowspan="4">
    {if isset($cannotModify) AND $cannotModify == 1}
        <span>
            {if $quantityDisplayed == 0 AND isset($customizedDatas.$productId.$productAttributeId)}
                {$product.customizationQuantityTotal}
            {else}
                {$product.cart_quantity-$quantityDisplayed}
            {/if}
        </span>
    {else}
        {if isset($customizedDatas.$productId.$productAttributeId) AND $quantityDisplayed == 0}
            <span id="cart_quantity_custom_{$product.id_product}_{$product.id_product_attribute}_{$product.id_address_delivery|intval}" >{$product.customizationQuantityTotal}</span>
        {/if}
        {if !isset($customizedDatas.$productId.$productAttributeId) OR $quantityDisplayed > 0}

            <input type="hidden" value="{if $quantityDisplayed == 0 AND isset($customizedDatas.$productId.$productAttributeId)}{$customizedDatas.$productId.$productAttributeId|@count}{else}{$product.cart_quantity-$quantityDisplayed}{/if}" name="quantity_{$product.id_product}_{$product.id_product_attribute}_{if $quantityDisplayed > 0}nocustom{else}0{/if}_{$product.id_address_delivery|intval}_{$product.custom_picture}_hidden" />
            <input size="2" type="text" autocomplete="off" class="cart_quantity_input form-control grey" value="{if $quantityDisplayed == 0 AND isset($customizedDatas.$productId.$productAttributeId)}{$customizedDatas.$productId.$productAttributeId|@count}{else}{$product.cart_quantity-$quantityDisplayed}{/if}"  name="quantity_{$product.id_product}_{$product.id_product_attribute}_{if $quantityDisplayed > 0}nocustom{else}0{/if}_{$product.id_address_delivery|intval}_{$product.custom_picture}" />
            <div class="cart_quantity_button clearfix">
                {if $product.minimal_quantity < ($product.cart_quantity-$quantityDisplayed) OR $product.minimal_quantity <= 1}
                    <a rel="nofollow" class="cart_quantity_down btn btn-default button-minus" data-custom-picture="{$product.custom_picture}" data-original-picture="{$product.original_picture}" id="cart_quantity_down_{$product.id_product}_{$product.id_product_attribute}_{if $quantityDisplayed > 0}nocustom{else}0{/if}_{$product.id_address_delivery|intval}_{$product.custom_picture}" href="{$link->getPageLink('cart', true, NULL, "add=1&amp;id_product={$product.id_product|intval}&amp;ipa={$product.id_product_attribute|intval}&amp;id_address_delivery={$product.id_address_delivery|intval}&amp;op=down&amp;token={$token_cart}&amp;custom_picture={$product.custom_picture}")|escape:'html':'UTF-8'}" title="{l s='Subtract'}">
                        <span>
                            <i class="fa fa-minus"></i>
                        </span>
                    </a>
                {else}
                    <a class="cart_quantity_down btn btn-default button-minus disabled" href="#" id="cart_quantity_down_{$product.id_product}_{$product.id_product_attribute}_{if $quantityDisplayed > 0}nocustom{else}0{/if}_{$product.id_address_delivery|intval}_{$product.custom_picture}" title="{l s='You must purchase a minimum of %d of this product.' sprintf=$product.minimal_quantity}">
                        <span>
                            <i class="fa fa-minus"></i>
                        </span>
                    </a>
                {/if}
                <a rel="nofollow" class="cart_quantity_up btn btn-default button-plus" id="cart_quantity_up_{$product.id_product}_{$product.id_product_attribute}_{if $quantityDisplayed > 0}nocustom{else}0{/if}_{$product.id_address_delivery|intval}_{$product.custom_picture}" href="{$link->getPageLink('cart', true, NULL, "add=1&amp;id_product={$product.id_product|intval}&amp;id_address_delivery={$product.id_address_delivery|intval}&amp;token={$token_cart}&amp;custom_picture={$product.custom_picture}")|escape:'html':'UTF-8'}" title="{l s='Add'}">
                    <span>
                        <i class="fa fa-plus"></i>
                    </span>
                </a>
            </div>
        {/if}
    {/if}
</td>
<td class="cart_total" data-title="{l s='Total'}" rowspan="4">
    <span class="price" id="total_product_price_{$product.id_product}_{$product.id_product_attribute}{if $quantityDisplayed > 0}_nocustom{/if}_{$product.id_address_delivery|intval}{if !empty($product.gift)}_gift{/if}_{$product.custom_picture}">
        {if !empty($product.gift)}
            <span class="gift-icon">{l s='Gift!'}</span>
        {else}
            {if $quantityDisplayed == 0 AND isset($customizedDatas.$productId.$productAttributeId)}
        {if !$priceDisplay}{displayPrice price=$product.total_customization_wt}{else}{displayPrice price=$product.total_customization}{/if}
    {else}
{if !$priceDisplay}{displayPrice price=$product.total_wt}{else}{displayPrice price=$product.total}{/if}
{/if}
{/if}
</span>
</td>
{if !isset($noDeleteButton) || !$noDeleteButton}
    <td class="cart_delete text-center" rowspan="4">
        {if (!isset($customizedDatas.$productId.$productAttributeId) OR $quantityDisplayed > 0) && empty($product.gift)}
            <a rel="nofollow" title="{l s='Delete'}" class="cart_quantity_delete" data-custom-picture="{$product.custom_picture}" data-original-picture="{$product.original_picture}" id="{$product.id_product}_{$product.id_product_attribute}_{if $quantityDisplayed > 0}nocustom{else}0{/if}_{$product.id_address_delivery|intval}_{$product.custom_picture}" href="{$link->getPageLink('cart', true, NULL, "delete=1&amp;id_product={$product.id_product|intval}&amp;ipa={$product.id_product_attribute|intval}&amp;id_address_delivery={$product.id_address_delivery|intval}&amp;token={$token_cart}&amp;custom_picture={$product.custom_picture}")|escape:'html':'UTF-8'}"><i class="fa fa-trash-o"></i></a>
            <a class="ajax_cart_block_remove_link" data-modify="true" data-id-product="{$product.id_product}" data-id-design="{$product.id_design}" data-custom-product="{$product.custom_picture}" data-original-product="{$product.original_picture}" href="{$link->getPageLink('cart', true, NULL, "delete=1&id_product={$product.id_product|intval}&id_address_delivery={$product.id_address_delivery|intval}&token={$static_token}&custom_picture={$product.custom_picture}")|escape:'html':'UTF-8'}" rel="nofollow"><span class="glyphicon glyphicon-pencil font-size-15"></span></a>
            {else}

        {/if}
    </td>
{/if}
</tr>
<tr class="product_{$product.id_product}_{$product.id_product_attribute}_{if $quantityDisplayed > 0}nocustom{else}0{/if}_{$product.id_address_delivery|intval}{if !empty($product.gift)}_gift{/if}_{$product.custom_picture}">
    <th class="cart_description item" colspan="7">{l s='Price range'}</th>
</tr>
<tr class="prices-tr product_{$product.id_product}_{$product.id_product_attribute}_{if $quantityDisplayed > 0}nocustom{else}0{/if}_{$product.id_address_delivery|intval}{if !empty($product.gift)}_gift{/if}_{$product.custom_picture}">
    <td class="tab-price-cel-first prices-td text-center">Quantity</td>
    {foreach from=$product.prices key=quantity item=price}
        <td class="cart_product_prices prices-td text-center">{$quantity}pc{if $quantity > 1}s{/if}</td>
    {/foreach}
</tr>
<tr class="prices-tr product_{$product.id_product}_{$product.id_product_attribute}_{if $quantityDisplayed > 0}nocustom{else}0{/if}_{$product.id_address_delivery|intval}{if !empty($product.gift)}_gift{/if}_{$product.custom_picture}">
    <td class="tab-price-cel-first prices-td text-center">Unit price</td>
    {foreach from=$product.prices key=quantity item=price}
        <td class="cart_product_prices prices-td text-center">{convertPrice price=$price}</td>
    {/foreach}
</tr>