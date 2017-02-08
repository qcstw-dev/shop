{include file=$header}
{include file=$menu}

<div class="col-xs-12 col-md-offset-2">
    <div class="col-xs-12 col-md-4 margin-bottom-20">
        <a href="{$base_uri}{$custom_shop_name}/admin/shop/edit" class="text-decoration-none">
            <div class="border creation-block">
                <span class="glyphicon glyphicon-pencil font-size-44"></span>
                Edit your shop information
            </div>
        </a>
    </div>
    <div class="col-xs-12 col-md-4">
        <a href="{$base_uri}{$custom_shop_name}" target="_blank" class="text-decoration-none">
            <div class="border creation-block">
                <span class="glyphicon glyphicon-globe font-size-44"></span>
                Visit your shop
            </div>
        </a>
    </div>
</div>

{include file=$footer}