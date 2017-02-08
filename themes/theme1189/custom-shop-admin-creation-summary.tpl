{include file=$header}
{include file=$menu}
{include file=$menu_creation}
{foreach from=$creations item=creation}
    <div class="col-md-3 margin-bottom-10 block-creation-{$creation.id}">
        <div class="border shadow">
            <div class="trash border" data-id-creation="{$creation.id}"><span class="glyphicon glyphicon-trash"></span></div>
            <div class="col-xs-10 margin-auto input-group-sm">
                <input class="creation-name form-control margin-top-5 margin-bottom-5 text-center" data-id-creation="{$creation.id}" placeholder="Product name" value="{if $creation.product_name}{$creation.product_name}{/if}"/>
            </div>
            <div class="col-xs-12">
                <div class="thumbnail margin-bottom-0">
                    <img class="cursor-pointer popup-picture" src="{$base_dir}img/custom_shop/creation/{$creation.custom_img}" alt="" title="" />
                </div>
            </div>
            <div class="price bold font-size-15 text-center">Sell price: {convertPrice price=$creation.price}*</div>
            <div class="text-center font-size-13">
                <label class="cursor-pointer" for="published-{$creation.id}">Published</label>
                <input type="checkbox" class="published cursor-pointer" id="published-{$creation.id}" data-id-creation="{$creation.id}" name="published" {if $creation.published}checked{/if}/>
            </div>
        </div>
    </div>
{/foreach}
<div class="col-md-3 margin-bottom-10">
    <a href="{$base_dir}{$custom_shop_name}/admin/creation/layout-maker">
        <div class="cursor-pointer dashed">
            <div class="thumbnail border-none margin-0 padding-0 margin-top-lg-30 margin-bottom-lg-30">
                <img src="{$base_uri}img/plus-icon.jpg" title="upload" alt="upload" />
            </div>
        </div>
    </a>
</div>
<div class="clearfix"></div>
<div class="col-xs-12 font-size-13 bold">* based on product price and your picture price</div>
{include file=$footer}