{include file=$header_mobile}
<div id="mobile-place-design-on-product">
    <div class="col-xs-12 margin-bottom-10">
        <div class="col-xs-6 col-sm-3">
            <button id="add-to-cart" class="btn btn-primary col-xs-12 add-to-cart ajax_add_to_cart_button" 
                    rel="nofollow" title="{l s='Add to cart'}"
                    data-id-product="{$product->id}"
                    data-id-design="{(!$custom) ? $cookie->selected_design : ''}"
                    data-minimal_quantity="1"
                    data-custom-picture=""
                    data-original-picture="{($original_picture) ? $original_picture : ''}">
                <span class="glyphicon glyphicon-shopping-cart"></span> {l s='Add to cart'}</button>
        </div>
        <div class="col-xs-6 col-sm-3">
            <button class="btn btn-default col-xs-12 preview-layout" ><span class="glyphicon glyphicon-eye-open"></span> {l s='Preview'}</button>
        </div>
    </div>
    <div class="clearfix"></div>
    <div id="component" class="component">
        <div class="overlay-top"></div>
        <div class="overlay-bottom"></div>
        <div class="overlay-left"></div>
        <div class="overlay-right"></div>
        <div class="overlay">
            <div class="overlay-inner">
                <img class="overlay-img" src="{$link->getImageLink($product->link_rewrite, $images_product.0.id_image, 'layout')}">
            </div>
        </div>
        <img id="image" class="resize-image" src="{($original_picture) ? $original_picture : $link->getImageLink($design->link_rewrite, $image_design.id_image, 'layout')|escape:'html':'UTF-8'}" />
        <img class="hidden-original-picture hidden" scr="{($original_picture) ? $original_picture : ''}" />
    </div>
    <div class="col-xs-12 border margin-bottom-10">
        <div class="preview-color">
            <div class="col-xs-12 padding-0 overflow-auto">
                <div class="padding-10 bold">Colors available:</div>
                <div class="block-colors">
                    {foreach from=$images_product item=image_product name=images_product}
                        <div class="col-xs-4 col-sm-2 col-lg-6 block-color-product">
                            <div class="thumbnail thumbnail-hover">
                                <img class="change-color-product" src="{$link->getImageLink($product->link_rewrite, $image_product.id_image, 'layout')}" alt="preview product">
                            </div>
                        </div>
                    {/foreach}
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <div class="col-xs-12">
        <div class="col-xs-6 col-sm-3">
            <button class="btn btn-primary col-xs-12 add-to-cart ajax_add_to_cart_button" 
                    rel="nofollow" title="{l s='Add to cart'}"
                    data-id-product="{$product->id}"
                    data-id-design="{(!$custom) ? $cookie->selected_design : ''}"
                    data-minimal_quantity="1"
                    data-custom-picture=""
                    data-original-picture="{($original_picture) ? $original_picture : ''}">
                <span class="glyphicon glyphicon-shopping-cart"></span> {l s='Add to cart'}</button>
        </div>
        <div class="col-xs-6 col-sm-3">
            <button class="btn btn-default col-xs-12 preview-layout" ><span class="glyphicon glyphicon-eye-open"></span> {l s='Preview'}</button>
        </div>
    </div>
</div>
{include file=$footer_mobile}