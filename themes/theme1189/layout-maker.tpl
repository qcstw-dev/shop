{if $aSelectedProducts}
    <div class="block-selection col-xs-12 border margin-bottom-10 margin-top-10 padding-0">
        <div class="col-md-12 border-bottom">
            <h4 class="text-center bold">{l s='Your selection'}</h4>
        </div>
        <div class="col-md-6 padding-0 border-right">
            <div class="col-md-12">
                <h5 class="text-center">Designs</h5>
            </div>
            <div class="col-md-12 padding-10">
                <div class="designs-list">
                    <div class="col-md-3 thumbnail border-none margin-bottom-0 list-item list-item-design cursor-pointer list-item-custom" data-id="custom" data-type="design">
                        <div class="padding border list-item-custom-text img-product">Upload your Design</div>
                    </div>
                    {foreach from=$aSelectedDesigns item=design name=designs}
                        <div class="col-md-3 thumbnail border-none margin-bottom-0 list-item list-item-design cursor-pointer list-item-{$design->id}" data-id="{$design->id}" data-type="design" title="{$design->name}">
                            <img class="img-product" src="{$link->getImageLink($design->link_rewrite, $design->image.id_image, 'tm_home_default')|escape:'html':'UTF-8'}" title="{$design->name}" alt="{$design->name}" />
                        </div>
                    {/foreach}
                </div>
            </div>
        </div>
        <div class="col-md-6 padding-0">
            <div class="col-md-12">
                <h5 class="text-center">Products</h5>
            </div>
            <div class="col-md-12 padding-10">
                <div class="products-list">
                    {foreach from=$aSelectedProducts item=product name=products}
                        <div class="col-md-3 thumbnail border-none margin-bottom-0 list-item list-item-product cursor-pointer list-item-{$product->id}" data-id="{$product->id}" data-type="product" title="{$product->name}">
                            <img class="img-product border" src="{$link->getImageLink($product->link_rewrite, $product->image.id_image, 'tm_home_default')|escape:'html':'UTF-8'}" title="{$product->name}" alt="{$product->name}" />
                        </div>
                    {/foreach}
                </div>
            </div>
        </div>
    </div>
    <div id="component" class="component">
        <span class="btn btn-primary fileinput-button col-xs-2" style="display: none">
            <i class="glyphicon glyphicon-plus"></i>
            <span>Add your logo...</span>
            <input id="fileupload" type="file" name="files[]" >
        </span>
        <div id="files" class="files"></div>
        <div class="overlay-top"></div>
        <div class="overlay-bottom"></div>
        <div class="overlay-left"></div>
        <div class="overlay-right"></div>
        <div class="overlay">
             <div class="overlay-inner">
                <img class="overlay-img" src="">
            </div>
        </div>
        <img id="image" class="resize-image" src="{$img_dir}layout_maker/drag-and-drop.png" data-original-url="{$img_dir}layout_maker/drag-and-drop.png" />
        <img class="hidden-original-picture hidden" scr="{$img_dir}layout_maker/drag-and-drop.png" />
        <div id="slider-vertical" class="slider-vertical" style="display: none">
            <img class="icon-rotate" src="{$img_dir}layout_maker/reload.svg" alt="rotate">
        </div>
        <div class="change-color-product-block text-left col-xs-3 background-white position-absolute" >
            <div class="col-xs-12 padding-0 border text-center margin-bottom-10 background-dark-grey block-item-size" style="display: none">
                <div class="col-xs-6">
                    Item size:
                </div>
                <div class="col-xs-6 background-white info-item-size"></div>
            </div>
            <div class="col-xs-12 padding-0 border text-center margin-bottom-10 background-dark-grey block-design-size" style="display: none">
                <div class="col-xs-6">
                    Design size:
                </div>
                <div class="col-xs-6 background-white info-design-size"></div>
            </div>
            <div class="preview-color" style="display: none">
                <div class="col-xs-12 padding-0 border overflow-auto">
                    <h4 class="padding-10">Colors available:</h4>
                        <div class="block-colors">
                        </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <button class="btn btn-primary preview-layout" style="display: none" ><span class="glyphicon glyphicon-eye-open"></span> Preview</button>
        <button class="btn btn-primary add-to-cart ajax_add_to_cart_button" 
                rel="nofollow" title="{l s='Add to cart'}"
                data-id-product=""
                data-minimal_quantity="1"
                data-picture-url=""
                data-custom-picture=""
                data-original-picture=""
                style="display: none">{l s='Add to cart'}</button>
    </div>
        
{else}
    <div class="alert alert-info margin-top-10">
        <p>First you have to select at least one product and them you can comeback to customize it</p>
        <p><a href="46-designs" title="See the Designs">>> See the Designs</a></p>
        <p><a href="45-products">>> See the Products</a></p>
    </div>
{/if}