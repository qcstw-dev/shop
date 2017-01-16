{assign var='bDisplayProducts' value=$page_name == 'category' && ($category->name == "Products" || $category->id_parent == "45")}
{assign var='bDisplayDesigns' value=($page_name == 'category' && $category->name == "Pictures") || $page_name == 'design'}
{assign var='bDisplayLayoutMaker' value=$page_name == 'layoutmaker'}

<ul class="row nav nav-tabs margin-top-10">
    <li role="presentation" class="col-xs-4 text-center{if $bDisplayProducts} active{/if}"><a href="{$base_uri}45-products"><span class="step-number">1</span>{l s='Select Products'}</a></li>
    <li role="presentation" class="col-xs-4 text-center{if $bDisplayDesigns} active{/if}"><a href="{$base_uri}pictures"><span class="step-number">2</span>{l s='Select Pictures'}</a></li>
    <li role="presentation" class="col-xs-4 text-center{if $bDisplayLayoutMaker} active{/if}"><a href="{$base_uri}layout-maker"><span class="step-number">3</span>{l s='Place pictures on products'}</a></li>
</ul>
<div class="row bordered block-selection padding-top-10" {if ($page_name == 'index' || $page_name == 'product') && !$aSelectedProducts && !$aSelectedDesigns}style="display: none"{/if}>
    {if $bDisplayProducts}
        <div class="col-xs-12">
            <div class="panel panel-default margin-bottom-10 block-selection-product">
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
            <div class="panel panel-default margin-bottom-10 block-selection-design">
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
    {if $bDisplayLayoutMaker}
        <div class="col-xs-12">
            <div class="panel panel-default  margin-bottom-10 block-selection-design">
                <div class="panel-heading">
                    <h3 class="panel-title">{l s='Your selection'}</h3>
                </div>
                <div class="panel-body block-selection col-xs-12 padding-0">
                    <div class="col-md-6 padding-0">
                        <div class="col-xs-12 border-right block-selection-product">
                            <div class="col-md-12">
                                <h5 class="text-center font-size-13 bold margin-bottom-0">{l s='Click on the product you want to personalize'}</h5>
                            </div>
                            <div class="col-md-12 padding-0">
                                <div class="products-list">
                                    {foreach from=$aSelectedProducts item=product name=products}
                                        <div class="col-xs-2 thumbnail border-none margin-bottom-0 margin-top-10 list-item list-item-product cursor-pointer list-item-{$product->id}" data-id="{$product->id}" data-type="product" title="{$product->name}">
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
                                <h5 class="text-center font-size-13 bold margin-bottom-0">{l s='Click on the picture you want to use'}</h5>
                            </div>
                            <div class="col-md-12 padding-0">
                                <div class="designs-list">
                                    {foreach from=$aSelectedDesigns item=design name=designs}
                                        <div class="col-xs-2 thumbnail border-none margin-bottom-0 margin-top-10 list-item list-item-design cursor-pointer list-item-{$design->id}" data-id="{$design->id}" data-type="design" title="{$design->name}">
                                            <img class="img-product border" src="{$link->getImageLink($design->link_rewrite, $design->image.id_image, 'tm_home_default')|escape:'html':'UTF-8'}" title="{$design->name}" alt="{$design->name}" />
                                        </div>
                                    {/foreach}
                                    {foreach from=$aCustomDesigns item=custom_design name=custom_designs}
                                        <div class="col-xs-2 thumbnail border-none margin-bottom-0 margin-top-10 list-item list-item-design list-item-custom-image id_{$custom_design} cursor-pointer" data-original-picture="{$custom_design}" data-type="design">
                                            <img class="img-product border" src="{$base_uri}{$temp_custom_picture_path}{$custom_design}.png" title="custom" alt="custom" />
                                        </div>
                                    {/foreach}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>     
            </div>
        </div>
    {/if}
    <div class="clearfix"></div>
</div>