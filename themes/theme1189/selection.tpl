<div class="block-selection border margin-top-10 margin-bottom-10" {if !$selection} style="display: none;" {/if}>
    <div class="col-xs-12 padding-0">
        <div class="col-xs-10">
            <h4 class="margin-top-20 uppercase">{l s='Your selection'}</h4>
        </div>
        <div class="col-xs-2 margin-top-10 margin-bottom-10">
            <a class="btn secondary-background-color pull-right" href="{$base_dir}layout-maker"><span class="glyphicon glyphicon-wrench"></span> Customize your product</a>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="col-xs-6 border-top border-right">
        <h5 class="text-center bold">Designs</h5>
        <ul class="designs-list">
            {if $aSelectedDesigns}
                {foreach from=$aSelectedDesigns item=design name=designs}
                    <li class="list-item-design list-item-{$design->id}">
                        <img class="popup" data-src="{$link->getImageLink($design->link_rewrite, $design->image.id_image, 'tm_thickbox_default')|escape:'html':'UTF-8'}" src="{$link->getImageLink($design->link_rewrite, $design->image.id_image, 'tm_home_default')|escape:'html':'UTF-8'}" title="{$design->name}" />
                        <span class="selection cursor-pointer glyphicon glyphicon-remove" data-id="{$design->id}" data-toggle="tooltip" data-placement="right" title="{l s='Remove from selection'}"></span>
                    </li>
                {/foreach}
            {/if}
        </ul>
    </div>
    <div class="col-xs-6 border-top">
        <h5 class="text-center bold">Products</h5>
        <ul class="products-list">
            {if $aSelectedProducts}
                {foreach from=$aSelectedProducts item=product name=products}
                    <li class="list-item-{$product->id}">
                        <a class="quick-view-bis" href="{$product->getLink()|escape:'html':'UTF-8'}" rel="{$product->getLink()|escape:'html':'UTF-8'}">
                            <img src="{$link->getImageLink($product->link_rewrite, $product->image.id_image, 'tm_home_default')|escape:'html':'UTF-8'}" title="{$product->name}" />
                        </a>
                            <span class="selection cursor-pointer glyphicon glyphicon-remove" data-id="{$product->id}" data-toggle="tooltip" data-placement="right" title="{l s='Remove from selection'}"></span>
                    </li>
                {/foreach}
            {/if}
        </ul>
    </div>
    <div class="clearfix"></div>
</div>