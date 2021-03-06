<!-- MODULE Block cart -->
{if isset($blockcart_top) && $blockcart_top}
    <div class="basket {if $PS_CATALOG_MODE} header_user_catalog{/if}">
    {/if}
    <div class="shopping_cart icon" data-id="cart">
        <a href="{$link->getPageLink($order_process, true)|escape:'html':'UTF-8'}" title="{l s='View my shopping cart' mod='blockcart'}" rel="nofollow">
            <span class="glyphicon glyphicon-shopping-cart"></span>
            <span class="ajax_cart_quantity">{$cart_qties}</span>
            <div class="icon-title">{l s='Cart' mod='blockcart'}</div>
        </a>
        {if !$PS_CATALOG_MODE}
            <div class="cart_block block icon-content-cart">
                <div class="block_content">
                    <!-- block list of products -->
                    <div class="cart_block_list{if isset($blockcart_top) && !$blockcart_top}{if isset($colapseExpandStatus) && $colapseExpandStatus eq 'expanded' || !$ajax_allowed || !isset($colapseExpandStatus)} expanded{else} collapsed unvisible{/if}{/if}">
                        {if $products}
                            <dl class="products">
                                {foreach from=$products item='product' name='myLoop'}
                                    {assign var='productId' value=$product.id_product}
                                    {assign var='productAttributeId' value=$product.id_product_attribute}
                                    <dt data-id="cart_block_product_{$product.id_product|intval}_{if $product.id_product_attribute}{$product.id_product_attribute|intval}{else}0{/if}_{if $product.id_address_delivery}{$product.id_address_delivery|intval}{else}0{/if}_{if $product.custom_picture}{$product.custom_picture}{else}0{/if}_{$product.id_customized_prod|intval}" 
                                        class="{if $smarty.foreach.myLoop.first}first_item{elseif $smarty.foreach.myLoop.last}last_item{else}item{/if}">
                                        <div class="col-md-6 thumbnail">
                                            <img class="popup" data-text="*On this preview the picture might look pixelated. No worry! We use the original file (the one you uploaded) to produce so that final result will be as good as your original picture/design." src="{$base_uri}{if isset($product.customized_prod)}{$creation_picture_path}{$product.customized_prod.custom_img}{else}{$custom_picture_path}{$product.custom_picture}.png{/if}" alt="{$product.name|escape:'html':'UTF-8'}" />
                                        </div>
                                        <div class="col-md-6 text-right">
                                            {if !isset($customizedDatas.$productId.$productAttributeId) && (!isset($product.is_gift) || !$product.is_gift)}
                                                <a class="ajax_cart_block_remove_link" 
                                                   data-custom-product="{$product.custom_picture}" 
                                                   data-id-customized-prod="{$product.id_customized_prod}" 
                                                   data-id-product="{$product.id_product}" 
                                                   data-id-design="{$product.id_design}" 
                                                   data-original-product="{$product.original_picture}" 
                                                   href="{$link->getPageLink('cart', true, NULL, "delete=1&id_product={$product.id_product|intval}&id_address_delivery={$product.id_address_delivery|intval}&token={$static_token}&custom_picture={$product.custom_picture}&original_picture={$product.original_picture}")|escape:'html':'UTF-8'}" 
                                                   rel="nofollow" 
                                                   title="{l s='remove this product from my cart' mod='blockcart'}">
                                                    <span class="fa fa-trash-o font-size-20"></span>
                                                </a>
                                            {/if}
                                        </div>
                                        <div class="cart-info col-md-6">
                                            <div class="product-name">
                                                <span class="quantity-formated">
                                                    <span class="quantity">{$product.cart_quantity}</span>&nbsp;x&nbsp;
                                                </span>
                                                <a class="cart_block_product_name quick-view" 
                                                   href="{$base_uri}product-popup?id_product={$product.id_product}" 
                                                   title="{$product.name|escape:'html':'UTF-8'}"
                                                   data-id-creation="{$product.id_customized_prod}"
                                                   data-id-design="{if isset($product.customized_prod.id_design)}{$product.customized_prod.id_design}{/if}">
                                                    {$product.name|truncate:13:'...'|escape:'html':'UTF-8'}
                                                </a>
                                            </div>
                                            {if isset($product.attributes_small)}
                                                <div class="product-atributes">
                                                    <a href="{$link->getProductLink($product, $product.link_rewrite, $product.category, null, null, $product.id_shop, $product.id_product_attribute)|escape:'html':'UTF-8'}" title="{l s='Product detail' mod='blockcart'}">{$product.attributes_small}</a>
                                                </div>
                                            {/if}
                                            <span class="price">
                                                {if !isset($product.is_gift) || !$product.is_gift}
                                            {if $priceDisplay == $smarty.const.PS_TAX_EXC}{displayWtPrice p="`$product.total`"}{else}{displayWtPrice p="`$product.total_wt`"}{/if}
                                        {else}
                                            {l s='Free!' mod='blockcart'}
                                        {/if}
                                    </span>
                                    {if !$product.id_customized_prod}
                                        <a class="btn btn-default ajax_cart_block_remove_link padding-5" 
                                           data-modify="true" 
                                           data-id-product="{$product.id_product}" 
                                           data-id-customized-prod="{$product.id_customized_prod}" 
                                           data-id-design="{$product.id_design}" 
                                           data-custom-product="{$product.custom_picture}" 
                                           data-original-product="{$product.original_picture}" 
                                           href="{$link->getPageLink('cart', true, NULL, "delete=1&id_product={$product.id_product|intval}&id_address_delivery={$product.id_address_delivery|intval}&token={$static_token}&custom_picture={$product.custom_picture}&original_picture={$product.original_picture}")|escape:'html':'UTF-8'}" 
                                           rel="nofollow">
                                            <span class="glyphicon glyphicon-pencil font-size-15"></span> {l s='Modify'}
                                        </a>
                                    {/if}
                                </div>
                            </dt>
                            {if isset($product.attributes_small)}
                                <dd data-id="cart_block_combination_of_{$product.id_product|intval}{if $product.id_product_attribute}_{$product.id_product_attribute|intval}{/if}_{$product.id_address_delivery|intval}" class="{if $smarty.foreach.myLoop.first}first_item{elseif $smarty.foreach.myLoop.last}last_item{else}item{/if}">
                                {/if}
                                <!-- Customizable datas -->
                                {if isset($customizedDatas.$productId.$productAttributeId[$product.id_address_delivery])}
                                    {if !isset($product.attributes_small)}
                                    <dd data-id="cart_block_combination_of_{$product.id_product|intval}_{if $product.id_product_attribute}{$product.id_product_attribute|intval}{else}0{/if}_{if $product.id_address_delivery}{$product.id_address_delivery|intval}{else}0{/if}" class="{if $smarty.foreach.myLoop.first}first_item{elseif $smarty.foreach.myLoop.last}last_item{else}item{/if}">
                                    {/if}
                                    <ul class="cart_block_customizations" data-id="customization_{$productId}_{$productAttributeId}">
                                        {foreach from=$customizedDatas.$productId.$productAttributeId[$product.id_address_delivery] key='id_customization' item='customization' name='customizations'}
                                            <li name="customization">
                                                <div data-id="deleteCustomizableProduct_{$id_customization|intval}_{$product.id_product|intval}_{$product.id_product_attribute|intval}_{$product.id_address_delivery|intval}" class="deleteCustomizableProduct">
                                                    <a class="ajax_cart_block_remove_link" href="{$link->getPageLink('cart', true, NULL, "delete=1&id_product={$product.id_product|intval}&ipa={$product.id_product_attribute|intval}&id_customization={$id_customization|intval}&token={$static_token}")|escape:'html':'UTF-8'}" rel="nofollow" title="{l s='remove this product from my cart' mod='blockcart'}">&nbsp;</a>
                                                </div>
                                                {if isset($customization.datas.$CUSTOMIZE_TEXTFIELD.0)}
                                                    {$customization.datas.$CUSTOMIZE_TEXTFIELD.0.value|replace:"<br />":" "|truncate:28:'...'|escape:'html':'UTF-8'}
                                                {else}
                                                    {l s='Customization #%d:' sprintf=$id_customization|intval mod='blockcart'}
                                                {/if}
                                            </li>
                                        {/foreach}
                                    </ul>
                                    {if !isset($product.attributes_small)}</dd>{/if}
                                {/if}
                                {if isset($product.attributes_small)}</dd>
                            {/if}
                        {/foreach}
                    </dl>
                {/if}
                <p class="cart_block_no_products{if $products} unvisible{/if}">
                    {l s='No products' mod='blockcart'}
                </p>
                {if $discounts|@count > 0}
                    <table class="vouchers{if $discounts|@count == 0} unvisible{/if}">
                        {foreach from=$discounts item=discount}
                            {if $discount.value_real > 0}
                                <tr class="bloc_cart_voucher" data-id="bloc_cart_voucher_{$discount.id_discount|intval}">
                                    <td class="quantity">1x</td>
                                    <td class="name" title="{$discount.description}">
                                        {$discount.name|truncate:18:'...'|escape:'html':'UTF-8'}
                                    </td>
                                    <td class="price">
                                        -{if $priceDisplay == 1}{convertPrice price=$discount.value_tax_exc}{else}{convertPrice price=$discount.value_real}{/if}
                                    </td>
                                    <td class="delete">
                                        {if strlen($discount.code)}
                                            <a class="delete_voucher" href="{$link->getPageLink("$order_process", true)}?deleteDiscount={$discount.id_discount|intval}" title="{l s='Delete' mod='blockcart'}" rel="nofollow">
                                                <i class="fa fa-times"></i>
                                            </a>
                                        {/if}
                                    </td>
                                </tr>
                            {/if}
                        {/foreach}
                    </table>
                {/if}
                <div class="cart-prices">
                    <div class="cart-prices-line first-line {if !($page_name == 'order-opc') && $shipping_cost_float == 0 && (!isset($cart->id_address_delivery) || !$cart->id_address_delivery)} unvisible{/if}">
                        <span class="cart_block_shipping_cost ajax_cart_shipping_cost">
                            {if $shipping_cost_float == 0}
                        {if !($page_name == 'order-opc') && (!isset($cart->id_address_delivery) || !$cart->id_address_delivery)}{l s='To be determined' mod='blockcart'}{else}{l s='Free shipping!' mod='blockcart'}{/if}
                    {else}
                        {$shipping_cost}
                    {/if}
                </span>
                <span>
                    {l s='Shipping' mod='blockcart'}
                </span>
            </div>
            {if $show_wrapping}
                <div class="cart-prices-line">
                    {assign var='cart_flag' value='Cart::ONLY_WRAPPING'|constant}
                    <span class="price cart_block_wrapping_cost">
                        {if $priceDisplay == 1}
                        {convertPrice price=$cart->getOrderTotal(false, $cart_flag)}{else}{convertPrice price=$cart->getOrderTotal(true, $cart_flag)}
                        {/if}
                    </span>
                    <span>
                        {l s='Wrapping' mod='blockcart'}
                    </span>
                </div>
            {/if}
            {if $show_tax && isset($tax_cost)}
                <div class="cart-prices-line">
                    <span class="price cart_block_tax_cost ajax_cart_tax_cost">{$tax_cost}</span>
                    <span>{l s='Tax' mod='blockcart'}</span>
                </div>
            {/if}
            <div class="cart-prices-line last-line">
                <span class="price cart_block_total ajax_block_cart_total">{$total}</span>
                <span>{l s='Total' mod='blockcart'}</span>
            </div>
            {if $use_taxes && $display_tax_label == 1 && $show_tax}
                <p>
                    {if $priceDisplay == 0}
                        {l s='Prices are tax included' mod='blockcart'}
                    {elseif $priceDisplay == 1}
                        {l s='Prices are tax excluded' mod='blockcart'}
                    {/if}
                </p>
            {/if}
        </div>
        <p class="cart-buttons">
            <a id="button_order_cart" class="col-xs-12 btn btn-success btn-lg" href="{$link->getPageLink("$order_process", true)|escape:"html":"UTF-8"}" title="{l s='Check out' mod='blockcart'}" rel="nofollow">
                <span>
                    {l s='Check out' mod='blockcart'}
                </span>
                <span class="glyphicon glyphicon-chevron-right pull-right"></span>
            </a>
        </p>
    </div>
