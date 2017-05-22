{include file=$header}
{include file=$menu}
{include file=$menu_creation}
{*<div class="col-xs-12 margin-bottom-10 visible-xs visible-sm">
    <a href="{$base_uri}{$custom_shop_name}/admin/creation/summary" class="btn btn-info pull-right {if !$creations}disabled{/if} menu-item-summary">To creation summary <span class="glyphicon glyphicon-chevron-right"></span></a>
</div>*}
<div class="col-sm-9">
    <div class="panel panel-default">
        <div class="panel-heading bold"><span class="font-size-15">Pictures selection</span> <span class="font-size-13">(Click on the picture to place it)</span></div>
        <div class="panel-body list-picture padding-0 padding-top-10">
            {if $pictures}
                {foreach from=$pictures item='picture'}
                    <div class="col-xs-6 col-sm-4 col-md-3">
                        <div class="thumbnail cursor-pointer item-list-picture vertical-center" data-id-picture="{$picture.id}">
                            <img src="{$base_uri}{$picture_dir}{$picture.picture}" title="{$picture.name}" alt="{$picture.name}" />
                        </div>
                    </div>
                {/foreach}
            {else}
                <div class="col-xs-12">
                    <div class="alert alert-info text-center">No pictures available</div>
                </div>
            {/if}
        </div>
    </div>
</div>
<div class="col-sm-3 margin-bottom-10">
    <div class="btn btn-success btn-product-selection vertical-center font-size-30 padding-bottom-20 hidden-xs">
        <div class="glyphicon glyphicon-plus-sign margin-top-20 font-size-40"></div>
        Product<br> selection
    </div>
    <div class="btn btn-success btn-product-selection vertical-center font-size-20 visible-xs">
        <div class="glyphicon glyphicon-plus-sign font-size-20"></div>
        Product selection
    </div>
</div>
<div class="clearfix"></div>
<div class="col-md-9 padding-0 {if !$is_mobile_or_tablet}pull-right{/if}">
    <div id="component" class="component margin-bottom-10 thumbnail padding-0">
        <div class="overlay">
            <div class="overlay-inner">
                <img class="overlay-img" src="">
            </div>
        </div>
        <img id="image" class="resize-image" src="{$img_dir}layout_maker/drag-and-drop.png" />
        <img class="hidden-original-picture hidden" scr="{$img_dir}layout_maker/drag-and-drop.png" />
    </div>
</div>
<div class="btn-rotate rotate visible-lg hidden pull-right">
    <div class="glyphicon glyphicon-repeat font-size-30"></div>
    <div class="bold margin-top-5">Rotate<br />picture 90°</div>
</div>
<div class="btn-rotate rotate-product margin-top-100 visible-lg hidden pull-right">
    <div class="glyphicon glyphicon-repeat font-size-30"></div>
    <div class="bold margin-top-5">Rotate<br />product 90°</div>
</div>
<div class="col-md-3 padding-0 {if !$is_mobile_or_tablet}pull-left{/if}">
    <div class="btn-add-creation margin-bottom-10 col-xs-12">
        <div class="col-xs-6 col-sm-12 ">
            <button class="btn btn-info rotate hidden-lg col-xs-12 margin-bottom-10"><span class="glyphicon glyphicon-repeat"></span> Rotate 90°</button>
        </div>
        <div class="col-xs-6 col-sm-12 ">
            <button class="btn btn-success rotate-product hidden-lg col-xs-12 margin-bottom-10"><span class="glyphicon glyphicon-repeat"></span> Rotate product</button>
        </div>
        <div class="col-xs-12 col-sm-12 padding-0">
            <button class="btn btn-warning preview col-xs-12"><span class="glyphicon glyphicon-eye-open"></span> Preview</button>
        </div>
        <button class="btn btn-primary btn-lg add-creation margin-top-10 col-xs-12 font-size-20" 
                rel="nofollow" title="{l s='Add to my shop'}"
                data-id-product=""
                data-id-design=""
                data-custom-picture=""><span class="glyphicon glyphicon-ok font-size-30"></span><br />Add to my shop</button>
        <button class="btn btn-primary add-creation add-creation-hidden hidden margin-top-10 col-xs-12" 
                rel="nofollow" title="{l s='Add to my shop'}"
                data-id-product=""
                data-id-design=""
                data-custom-picture=""><span class="glyphicon glyphicon-ok"></span> Add to my shop</button>
        <div class="clearfix"></div>
        <div class="change-color-product-block text-left col-xs-12 background-white border padding-top-10 padding-bottom-10 margin-top-10" style="display: none">
            <div class="col-xs-12 padding-0 border text-center margin-bottom-10 background-dark-grey block-item-size  font-size-13" style="display: none">
                <div class="col-xs-6 padding-0">Item size:</div>
                <div class="col-xs-6 background-white padding-0 info-item-size"></div>
            </div>
            <div class="clearfix"></div>
            <div class="col-xs-12 padding-0 border text-center margin-bottom-10 background-dark-grey block-design-size font-size-13" style="display: none">
                <div class="col-xs-6 padding-0">Design size:</div>
                <div class="col-xs-6 background-white padding-0 info-design-size"></div>
            </div>
            <div class="preview-color" style="display: none">
                <div class="col-xs-12 padding-0 border overflow-auto">
                    <div class="bold padding-10">Colors available:</div>
                    <div class="block-colors">
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<div class="clearfix"></div>
<div class="col-xs-12">
    <a href="{$base_uri}{$custom_shop_name}/admin/creation/summary" class="btn btn-info pull-right {if !$creations}disabled{/if} menu-item-summary">To creation summary <span class="glyphicon glyphicon-chevron-right"></span></a>
</div>
{include file=$footer}