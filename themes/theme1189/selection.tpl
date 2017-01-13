{assign var='bDisplayProducts' value=$page_name == 'category' && $category->name == "Products"}
{assign var='bDisplayDesigns' value=($page_name == 'category' && $category->name == "Pictures") || $page_name == 'design'}
{assign var='bDisplayLayoutMaker' value=$page_name == 'layout-maker'}

<ul class="row nav nav-tabs margin-top-10">
    <li role="presentation" class="col-xs-4 text-center{if $bDisplayProducts} active{/if}"><a href="{$base_uri}45-products"><span class="step-number">1</span>{l s='Select Products'}</a></li>
    <li role="presentation" class="col-xs-4 text-center{if $bDisplayDesigns} active{/if}"><a href="{$base_uri}pictures"><span class="step-number">2</span>{l s='Select Pictures'}</a></li>
    <li role="presentation" class="col-xs-4 text-center{if $bDisplayLayoutMaker} active{/if}"><a href="{$base_uri}layout-maker"><span class="step-number">3</span>{l s='Place pictures on products'}</a></li>
</ul>
<div class="row bordered block-selection padding-top-10 padding-bottom-10" {if ($page_name == 'index' || $page_name == 'product') && !$aSelectedProducts && !$aSelectedDesigns}style="display: none"{/if}>
    {if $bDisplayProducts}
        <div class="col-xs-12">
            <div class="panel panel-default block-selection-product">
                <div class="panel-heading">
                    <h3 class="panel-title">{l s='Product selection'}</h3>
                </div>
                <div class="panel-body products-list">
                    {if $aSelectedProducts}
                        {foreach from=$aSelectedProducts item=product name=products}
                            <div class="list-item list-item-product list-item-{$product->id} col-xs-1 thumbnail margin-bottom-0 border-none">
                                <a class="quick-view-bis" href="{$base_uri}product-popup?id_product={$product->id}">
                                    <img class="border" src="{$link->getImageLink($product->link_rewrite, $product->image.id_image, 'tm_home_default')|escape:'html':'UTF-8'}" title="{$product->name}" />
                                </a>
                                <span class="selection cursor-pointer glyphicon glyphicon-remove" data-id="{$product->id}" title="{l s='Remove from selection'}"></span>
                            </div>
                        {/foreach}
                    {/if}
                    <div class="alert alert-no-product margin-top-20 text-center" {if $aSelectedProducts}style="display:none"{/if}>
                        <p>{l s='No product selected yet'}</p>
                    </div>
                </div>
            </div>
        </div>
    {/if}
    {if $bDisplayDesigns}
        <div class="col-xs-12">
            <div class="panel panel-default block-selection-design">
                <div class="panel-heading">
                    <h3 class="panel-title">{l s='Picture selection'}</h3>
                </div>
                <div class="panel-body designs-list">
                    {if $aSelectedDesigns}
                        {foreach from=$aSelectedDesigns item=design name=designs}
                            <div class="list-item list-item-design list-item-{$design->id} col-xs-1 thumbnail margin-bottom-10 margin-top-10 border-none" data-id="{$design->id}">
                                <a class="quick-view-bis" href="{$base_uri}product-popup?id_product={$design->id}">
                                    <img class="border" src="{$link->getImageLink($design->link_rewrite, $design->image.id_image, 'tm_home_default')|escape:'html':'UTF-8'}" title="{$design->name}" />
                                </a>
                                <span class="selection cursor-pointer glyphicon glyphicon-remove" data-id="{$design->id}" title="{l s='Remove from selection'}"></span>
                            </div>
                            <img src="{$link->getImageLink($design->link_rewrite, $design->image.id_image, 'tm_large_default')|escape:'html':'UTF-8'}" class="hidden" title="" alt="" />
                        {/foreach}
                    {/if}
                    {if $aCustomDesigns}
                        {foreach from=$aCustomDesigns item=custom_design name=custom_designs}
                            <div class="col-xs-1 thumbnail border-none margin-bottom-10 margin-top-10 list-item list-item-design list-item-custom-image cursor-pointer " data-type="design">
                                <img class="popup border" src="{$base_uri}{$temp_custom_picture_path}{$custom_design}.png" title="custom" alt="custom" />
                                <span class="delete_cutom_picture cursor-pointer glyphicon glyphicon-remove" data-file-name="{$custom_design}" title="{l s='Remove from selection'}"></span>
                            </div>
                        {/foreach}
                    {/if}
                    <div class="alert alert-no-product margin-top-20 text-center" {if $aSelectedDesigns || $aCustomDesigns}style="display:none"{/if}>
                        <p>{l s='No picture selected yet'}</p>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    {/if}
    <div class="clearfix"></div>
</div>