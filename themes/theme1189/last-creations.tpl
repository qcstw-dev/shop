<ul class="product_list grid row active">
    {foreach from=$creations item=creation name=creations}
        <li class="ajax_block_product col-xs-12 col-sm-4 col-md-3 last-line last-item-of-mobile-line" style="opacity: 1; transform: translate3d(0px, 0px, 0px);">
            <div class="product-container" >
                <div class="left-block">
                    <div class="product-image-container padding-top-20 padding-bottom-20">
                        <img class="replace-2x img-responsive" src="{$custom_picture_path}{$creation.custom_picture}" alt="last creation" title="last creation" />
                    </div>
                </div>
            </div><!-- .product-container> -->
        </li>
    {/foreach}
</ul>