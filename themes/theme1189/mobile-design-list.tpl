<div class="col-xs-12 margin-bottom-10">
    <a href="{$base_uri}mobile-designs?categories" class="btn btn-default col-xs-4"><span class="glyphicon glyphicon-chevron-left"></span> {l s='Back'}</a>
    <h4 class="col-xs-8 text-center">{$category->name}</h4>
</div>
{foreach from=$designs item=design name=designs}
    <div class="col-xs-6 col-sm-3 margin-bottom-10">
        <div class="col-xs-12 border padding-0">
            <div class="col-xs-6 padding-0 padding-top-5 padding-bottom-5 text-center btn-add selection" data-id="{$design.id_product}" title="Add to selection">
                <a href="{$base_uri}mobile-layout-maker?id_design={$design.id_product}">
                    <span class="glyphicon glyphicon-plus-sign"></span> <span class="text">{l s='Select'}</span>
                </a>
            </div>
            <div class="popup-product" data-id="{$design.id_product}">
                <div class="col-xs-6 padding-0 padding-top-5 padding-bottom-5 text-center preview">
                    <span class="glyphicon glyphicon-zoom-in"></span> <span class="text">{l s='Zoom'}</span>
                </div>
                <div class="col-xs-12 padding-0 border-bottom border-top">
                    <div class="thumbnail border-none margin-bottom-0 popup-product" data-id="{$design.id_product}">
                        <img src="{$link->getImageLink($design.link_rewrite, $design.id_image, 'medium_default')|escape:'html':'UTF-8'}" alt="" title=""/>
                    </div>
                </div>
                <div class="col-xs-12 text-center bold padding-0 padding-top-5">
                    <span class="font-size-13">
                        {$design.name|truncate:12:'...'|escape:'html':'UTF-8'}
                    </span>
                </div>
            </div>
        </div>
        <div class="popup-product-content-{$design.id_product} hidden">
            <div class="row">
                <div class="col-xs-12 margin-bottom-10">
                    <div class="btn btn-default close-popup pull-left col-xs-4"><span class="glyphicon glyphicon-chevron-left"></span> {l s='Back'}</div>
                    <div class="col-xs-8 font-size-15 text-center bold margin-top-5">{$design.name|escape:'html':'UTF-8'}</div>
                </div>
                <div class="col-xs-12 padding-0 margin-bottom-10">
                    <div class="thumbnail border-none margin-bottom-0">
                        <img class="border" src="{$link->getImageLink($design.link_rewrite, $design.id_image, 'large_default')|escape:'html':'UTF-8'}">
                    </div>
                </div>
                <a class="btn btn-success col-xs-12" href="{$base_uri}mobile-layout-maker?id_design={$design.id_product}">
                    <span class="glyphicon glyphicon-plus-sign"></span> <span class="text">{l s='Select'}</span>
                </a>
            </div>
        </div>
    </div>
{/foreach}