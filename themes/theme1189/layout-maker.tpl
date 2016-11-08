{if $aSelectedProducts}
    <div class="col-md-12 block-selection-top-title margin-top-10">
        <h4 class="title-block-selection text-center font-size-20 primary-color uppercase">{l s='Your selection'}</h4>
    </div>
    <div class="block-selection col-xs-12 margin-bottom-10 padding-0">
        <div class="col-md-6 padding-0">
            <div class="col-xs-12 block-selection-product">
                <div class="col-md-12">
                    <h5 class="text-center font-size-15 color-red">Click on the product you want to personalize</h5>
                </div>
                <div class="col-md-12 padding-0">
                    <div class="products-list">
                        {foreach from=$aSelectedProducts item=product name=products}
                            <div class="col-xs-4 col-sm-3 thumbnail border-none margin-bottom-10 margin-top-10 list-item list-item-product cursor-pointer list-item-{$product->id}" data-id="{$product->id}" data-type="product" title="{$product->name}">
                                <img class="img-product border" src="{$link->getImageLink($product->link_rewrite, $product->image.id_image, 'tm_home_default')|escape:'html':'UTF-8'}" title="{$product->name}" alt="{$product->name}" />
                            </div>
                        {/foreach}
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6 padding-0">
            <div class="col-xs-12 block-selection-design">
                <div class="col-md-12">
                    <h5 class="text-center font-size-15 color-red">Click on the design you want to use</h5>
                </div>
                <div class="col-md-12 padding-0">
                    <div class="designs-list">
                        <div class="col-xs-4 col-sm-3 thumbnail border-none margin-bottom-10 margin-top-10 list-item cursor-pointer list-item-custom" data-id="custom" data-type="design">
                            <div class="padding-0 border list-item-custom-text img-product uppercase">Upload your own design</div>
                            <div class="cursor"></div>
                        </div>
                        {foreach from=$aSelectedDesigns item=design name=designs}
                            <div class="col-xs-4 col-sm-3 thumbnail border-none margin-bottom-10 margin-top-10 list-item list-item-design cursor-pointer list-item-{$design->id}" data-id="{$design->id}" data-type="design" title="{$design->name}">
                                <img class="img-product border" src="{$link->getImageLink($design->link_rewrite, $design->image.id_image, 'tm_home_default')|escape:'html':'UTF-8'}" title="{$design->name}" alt="{$design->name}" />
                            </div>
                        {/foreach}
                        {foreach from=$aCustomDesigns item=custom_design name=custom_designs}
                            <div class="col-xs-4 col-sm-3 thumbnail border-none margin-bottom-10 margin-top-10 list-item list-item-design list-item-custom-image cursor-pointer " data-type="design">
                                <img class="img-product border" src="{$base_uri}{$temp_custom_picture_path}{$custom_design}.png" title="custom" alt="custom" />
                                <span class="delete_cutom_picture cursor-pointer glyphicon glyphicon-remove" data-file-name="{$custom_design}" title="{l s='Remove from selection'}"></span>
                            </div>
                        {/foreach}
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="btn-cart col-xs-3">
        <button class="btn btn-primary add-to-cart ajax_add_to_cart_button" 
                rel="nofollow" title="{l s='Add to cart'}"
                data-id-product=""
                data-id-design=""
                data-minimal_quantity="1"
                data-picture-url=""
                data-custom-picture=""
                data-original-picture=""
                style="display: none">{l s='Add to cart'}</button>
        <button class="btn btn-primary preview-layout margin-top-10" style="display: none" ><span class="glyphicon glyphicon-eye-open"></span> Preview</button>
    </div>                
    <div class="change-color-product-block text-left col-xs-3 background-white position-absolute border padding-10">
        <div class="col-xs-12 col-sm-4 col-lg-12 padding-0 border text-center margin-bottom-10 background-dark-grey block-item-size" style="display: none">
            <div class="col-xs-6">
                Item size:
            </div>
            <div class="col-xs-6 background-white info-item-size"></div>
        </div>
        <div class="clearfix"></div>
        <div class="col-xs-12 col-sm-4 col-lg-12 padding-0 border text-center margin-bottom-10 background-dark-grey block-design-size" style="display: none">
            <div class="col-xs-6">
                Design size:
            </div>
            <div class="col-xs-6 background-white info-design-size"></div>
        </div>
        <div class="preview-color" style="display: none">
            <div class="col-xs-12 padding-0 border overflow-auto">
                <h4 class="padding-md-10">Colors available:</h4>
                <div class="block-colors">
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <div class="hidden-uploader">
        <input class="fileupload hidden-fileupload" type="file" name="files[]" multiple>
    </div>
    <div class="clearfix"></div>
    <div id="component" class="component">
        <div class="overlay-top"></div>
        <div class="overlay-bottom"></div>
        <div class="overlay-left"></div>
        <div class="overlay-right"></div>
        <div class="overlay">
            <div class="overlay-inner">
                <img class="overlay-img" src="">
            </div>
        </div>
        <img id="image" class="resize-image custom-margin-left" src="{$img_dir}layout_maker/drag-and-drop.png" data-original-url="{$img_dir}layout_maker/drag-and-drop.png" />
        <img class="hidden-original-picture hidden" scr="{$img_dir}layout_maker/drag-and-drop.png" />
        <div id="slider-vertical" class="slider-vertical" style="display: none">
            <img class="icon-rotate" src="{$img_dir}layout_maker/reload.svg" alt="rotate">
        </div>
    </div>
{else}
    <div class="col-xs-12 alert alert-info margin-top-10">
        <p>First you have to select at least one product, then you can comeback on this page to customize it</p>
        <p><a href="46-designs" title="See the Designs"> >> Select the Designs</a></p>
        <p><a href="45-products"> >> Select the Products</a></p>
    </div>
{/if}
{if $preselected_design && $preselected_product}
    <script>
        $(function() {
            $('.list-item-{$preselected_product}').trigger('click');
            $('.list-item-{$preselected_design}').trigger('click');
        });
    </script>
{/if}