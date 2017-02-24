<div class="col-xs-12 col-md-1 padding-0">
    <div class="list-group admin-menu">
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
        <a href="{$base_uri}{$custom_shop_name}/admin/dashboard" class="list-group-item{if in_array($page_name, [
        'customshopadmindashboard'
       ])} active{/if}">Dashboard</a>
        <a href="#" class="list-group-item">User account</a>
        <a href="#" class="list-group-item">Contact</a>
        <a href="?disconnect=true" class="list-group-item"><span class="glyphicon glyphicon-log-out"></span> Log out</a>
    </div>
</div>
<div class="col-xs-12 col-md-11 border content-admin{if in_array($page_name, ['customshopadmincreation', 'customshopadminshop'])} vertical-center{/if}">
