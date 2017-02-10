<div class="list-group admin-menu col-md-1 padding-right-0 shadow">
    <a href="{$base_uri}{$custom_shop_name}/admin/creation" class="list-group-item{if in_array($page_name, [
        'customshopadmincreation',
        'customshopadmincreationpicture',
        'customshopadmincreationlayoutmaker',
        'customshopadmincreationsummary'
       ])} active{/if}">Creation zone</a>
    <a href="{$base_uri}{$custom_shop_name}/admin/shop" class="list-group-item{if in_array($page_name, [
        'customshopadminshop',
        'customshopadminshopedit'
       ])} active{/if}">Shop</a>
    <a href="#" class="list-group-item">Dashboard</a>
    <a href="#" class="list-group-item">User account</a>
    <a href="#" class="list-group-item">Contact</a>
    <a href="#" class="list-group-item"><span class="glyphicon glyphicon-log-out"></span> Log out</a>
</div>
<div class="col-md-offset-1 col-md-11 border shadow content-admin{if $page_name == 'customshopadmincreation'} vertical-center{/if}">