</div>
</div><!-- .cart_block -->
{/if}
</div>
{if isset($blockcart_top) && $blockcart_top}
</div>
{/if}
{counter name=active_overlay assign=active_overlay}
{if !$PS_CATALOG_MODE && $active_overlay == 1}
    <div id="layer_cart">
        <div class="layer_cart_product col-xs-12 col-md-6">
            <span class="cross" title="{l s='Close window' mod='blockcart'}"></span>
            <h2>
                <i class="fa fa-ok"></i>
                {l s='Product successfully added to your shopping cart' mod='blockcart'}
            </h2>
            <div class="product-image-container layer_cart_img">
            </div>
            <div class="layer_cart_product_info">
                <span id="layer_cart_product_title" class="product-name"></span>
                <span id="layer_cart_product_attributes"></span>
                <div>
                    <strong class="dark">{l s='Quantity' mod='blockcart'}</strong>
                    <span id="layer_cart_product_quantity"></span>
                </div>
                <div>
                    <strong class="dark">{l s='Total' mod='blockcart'}</strong>
                    <span id="layer_cart_product_price"></span>
                </div>
            </div>
        </div>
        <div class="layer_cart_cart col-xs-12 col-md-6">
            <h2>
                <!-- Plural Case [both cases are needed because page may be updated in Javascript] -->
                <span class="ajax_cart_product_txt_s {if $cart_qties < 2} unvisible{/if}">
                    {l s='There are [1]%d[/1] items in your cart.' mod='blockcart' sprintf=[$cart_qties] tags=['<span class="ajax_cart_quantity">']}
                </span>
                <!-- Singular Case [both cases are needed because page may be updated in Javascript] -->
                <span class="ajax_cart_product_txt {if $cart_qties > 1} unvisible{/if}">
                    {l s='There is 1 item in your cart.' mod='blockcart'}
                </span>
            </h2>

            <div class="layer_cart_row">
                <strong class="dark">
                    {l s='Total products' mod='blockcart'}
                </strong>
                <span class="ajax_block_products_total">
                    {if $cart_qties > 0}
                        {convertPrice price=$cart->getOrderTotal(false, Cart::ONLY_PRODUCTS)}
                    {/if}
                </span>
            </div>

            {if $show_wrapping}
                <div class="layer_cart_row">
                    <strong class="dark">
                        {l s='Wrapping' mod='blockcart'}
                    </strong>
                    <span class="price cart_block_wrapping_cost">
                        {if $priceDisplay == 1}
                            {convertPrice price=$cart->getOrderTotal(false, Cart::ONLY_WRAPPING)}
                        {else}
                            {convertPrice price=$cart->getOrderTotal(true, Cart::ONLY_WRAPPING)}
                        {/if}
                    </span>
                </div>
            {/if}
            <div class="layer_cart_row">
                <strong class="dark{if $shipping_cost_float == 0 && (!isset($cart->id_address_delivery) || !$cart->id_address_delivery)} unvisible{/if}">
                    {l s='Total shipping' mod='blockcart'}
                </strong>
                <span class="ajax_cart_shipping_cost{if $shipping_cost_float == 0 && (!isset($cart->id_address_delivery) || !$cart->id_address_delivery)} unvisible{/if}">
                    {if $shipping_cost_float == 0}
                {if (!isset($cart->id_address_delivery) || !$cart->id_address_delivery)}{l s='To be determined' mod='blockcart'}{else}{l s='Free shipping!' mod='blockcart'}{/if}
            {else}
                {$shipping_cost}
            {/if}
        </span>
    </div>
    {if $show_tax && isset($tax_cost)}
        <div class="layer_cart_row">
            <strong class="dark">{l s='Tax' mod='blockcart'}</strong>
            <span class="price cart_block_tax_cost ajax_cart_tax_cost">{$tax_cost}</span>
        </div>
    {/if}
    <div class="layer_cart_row">	
        <strong class="dark">
            {l s='Total' mod='blockcart'}
        </strong>
        <span class="ajax_block_cart_total">
            {if $cart_qties > 0}
                {if $priceDisplay == 1}
                    {convertPrice price=$cart->getOrderTotal(false)}
                {else}
                    {convertPrice price=$cart->getOrderTotal(true)}
                {/if}
            {/if}
        </span>
    </div>
    <div class="button-container">	
        <span class="continue btn btn-default btn-md icon-left" title="{l s='Continue shopping' mod='blockcart'}">
            <span>
                {l s='Continue shopping' mod='blockcart'}
            </span>
        </span>
        <a class="btn btn-default btn-md icon-right" href="{$link->getPageLink("$order_process", true)|escape:"html":"UTF-8"}" title="{l s='Proceed to checkout' mod='blockcart'}" rel="nofollow">
            <span>
                {l s='Proceed to checkout' mod='blockcart'}
            </span>
        </a>	
    </div>
