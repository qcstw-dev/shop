{if $selection}
    <div class="block-selection col-xs-12 border margin-bottom-10 margin-top-10 padding-0">
        <div class="col-md-12 border-bottom">
            <h4 class="text-center bold">{l s='Your selection'}</h4>
        </div>
        <div class="col-md-6 padding-0 border-right">
            <div class="col-md-12 border-bottom">
                <h5 class="text-center">Designs</h5>
            </div>
            <div class="col-md-12 padding-10">
                <div class="designs-list">
                    {foreach from=$aSelectedDesigns item=design name=designs}
                        <div class="col-md-3 thumbnail border-none margin-bottom-0 list-item list-item-design list-item-{$design->id} cursor-pointer" data-id="{$design->id}" data-type="design">
                            <img src="{$link->getImageLink($design->link_rewrite, $design->image.id_image, 'tm_home_default')|escape:'html':'UTF-8'}" data-toggle="tooltip" data-placement="right" title="{$design->name}" />
                        </div>
                    {/foreach}
                </div>
            </div>
        </div>
        <div class="col-md-6 padding-0">
            <div class="col-md-12 border-bottom">
                <h5 class="text-center">Products</h5>
            </div>
            <div class="col-md-12 padding-10">
                <div class="products-list">
                    {foreach from=$aSelectedProducts item=product name=products}
                        <div class="col-md-3 thumbnail border-none margin-bottom-0 list-item list-item-product list-item-{$product->id} cursor-pointer" data-id="{$product->id}" data-type="product">
                            <img src="{$link->getImageLink($product->link_rewrite, $product->image.id_image, 'tm_home_default')|escape:'html':'UTF-8'}" data-toggle="tooltip" data-placement="right" title="{$product->name}" />
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
        <img id="image" class="resize-image" data-is-first-image="1" src="{$img_dir}layout_maker/drag-and-drop.png">
        <div id="slider-vertical" style="display: none">
            <img class="icon-rotate" src="{$img_dir}layout_maker/reload.svg" alt="rotate">
        </div>
        <div class="change-color-product-block text-left col-xs-3 background-white position-absolute" >
            <div class="preview-color">
                <div class="col-xs-12 padding-0 border overflow-auto">
                    <h4 class="padding-10">Colors available:</h4>
                        <div class="block-colors">
                        </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <button class="btn btn-primary btn-crop js-crop" style="display: none">Preview / Download / Send <img class="icon-crop" src="{$img_dir}layout_maker/crop.svg"  alt="crop"></button>
    </div>
        
{else}
    <div class="alert alert-info margin-top-10">
        <p>You first have to select your designs and your products to custom them</p>
        <p><a href="46-designs" title="See the Designs">>> See the Designs</a></p>
        <p><a href="45-products">>> See the Products</a></p>
    </div>
{/if}