{include file=$header}
{include file=$menu}
{include file=$menu_creation}
<div class="col-xs-9">
    <div class="panel panel-default">
        <div class="panel-heading">Pictures selection</div>
        <div class="panel-body list-picture">
            {foreach from=$pictures item='picture'}
                <div class="col-md-3">
                    <div class="thumbnail cursor-pointer item-list-picture" data-id-picture="{$picture.id}">
                        <img src="{$base_uri}{$picture_dir}{$picture.picture}" title="{$picture.name}" alt="{$picture.name}" />
                    </div>
                </div>
            {/foreach}
        </div>
    </div>
</div>
<div class="col-xs-3">
    <div class="btn btn-success btn-product-selection vertical-center font-size-30 padding-bottom-20">
        <div class="glyphicon glyphicon-plus-sign margin-top-20 font-size-40"></div>
        Product<br> selection
    </div>
</div>
<div class="clearfix"></div>
<div id="component" class="component margin-bottom-10">
    <div class="btn-rotate rotate">
        <div class="glyphicon glyphicon-repeat font-size-30"></div>
        <div class="bold margin-top-5">Rotate 90°</div>
    </div>
    <div class="overlay-top"></div>
    <div class="overlay-bottom"></div>
    <div class="overlay-left"></div>
    <div class="overlay-right"></div>
    <div class="btn-add-creation row">
        <button class="btn btn-primary add-creation col-xs-12" 
                rel="nofollow" title="{l s='Add to my shop'}"
                data-id-product=""
                data-id-design=""
                data-custom-picture="">{l s='Add to my shop'}</button>
        <button class="btn btn-default preview-layout margin-top-10 col-xs-12"><span class="glyphicon glyphicon-eye-open"></span> Preview</button>
    </div>
    <div class="change-color-product-block row background-white border padding-10" style="display: none">
        <div class="col-xs-12 col-sm-4 col-lg-12 padding-0 border text-center margin-bottom-10 background-dark-grey block-item-size" style="display: none">
            <div class="col-xs-6">
                Item size:
            </div>
            <div class="col-xs-6 background-white info-item-size"></div>
        </div>
        <div class="clearfix"></div>
        <div class="col-xs-12 col-sm-4 col-lg-12 padding-0 border text-center margin-bottom-10 background-dark-grey block-design-size" style="display: none">
            <div class="col-xs-6">
                Design size:
            </div>
            <div class="col-xs-6 background-white info-design-size"></div>
        </div>
        <div class="preview-color" style="display: none">
            <div class="col-xs-12 padding-0 border overflow-auto">
                <h4 class="padding-md-10">Colors available:</h4>
                <div class="block-colors">
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <div class="overlay">
        <div class="overlay-inner">
            <img class="overlay-img" src="">
        </div>
    </div>
    <img id="image" class="resize-image custom-margin-left dash" src="{$img_dir}layout_maker/drag-and-drop.png" />
    <img class="hidden-original-picture hidden" scr="{$img_dir}layout_maker/drag-and-drop.png" />
</div>
{include file=$footer}