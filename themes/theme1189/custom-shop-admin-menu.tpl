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
       ])} active{/if}">Your shop</a>
        <a href="{$base_uri}{$custom_shop_name}/admin/dashboard" class="list-group-item{if in_array($page_name, [
        'customshopadmindashboard'
       ])} active{/if}">Dashboard</a>
        <a href="{$base_uri}{$custom_shop_name}/admin/user-account" class="list-group-item{if in_array($page_name, [
        'customshopadminuseraccount'
       ])} active{/if}">User account</a>
        <a href="{$base_uri}{$custom_shop_name}/admin/contact" class="list-group-item{if in_array($page_name, [
        'customshopadmincontact'
       ])} active{/if}">Contact</a>
        <a href="?disconnect" class="list-group-item"><span class="glyphicon glyphicon-log-out"></span> Log out</a>
    </div>
</div>
<div class="col-xs-12 col-md-11 border content-admin{if in_array($page_name, ['customshopadmincreation', 'customshopadminshop'])} vertical-center{/if}">
