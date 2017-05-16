{if $is_super_admin && $page_name != 'customshopsuperadmin'}
    <div class="pull-right"><label class="cursor-pointer" for="deactivate"><input id="deactivate" class="checkbox-deactivate" data-id-shop="{$shop.id}" type="checkbox" {if $shop.deactivated}checked{/if}> Deactivate the shop</label></div>
    <div class="clearfix"></div>
{/if}
<div class="alert alert-danger text-center margin-bottom-10 pull-right {if !$shop.deactivated}hidden{/if}">Your shop is currently deactivated</div>
<a href="{$base_uri}shop/{$custom_shop_name}" target="_blank" class="btn btn-warning pull-left"><span class="glyphicon glyphicon-globe"></span> Visit your shop</a>
<div class="open-video pull-right color-primary bold cursor-pointer margin-top-10 margin-bottom-10 margin-left-20"><span class="glyphicon glyphicon-question-sign"></span> Need help ?</div>
<div class="clearfix"></div>
<div class="col-xs-12 col-md-1 padding-0 hidden-xs hidden-sm">
    <div class="list-group admin-menu">
        <a href="{$base_uri}{$custom_shop_name}/admin/creation" class="list-group-item{if in_array($page_name, [
        'customshopadmincreation',
        'customshopadmincreationpicture',
        'customshopadmincreationlayoutmaker',
        'customshopadmincreationsummary'
       ])} active{/if}"><span class="glyphicon glyphicon-pencil font-size-20 margin-bottom-10"></span> Creation <span class="visible-lg"></span>zone</a>
        <a href="{$base_uri}{$custom_shop_name}/admin/shop" class="list-group-item{if in_array($page_name, [
        'customshopadminshop',
        'customshopadminshopedit'
       ])} active{/if}"><span class="glyphicon glyphicon-globe font-size-20 margin-bottom-10"></span> My shop</a>
        <a href="{$base_uri}{$custom_shop_name}/admin/dashboard" class="list-group-item{if in_array($page_name, [
        'customshopadmindashboard'
       ])} active{/if}"><span class="glyphicon glyphicon-list-alt font-size-20 margin-bottom-10"></span> Dashboard</a>
        <a href="{$base_uri}{$custom_shop_name}/admin/user-account" class="list-group-item{if in_array($page_name, [
        'customshopadminuseraccount'
       ])} active{/if}"><span class="glyphicon glyphicon-user font-size-20 margin-bottom-10"></span> User <span class="visible-lg"></span>account</a>
        <a href="{$base_uri}{$custom_shop_name}/admin/contact" class="list-group-item{if in_array($page_name, [
        'customshopadmincontact'
       ])} active{/if}"><span class="glyphicon glyphicon-envelope font-size-20 margin-bottom-10"></span> Contact</a>
        <a href="{$base_uri}{$custom_shop_name}/admin/questions-and-answers" class="admin-menu-small-item list-group-item{if in_array($page_name, [
        'customshopadminquestionsandanswers'
       ])} active{/if}"><span class="glyphicon glyphicon-question-sign font-size-15"></span> Q&A</a>
        <a href="?disconnect" class="list-group-item admin-menu-small-item"><span class="glyphicon glyphicon-log-out font-size-15"></span> Log out</a>
    </div>
</div>
<nav class="navbar navbar-default visible-xs visible-sm">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="{$base_uri}{$custom_shop_name}/admin">Shop Admin</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse border-none" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav margin-top-0 margin-bottom-0">
        <a href="{$base_uri}{$custom_shop_name}/admin/creation" class="border-radius-0 list-group-item{if in_array($page_name, [
        'customshopadmincreation',
        'customshopadmincreationpicture',
        'customshopadmincreationlayoutmaker',
        'customshopadmincreationsummary'
       ])} active{/if}"><span class="glyphicon glyphicon-pencil font-size-20 margin-bottom-10"></span> Creation <span class="visible-lg"></span>zone</a>
        <a href="{$base_uri}{$custom_shop_name}/admin/shop" class="list-group-item{if in_array($page_name, [
        'customshopadminshop',
        'customshopadminshopedit'
       ])} active{/if}"><span class="glyphicon glyphicon-globe font-size-20 margin-bottom-10"></span> My shop</a>
        <a href="{$base_uri}{$custom_shop_name}/admin/dashboard" class="list-group-item{if in_array($page_name, [
        'customshopadmindashboard'
       ])} active{/if}"><span class="glyphicon glyphicon-list-alt font-size-20 margin-bottom-10"></span> Dashboard</a>
        <a href="{$base_uri}{$custom_shop_name}/admin/user-account" class="list-group-item{if in_array($page_name, [
        'customshopadminuseraccount'
       ])} active{/if}"><span class="glyphicon glyphicon-user font-size-20 margin-bottom-10"></span> User <span class="visible-lg"></span>account</a>
        <a href="{$base_uri}{$custom_shop_name}/admin/contact" class="list-group-item{if in_array($page_name, [
        'customshopadmincontact'
       ])} active{/if}"><span class="glyphicon glyphicon-envelope font-size-20 margin-bottom-10"></span> Contact</a>
        <a href="{$base_uri}{$custom_shop_name}/admin/questions-and-answers" class="admin-menu-small-item list-group-item{if in_array($page_name, [
        'customshopadminquestionsandanswers'
       ])} active{/if}"><span class="glyphicon glyphicon-question-sign font-size-15"></span> Q&A</a>
        <a href="?disconnect" class="list-group-item admin-menu-small-item border-radius-0"><span class="glyphicon glyphicon-log-out font-size-15"></span> Log out</a>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<div class="col-xs-12 col-md-11 border content-admin{if in_array($page_name, ['customshopadmincreation', 'customshopadminshop'])} vertical-center{/if}">
