<div class="big-slick carousel-home">
    {assign var='nbItems' value=count($creations)}
    {foreach from=$creations item=creation name=creations}
        <div class="ajax_block_product last-line last-item-of-mobile-line padding" style="opacity: 1; transform: translate3d(0px, 0px, 0px);">
            <div class="product-container" >
                <div class="left-block">
                    <div class="product-image-container padding-top-20 padding-bottom-20">
                        <img class="replace-2x img-responsive border padding padding-bottom-10 padding-top-10 popup" src="{$custom_picture_path}{$creation.custom_picture}.png" alt="last creation" title="last creation" />
                    </div>
                </div>
            </div><!-- .product-container> -->
        </div>
    {/foreach}
</div>