</div>
<div class="crossseling"></div>
</div> <!-- #layer_cart -->
<div class="layer_cart_overlay"></div>
{/if}
{strip}
    {addJsDef CUSTOMIZE_TEXTFIELD=$CUSTOMIZE_TEXTFIELD}
    {addJsDef img_dir=$img_dir|escape:'quotes':'UTF-8'}
    {addJsDef generated_date=$smarty.now|intval}
    {addJsDef ajax_allowed=$ajax_allowed|boolval}
    {addJsDef hasDeliveryAddress=(isset($cart->id_address_delivery) && $cart->id_address_delivery)}

    {addJsDefL name=customizationIdMessage}{l s='Customization #' mod='blockcart' js=1}{/addJsDefL}
    {addJsDefL name=removingLinkText}{l s='remove this product from my cart' mod='blockcart' js=1}{/addJsDefL}
    {addJsDefL name=freeShippingTranslation}{l s='Free shipping!' mod='blockcart' js=1}{/addJsDefL}
    {addJsDefL name=freeProductTranslation}{l s='Free!' mod='blockcart' js=1}{/addJsDefL}
    {addJsDefL name=delete_txt}{l s='Delete' mod='blockcart' js=1}{/addJsDefL}
    {addJsDefL name=toBeDetermined}{l s='To be determined' mod='blockcart' js=1}{/addJsDefL}
{/strip}
<!-- /MODULE Block cart -->