<div class="list-group col-xs-1 padding-right-0 shadow admin-menu">
    <a href="{$base_uri}{$custom_shop_name}/admin/creation" class="list-group-item{if in_array($page_name, [
        'customshopadmincreation',
        'customshopadmincreationpicture',
        'customshopadmincreationlayoutmaker'
       ])} active{/if}">Creation zone</a>
    <a href="#" class="list-group-item">Shop</a>
    <a href="#" class="list-group-item">Dashboard</a>
    <a href="#" class="list-group-item">User account</a>
    <a href="#" class="list-group-item">Contact</a>
    <a href="#" class="list-group-item"><span class="glyphicon glyphicon-log-out"></span> Log out</a>
</div>
<div class="col-xs-offset-1 col-xs-11 border shadow padding-left-0 content-admin{if $page_name == 'customshopadmincreation'} vertical-center{/if}">
