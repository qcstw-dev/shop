<div class="block-selection border margin-top-10 margin-bottom-10" {if !$selection} style="display: none;" {/if}>
    <div class="col-xs-12 padding-0">
        <div class="col-md-10">
            <h4 class="title-block-selection margin-top-20 uppercase">{l s='Your selection'}</h4>
        </div>
        <div class="col-md-2 margin-top-10 margin-bottom-10 clearfix">
            <a class="btn btn-block-selection secondary-background-color pull-right" href="{$base_dir}layout-maker"><span class="glyphicon glyphicon-wrench"></span> Customize your product</a>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="col-md-6 border-top border-right">
        <h5 class="text-center uppercase bold">Designs</h5>
        <div class="designs-list">
            <div class="col-xs-4 col-sm-3 thumbnail border-none margin-bottom-0 list-item list-item-design list-item-custom disabled_link" data-id="custom" data-type="design">
                <div class="padding border list-item-custom-text img-product uppercase">Upload your Design</div>
            </div>
            {if $aSelectedDesigns}
                {foreach from=$aSelectedDesigns item=design name=designs}
                    <div class="list-item list-item-{$design->id} col-xs-6 col-sm-3 col-md-3 thumbnail border-none">
                        <img class="popup border" data-src="{$link->getImageLink($design->link_rewrite, $design->image.id_image, 'tm_thickbox_default')|escape:'html':'UTF-8'}" src="{$link->getImageLink($design->link_rewrite, $design->image.id_image, 'tm_home_default')|escape:'html':'UTF-8'}" title="{$design->name}" />
                        <span class="selection cursor-pointer glyphicon glyphicon-remove" data-id="{$design->id}" title="{l s='Remove from selection'}"></span>
                    </div>
                {/foreach}
            {/if}
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="col-md-6 border-top">
        <h5 class="text-center uppercase bold">Products</h5>
        <div class="products-list">
            {if $aSelectedProducts}
                {foreach from=$aSelectedProducts item=product name=products}
                    <div class="list-item list-item-{$product->id} col-xs-6 col-sm-3 col-md-3 thumbnail border-none">
                        <a class="quick-view-bis" href="{$product->getLink()|escape:'html':'UTF-8'}" rel="{$product->getLink()|escape:'html':'UTF-8'}">
                            <img class="border" src="{$link->getImageLink($product->link_rewrite, $product->image.id_image, 'tm_home_default')|escape:'html':'UTF-8'}" title="{$product->name}" />
                        </a>
                            <span class="selection cursor-pointer glyphicon glyphicon-remove" data-id="{$product->id}" title="{l s='Remove from selection'}"></span>
                    </div>
                {/foreach}
            {/if}
        </div>
    </div>
    <div class="clearfix"></div>
</div>