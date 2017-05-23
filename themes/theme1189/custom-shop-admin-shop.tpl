{include file=$header}
{include file=$menu}

<div class="col-xs-12">
    <div class="col-xs-12 col-md-4 margin-bottom-20">
        <a href="{$base_uri}{$custom_shop_name}/admin/shop/edit" class="text-decoration-none">
            <div class="border creation-block">
                <span class="glyphicon glyphicon-pencil"></span>
                Edit my shop information
            </div>
        </a>
    </div>
    <div class="col-xs-12 col-md-4 margin-bottom-20">
        <a href="{$base_uri}shop/{$custom_shop_name}" target="_blank" class="text-decoration-none">
            <div class="border creation-block">
                <span class="glyphicon glyphicon-globe"></span>
                Visit my shop
            </div>
        </a>
    </div>
    <div class="col-xs-12 col-md-4">
            <div class="border btn-iframe creation-block cursor-pointer padding-0">
                <div><span class="glyphicon glyphicon-chevron-left font-size-20"></span>Iframe<span class="glyphicon glyphicon-chevron-right font-size-20"></span>*</div>
                <div class="iframe-mention">
                    *Display your Gift Attitude shop on your own website.
                </div>
            </div>
    </div>
</div>
<div class="clearfix"></div>
{include file=$iframe}
{include file=$footer}