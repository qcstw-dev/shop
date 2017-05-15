{include file=$header}
{include file=$menu}
{include file=$menu_creation}
<div class="col-xs-12 margin-bottom-10">
    <div class="btn btn-success pull-left publish-all"><span class="glyphicon glyphicon-check"></span> Publish all</div>
    <a href="{$base_uri}shop/{$custom_shop_name}" target="_blank" class="btn btn-info pull-left margin-left-10"><span class="glyphicon glyphicon-globe"></span> Visit your shop</a>
</div>
<div class="clearfix"></div>
<ul class="sortable">
    {foreach from=$creations item=creation}
        <li class="col-sm-4 col-md-3 block-creation block-creation-{$creation.id}" id="{$creation.id}" data-order="{$creation.order_number}">
            <div class="shadow padding-top-10 margin-top-10 block-creation-content">
                <div class="trash" data-id-creation="{$creation.id}"><span class="glyphicon glyphicon-trash"></span></div>
                    {if !$is_mobile_or_tablet}
                        <div class="drag"><span class="fa fa-arrows"></span></div>
                    {/if}
                    {if !$creation.is_active}
                    <div class="product-disabled vertical-center">
                        <div class="text-center bold color-red">
                            Product currently not available
                            <div><a class="underline" href="{$base_dir}{$custom_shop_name}/admin/contact" title="Contact us">Contact us</a></div>
                        </div>
                    </div>
                {/if}
                <div class="col-xs-10 margin-auto input-group-sm">
                    <input class="creation-name form-control margin-top-5 margin-bottom-5 text-center" 
                           data-id-creation="{$creation.id}" 
                           placeholder="Product name" 
                           value="{if $creation.product_name}{$creation.product_name}{else}{$creation.design.name} {$creation.original_product_name}{/if}"/>
                </div>
                <div class="col-xs-12">
                    <div class="thumbnail margin-bottom-0">
                        <img class="popup-picture" src="{$base_dir_ssl}img/custom_shop/creation/{$creation.custom_img}" alt="{$creation.custom_img}" title="{$creation.custom_img}" />
                    </div>
                </div>
                <div class="col-xs-12 text-center">
                    <div class="price bold">Sale price: <span class="font-size-15">{convertPrice price=$creation.prices.10 + $creation.design.price}</span></div>
                    <div class="price bold font-size-10">include commission: {convertPrice price=$creation.design.price}</div>
                    <div class="font-size-13">
                        <label class="cursor-pointer" for="published-{$creation.id}">Publish</label>
                        <input type="checkbox" class="published cursor-pointer" id="published-{$creation.id}" data-id-creation="{$creation.id}" name="published" {if $creation.published && $creation.product_name}checked{/if}/>
                    </div>
                </div>
                <div class="col-xs-12 btn btn-default btn-sm border-none border-top text-center cursor-pointer color-primary btn-embed" data-id="{$creation.id}">
                    <span class="glyphicon glyphicon-chevron-left"></span>Embed<span class="glyphicon glyphicon-chevron-right"></span>
                </div>
                <div class="popup-embed-{$creation.id} hidden">
                    <div class="text-center bold margin-bottom-10">Copy this code and paste it in your web page:</div>
                    <textarea class="embed-textarea-{$creation.id} text-left" style="width:100%; height: 200px; font-size: 10px"></textarea>
                    <div class="embed-content-{$creation.id} hidden">
                        <div style="display: inline-block; text-align: center; font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-weight: bold; padding: 10px; width: 225px; border: 1px solid #eee;">
                            <a href="{$base_dir_ssl}shop/{$custom_shop_name}?id_product={$creation.id_product}&id_creation={$creation.id}&id_design={$creation.id_design}" target="_blank" title="{if $creation.product_name}{$creation.product_name}{else}{$creation.design.name} {$creation.original_product_name}{/if}" style="text-decoration: none; color: #000;">
                                <img src="{$base_dir_ssl}img/custom_shop/creation/{$creation.custom_img}" alt="{if $creation.product_name}{$creation.product_name}{else}{$creation.design.name} {$creation.original_product_name}{/if}" title="{if $creation.product_name}{$creation.product_name}{else}{$creation.design.name} {$creation.original_product_name}{/if}" width="200" height="200" style="margin-bottom: 10px; border: 1px solid #eee; padding: 10px;"/>
                                <div>
                                    <img src="{$base_dir_ssl}img/custom_shop/creation/{$creation.custom_img}" alt="{if $creation.product_name}{$creation.product_name}{else}{$creation.design.name} {$creation.original_product_name}{/if}" title="{if $creation.product_name}{$creation.product_name}{else}{$creation.design.name} {$creation.original_product_name}{/if}" width="58" height="58" style="display: inline-block; border: 1px solid #eee; padding: 5px;"/>
                                    {foreach from=$creation.images item=image name=images}
                                        <img src="{$link->getImageLink($creation.link_rewrite, $image.id_image, 'large_default')|escape:'html':'UTF-8'}" alt="{if $creation.product_name}{$creation.product_name}{else}{$creation.design.name} {$creation.original_product_name}{/if}" title="{if $creation.product_name}{$creation.product_name}{else}{$creation.design.name} {$creation.original_product_name}{/if}" width="58" height="58" style="display: inline-block; border: 1px solid #eee; padding: 5px;"/>
                                    {/foreach}
                                </div>
                                <div class="embed-title-{$creation.id}" style="height: 30px; overflow: hidden; padding-top: 10px">{if $creation.product_name}{$creation.product_name|escape:'html':'UTF-8'}{else}{$creation.design.name|escape:'html':'UTF-8'} {$creation.original_product_name|escape:'html':'UTF-8'}{/if}</div>
                                <div style="font-size: 20px; padding-top: 10px">{convertPrice price=$creation.prices.10 + $creation.design.price}</div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </li>
    {/foreach}
    <li class="col-sm-4 col-md-3 margin-top-10">
        <a href="{$base_dir}{$custom_shop_name}/admin/creation/layout-maker">
            <div class="cursor-pointer dashed">
                <div class="thumbnail border-none margin-0 padding-0 margin-top-lg-30 margin-bottom-lg-30">
                    <img src="{$base_uri}img/plus-icon.jpg" title="upload" alt="upload" />
                </div>
            </div>
        </a>
    </li>
</ul>
<div class="clearfix"></div>
{include file=$footer}