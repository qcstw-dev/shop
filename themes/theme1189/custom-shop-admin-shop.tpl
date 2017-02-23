{include file=$header}
{include file=$menu}

<div class="col-xs-12 col-md-offset-2">
    <div class="col-xs-12 col-md-4 margin-bottom-20">
        <a href="{$base_uri}{$custom_shop_name}/admin/shop/edit" class="text-decoration-none">
            <div class="border creation-block">
                <span class="glyphicon glyphicon-pencil"></span>
                Edit your shop information
            </div>
        </a>
    </div>
    <div class="col-xs-12 col-md-4">
        <a href="{$base_uri}{if $smarty.server.HTTP_HOST == 'localhost'}custom-{/if}shop/{$custom_shop_name}" target="_blank" class="text-decoration-none">
            <div class="border creation-block">
                <span class="glyphicon glyphicon-globe"></span>
                Visit your shop
            </div>
        </a>
    </div>
</div>
<div class="clearfix"></div>

{include file=$footer}