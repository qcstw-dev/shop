{include file=$header_mobile}
<div id="mobile-product-page">
    <div class="col-xs-12 margin-bottom-10">
            <a class="btn btn-default" href="{$base_uri}mobile"><span class="glyphicon glyphicon-chevron-left"></span> Back</a>
    </div>
    <div class="col-xs-12">
        <h1 class="col-xs-12 padding-0 padding-bottom-5 bold text-center font-size-15 margin-top-0 border-bottom">{$product->name}</h1>
    </div>
    <div class="col-xs-12 slick-pictures margin-bottom-10">
        {foreach from=$product->images item=image name=images}
            <div class="col-xs-12">
                <div class="thumbnail border-none margin-bottom-0">
                    <img class="border" src="{$link->getImageLink($product->link_rewrite, $image.id_image, 'tm_home_default')|escape:'html':'UTF-8'}" />
                </div>
            </div>
        {/foreach}
    </div>
    <div class="col-xs-12 ">
        {$product->description}
        <hr>
    </div>
    {if $features}
        {assign var="logoProcessDisplayed" value="false"}
        <div class="col-xs-12 margin-bottom-10">
            <div class="col-xs-6 padding-0">
                <p><span class="bold">{l s='Reference'}</span>: {$product->reference}</p>
                {foreach from=$features key=k item=feature}
                    {if $k == 2}
                    </div>
                    <div class="col-xs-6 padding-0">
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
            <hr>
        </div>
    {/if}
    {if $colors}
        <div class="col-xs-12">
            <div class="pull-left bold">{l s='Colors available'}: </div>
            <div class="pull-left">
                <ul class="color-preview-list margin-bottom-5">
                    {foreach from=$colors item=color}
                        <li class="color-preview" style="background: {$color.color}"></li>
                        {/foreach}
                </ul>
            </div>
            <div class="clearfix"></div>
            <hr>
        </div>
    {/if}
    <div class="content_prices">
        <!-- prices -->
        <div class="col-xs-12 padding-top-5 margin-bottom-10">
            <div class="col-xs-6 col-sm-12 padding-0">
                <div class="tab-price-cel-first col-sm-2 padding-0 text-center padding-0 border">Quantity</div>
                {foreach from=$prices key=quantity item=price}
                    <div class="tab-price-cel col-sm-1 padding-0 text-center border">{$quantity}pc{if $quantity > 1}s{/if}</div>
                {/foreach}
            </div>
            <div class="col-xs-6 col-sm-12 padding-0">
                <div class="tab-price-cel-first col-sm-2 padding-0 text-center padding-0 border">Unit price</div>
                {foreach from=$prices key=quantity item=price}
                    <div class="tab-price-cel col-sm-1 padding-0 text-center border">{convertPrice price=$price}</div>
                {/foreach}
            </div>
        </div>
        <div class="clear"></div>
    </div> <!-- end content_prices -->
    <div class="col-xs-12">
        <div class="col-xs-6 text-center">
            <div class="bold font-size-20">{convertPrice price=$prices.10}*</div>
            <div class="font-size-10">{l s="*price for 10 pieces"}</div>
        </div>
        <a class="btn btn-success col-xs-6" href="{$base_uri}mobile-designs?id_product={$product->id}"><span class="glyphicon glyphicon-plus-sign"></span> {l s="Select"}</a>
    </div>
</div>
{include file=$footer_mobile}