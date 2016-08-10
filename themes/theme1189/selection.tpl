<div class="block-selection border margin-top-10 margin-bottom-10" {if !$selection} style="display: none;" {/if}>
    <div class="col-xs-12 padding-0">
        <div class="col-xs-10">
            <h4 class="margin-top-20">{l s='Your selection'}</h4>
        </div>
        <div class="col-xs-2 margin-top-10 margin-bottom-10">
            <a class="btn btn-warning pull-right" href="{$base_dir}layout-maker"><span class="glyphicon glyphicon-pencil"></span> Layout maker</a>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="col-xs-6 border-top border-right">
        <h5 class="text-center bold">Designs</h5>
        <ul class="designs-list">
            {if $aSelectedDesigns}
                {foreach from=$aSelectedDesigns item=design name=designs}
                    <li class="list-item-design list-item-{$design->id}">
                        <a href="{$design->getLink()|escape:'html':'UTF-8'}">
                            <img src="{$link->getImageLink($design->link_rewrite, $design->image.id_image, 'tm_home_default')|escape:'html':'UTF-8'}" data-toggle="tooltip" data-placement="right" title="{$design->name}" />
                        </a>
                        <span class="selection cursor-pointer glyphicon glyphicon-remove" data-id="{$design->id}"></span>
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
                        <a href="{$product->getLink()|escape:'html':'UTF-8'}">
                            <img src="{$link->getImageLink($product->link_rewrite, $product->image.id_image, 'tm_home_default')|escape:'html':'UTF-8'}" data-toggle="tooltip" data-placement="right" title="{$product->name}" />
                        </a>
                        <span class="selection cursor-pointer glyphicon glyphicon-remove" data-id="{$product->id}"></span>
                    </li>
                {/foreach}
            {/if}
        </ul>
    </div>
    <div class="clearfix"></div>
</div>