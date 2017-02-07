{include file=$header}
{include file=$menu}

<div class="col-xs-12">
    <div class="col-xs-12 col-md-4 margin-bottom-20">
        <a href="{$base_uri}{$custom_shop_name}/admin/creation/picture" class="text-decoration-none">
            <div class="border creation-block">
                <span class="glyphicon glyphicon-upload font-size-44"></span>
                Upload your picture and set your comission
            </div>
        </a>
    </div>
    <div class="col-xs-12 col-md-4">
        <a href="{$base_uri}{$custom_shop_name}/admin/creation/layout-maker" class="text-decoration-none">
            <div class="border creation-block">
                <span class="glyphicon glyphicon-pencil font-size-44"></span>
                Place pictures on products
            </div>
        </a>
    </div>
    <div class="col-xs-12 col-md-4">
        <a href="{$base_uri}{$custom_shop_name}/admin/creation/summary" class="text-decoration-none">
            <div class="border creation-block">
                <span class="glyphicon glyphicon-list-alt font-size-44"></span>
                Your creation summary
            </div>
        </a>
    </div>
</div>

{include file=$footer}