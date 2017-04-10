<div class="col-xs-12 col-md-1 padding-0">
    <div class="list-group admin-menu">
        <a href="{$base_uri}{$custom_shop_name}/admin/creation" class="list-group-item{if in_array($page_name, [
        'customshopadmincreation',
        'customshopadmincreationpicture',
        'customshopadmincreationlayoutmaker',
        'customshopadmincreationsummary'
       ])} active{/if}"><span class="glyphicon glyphicon-pencil font-size-20 margin-bottom-10"></span> Creation<br />zone</a>
        <a href="{$base_uri}{$custom_shop_name}/admin/shop" class="list-group-item{if in_array($page_name, [
        'customshopadminshop',
        'customshopadminshopedit'
       ])} active{/if}"><span class="glyphicon glyphicon-globe font-size-20 margin-bottom-10"></span> My shop</a>
        <a href="{$base_uri}{$custom_shop_name}/admin/dashboard" class="list-group-item{if in_array($page_name, [
        'customshopadmindashboard'
       ])} active{/if}"><span class="glyphicon glyphicon-list-alt font-size-20 margin-bottom-10"></span> Dashboard</a>
        <a href="{$base_uri}{$custom_shop_name}/admin/user-account" class="list-group-item{if in_array($page_name, [
        'customshopadminuseraccount'
       ])} active{/if}"><span class="glyphicon glyphicon-user font-size-20 margin-bottom-10"></span> User<br />account</a>
        <a href="{$base_uri}{$custom_shop_name}/admin/contact" class="list-group-item{if in_array($page_name, [
        'customshopadmincontact'
       ])} active{/if}"><span class="glyphicon glyphicon-envelope font-size-20 margin-bottom-10"></span> Contact</a>
        <a href="{$base_uri}{$custom_shop_name}/admin/questions-and-answers" class="admin-menu-small-item list-group-item{if in_array($page_name, [
        'customshopadminquestionsandanswers'
       ])} active{/if}"><span class="glyphicon glyphicon-question-sign font-size-15"></span> Q&A</a>
        <a href="?disconnect" class="list-group-item admin-menu-small-item"><span class="glyphicon glyphicon-log-out font-size-15"></span> Log out</a>
    </div>
</div>
<div class="col-xs-12 col-md-11 border content-admin{if in_array($page_name, ['customshopadmincreation', 'customshopadminshop'])} vertical-center{/if}">
