<div class="big-slick carousel-home row">
    {assign var='nbItems' value=count($aCreationsUrl)}
    {foreach from=$aCreationsUrl item=creationUrl name=creationsUrl}
        {if file_exists($creationUrl)}
            <div class="ajax_block_product col-xs-12 col-sm-3 last-line last-item-of-mobile-line padding" style="opacity: 1; transform: translate3d(0px, 0px, 0px);">
                <div class="product-container" >
                    <div class="left-block">
                        <div class="product-image-container padding-top-20 padding padding-bottom-20">
                            <img class="img-responsive border padding-bottom-10 padding-top-10 popup" src="{$creationUrl}" alt="last creation" title="last creation" />
                        </div>
                    </div>
                </div><!-- .product-container> -->
            </div>
        {/if}
    {/foreach}
</div>