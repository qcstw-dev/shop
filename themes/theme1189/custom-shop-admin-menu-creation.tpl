<div class="col-xs-12 padding-0 margin-bottom-10 ">
    <div class="menu-creation btn-group btn-group-justified" role="group">
        <a href="{$base_uri}{$custom_shop_name}/admin/creation/picture" class="btn btn-default bold padding-top-10 padding-bottom-10{if $page_name == 'customshopadmincreationpicture'} active{/if}">
            <span class="glyphicon glyphicon-upload font-size-20"></span> <br /> Upload your pictures<br /> and set your comission
        </a>
        <a href="{$base_uri}{$custom_shop_name}/admin/creation/layout-maker" class="btn btn-default menu-item-picture {if !$pictures}disabled{/if} bold padding-top-10 padding-bottom-10{if $page_name == 'customshopadmincreationlayoutmaker'} active{/if}">
            <span class="glyphicon glyphicon-pencil font-size-20"></span><br /> Place pictures<br /> on products
        </a>
        <a href="{$base_uri}{$custom_shop_name}/admin/creation/summary" class="btn btn-default menu-item-summary {if !$creations}disabled{/if} bold padding-top-10 padding-bottom-10{if $page_name == 'customshopadmincreationsummary'} active{/if}">
            <span class="glyphicon glyphicon-list-alt font-size-20"></span><br /> Your creations<br /> summay
        </a>
    </div>
</div>
<div class="clearfix"></div>