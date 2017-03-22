{include file=$header}
{include file=$menu}

<div class="col-xs-12">
    <div class="col-xs-12 col-sm-4 margin-bottom-20">
        <a href="{$base_uri}{$custom_shop_name}/admin/creation/picture" class="text-decoration-none">
            <div class="border creation-block">
                <span class="glyphicon glyphicon-upload"></span>
                Upload your picture and set your comission
            </div>
        </a>
    </div>
    <div class="col-xs-12 col-sm-4 margin-bottom-20">
        {if $pictures}
            <a href="{$base_uri}{$custom_shop_name}/admin/creation/layout-maker" class="text-decoration-none">
        {/if}
            <div class="border creation-block {if !$pictures}disabled{/if}">
                <span class="glyphicon glyphicon-pencil"></span>
                Place pictures on products
            </div>
        {if $pictures}
            </a>
        {/if}
    </div>
    <div class="col-xs-12 col-sm-4 margin-bottom-20">
        {if $creations}
            <a href="{$base_uri}{$custom_shop_name}/admin/creation/summary" class="text-decoration-none">
        {/if}
            <div class="border creation-block {if !$creations}disabled{/if}">
                <span class="glyphicon glyphicon-list-alt"></span>
                Your creation summary
            </div>
        {if $creations}
            </a>
        {/if}
    </div>
</div>

{include file=$footer}