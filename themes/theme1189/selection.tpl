<div class="block-selection margin-top-10 margin-bottom-10" {if $page_name == 'index' && !$aSelectedProducts && !$aSelectedDesigns}style="display: none"{/if}>
    <div class="col-xs-12 block-selection-top-title padding-0">
        <div class="col-md-9">
            <h4 class="title-block-selection margin-top-10 margin-bottom-20 uppercase">{l s='Your selection'}</h4>
        </div>
        <div class="col-md-3 margin-top-5 margin-bottom-5 clearfix">
            <a class="btn btn-default btn-block-selection pull-right {if $bBlinking}blink{/if}" title="" href="{$base_dir}layout-maker"><span class="glyphicon glyphicon-wrench"></span> Place designs on products</a>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="col-md-6 padding-0">
        <div class="col-xs-12 block-selection-product">
            <h5 class="text-center uppercase bold">Your selected products</h5>
            <div class="products-list">
                {if $aSelectedProducts}
                    {foreach from=$aSelectedProducts item=product name=products}
                        <div class="list-item list-item-product list-item-{$product->id} col-xs-4 col-sm-3 col-md-3 thumbnail margin-bottom-10 margin-top-10 border-none">
                            <a class="quick-view-bis" href="{$product->getLink()|escape:'html':'UTF-8'}" rel="{$product->getLink()|escape:'html':'UTF-8'}">
                                <img class="border" src="{$link->getImageLink($product->link_rewrite, $product->image.id_image, 'tm_home_default')|escape:'html':'UTF-8'}" title="{$product->name}" />
                            </a>
                            <span class="selection cursor-pointer glyphicon glyphicon-remove" data-id="{$product->id}" title="{l s='Remove from selection'}"></span>
                        </div>
                    {/foreach}
                {/if}
                <div class="alert alert-no-product margin-top-20 text-center" {if $aSelectedProducts}style="display:none"{/if}>
                    <p>No product selected yet</p>
                    <a class="btn btn-default margin-top-5" href="{$base_dir}45-products">
                        <span class="glyphicon glyphicon-chevron-right"></span> Select products <span class="glyphicon glyphicon-chevron-left"></span>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-6 padding-0">
        <div class="col-xs-12 block-selection-design">
            <h5 class="text-center uppercase bold">Your selected designs</h5>
            <div class="designs-list">
                <div class="col-xs-4 col-sm-3 thumbnail border-none margin-bottom-10 margin-top-10  list-item list-item-custom cursor-pointer" data-id="custom" data-type="design">
                    <div class="padding-0 border list-item-custom-text img-product uppercase">Upload your own Design</div>
                    <div class="cursor"></div>
                </div>
                {if $aSelectedDesigns}
                    {foreach from=$aSelectedDesigns item=design name=designs}
                        <div class="list-item list-item-design list-item-{$design->id} col-xs-4 col-sm-3 col-md-3 thumbnail margin-bottom-10 margin-top-10 border-none">
                            <img class="popup border" data-src="{$link->getImageLink($design->link_rewrite, $design->image.id_image, 'tm_thickbox_default')|escape:'html':'UTF-8'}" src="{$link->getImageLink($design->link_rewrite, $design->image.id_image, 'tm_home_default')|escape:'html':'UTF-8'}" title="{$design->name}" />
                            <span class="selection cursor-pointer glyphicon glyphicon-remove" data-id="{$design->id}" title="{l s='Remove from selection'}"></span>
                        </div>
                    {/foreach}
                {/if}
                {if $aCustomDesigns}
                    {foreach from=$aCustomDesigns item=custom_design name=custom_designs}
                        <div class="col-xs-4 col-sm-3 thumbnail border-none margin-bottom-10 margin-top-10 list-item list-item-design list-item-custom-image cursor-pointer " data-type="design">
                            <img class="popup border" src="{$base_uri}{$temp_custom_picture_path}{$custom_design}.png" title="custom" alt="custom" />
                            <span class="delete_cutom_picture cursor-pointer glyphicon glyphicon-remove" data-file-name="{$custom_design}" title="{l s='Remove from selection'}"></span>
                        </div>
                    {/foreach}
                {/if}
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <div class="clearfix"></div>
</div>
<div class="hidden-uploader">
    <input class="fileupload hidden-fileupload" type="file" name="files[]" multiple>
</div>