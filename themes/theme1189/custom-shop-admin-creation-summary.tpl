{include file=$header}
{include file=$menu}
{include file=$menu_creation}
<div class="col-xs-12 margin-bottom-10">
    <div class="btn btn-success publish-all"><span class="glyphicon glyphicon-check"></span> Publish all</div>
</div>
{foreach from=$creations item=creation}
    <div class="col-sm-4 col-md-3 margin-bottom-10 block-creation block-creation-{$creation.id}">
        <div class="border shadow">
            <div class="trash" data-id-creation="{$creation.id}"><span class="glyphicon glyphicon-trash"></span></div>
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
                    <img class="popup-picture" src="{$base_dir}img/custom_shop/creation/{$creation.custom_img}" alt="{$creation.custom_img}" title="{$creation.custom_img}" />
                </div>
            </div>
            <div class="col-xs-12 text-center">
                <div class="price bold">Sale price: <span class="font-size-15">{convertPrice price=$creation.prices.10 + $creation.design.price}</span></div>
                <div class="price bold font-size-13">Commission set: <span class="font-size-13">{convertPrice price=$creation.design.price}</span></div>
                <div class="font-size-13">
                    <label class="cursor-pointer" for="published-{$creation.id}">Publish</label>
                    <input type="checkbox" class="published cursor-pointer" id="published-{$creation.id}" data-id-creation="{$creation.id}" name="published" {if $creation.published && $creation.product_name}checked{/if}/>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
{/foreach}
<div class="col-sm-4 col-md-3 margin-bottom-10">
    <a href="{$base_dir}{$custom_shop_name}/admin/creation/layout-maker">
        <div class="cursor-pointer dashed">
            <div class="thumbnail border-none margin-0 padding-0 margin-top-lg-30 margin-bottom-lg-30">
                <img src="{$base_uri}img/plus-icon.jpg" title="upload" alt="upload" />
            </div>
        </div>
    </a>
</div>
<div class="clearfix"></div>
{include file=$footer}