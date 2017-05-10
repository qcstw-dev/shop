<!DOCTYPE html>
<head>
    <meta name="robots" content="noindex, nofollow">
    <meta name="viewport" content="width=device-width, minimum-scale=0.25, maximum-scale=1.0, initial-scale=1.0" /> 
    <link rel="icon" type="image/vnd.microsoft.icon" href="{$base_dir_ssl}/img/favicon.ico?{$var_cache}">
    <link rel="stylesheet" href="{$css_dir}bootstrap.min.css" media="all">
    <link rel="stylesheet" href="{$css_dir}tool-custom-bootstrap.css?{$var_cache}" media="all">
    {if isset($layout_maker) && $layout_maker}
        <link rel="stylesheet" href="{$base_dir_ssl}js/jquery/plugins/fancybox/jquery.fancybox.css" media="all">
        <link rel="stylesheet" href="{$base_dir_ssl}js/jquery/plugins/jqzoom/jquery.jqzoom.css" media="all">
        <link rel="stylesheet" href="{$css_dir}product.css?{$var_cache}" media="all">
        <link rel="stylesheet" href="{$css_dir}slick/slick.css" media="all">
        <link rel="stylesheet" href="{$css_dir}slick/slick-theme.css" media="all">
        <link rel="stylesheet" href="{$css_dir}layout_maker/component.css?{$var_cache}" media="all">
        <link rel="stylesheet" href="{$css_dir}layout_maker/custom.css?{$var_cache}" media="all">
        <link rel="stylesheet" href="{$css_dir}layout_maker/custom_giftattitude_layout_maker.css?{$var_cache}" media="all">
        <link rel="stylesheet" href="{$css_dir}layout_maker/custom_shop_layout_maker.css?{$var_cache}" media="all">
    {/if}
    <link rel="stylesheet" href="{$css_dir}autoload/magnific-popup.css?{$var_cache}" media="all">
    <link rel="stylesheet" href="{$css_dir}register.css?{$var_cache}" media="all">
    <link rel="stylesheet" href="{$css_dir}custom-shop.css?{$var_cache}" media="all">
    <link rel="stylesheet" href="{$css_dir}custom-shop-admin.css?{$var_cache}" media="all">
    {if $page_name == 'customshopsuperadmin' && $smarty.server.HTTP_HOST != 'localhost'}
        <script src='https://www.google.com/recaptcha/api.js'></script>
    {/if}
    {if in_array($page_name, ['customshopadmincreationsummary'])}
        <link rel="stylesheet" href="{$css_dir}jquery-ui.min.css" media="all">
        <link rel="stylesheet" href="{$css_dir}jquery-ui.structure.min.css" media="all">
        <link rel="stylesheet" href="{$css_dir}jquery-ui.theme.min.css" media="all">
    {/if}
    {if isset($register)}
        <script src='https://www.google.com/recaptcha/api.js'></script>
    {/if}
    <meta property="og:image" content="{$logo_gift}" />
    <title>{$meta_title}</title>
</head>
<body>
    <div class="shop hidden" data-id-shop="{$id_shop}" data-name-shop="{$name_shop}" data-side="admin"></div>
    <div class="panel panel-default col-md-2 vertical-center shadow loading-ajax" style="display: none;">
        <div class="thumbnail border-none margin-0">
            <img src="{$base_uri}/img/loader.gif" title="Loading" alt="Loading"/> 
        </div>
        <span class="text">Saving</span></div>
    <div class="panel panel-success col-md-2 vertical-center shadow confirm" style="display: none;">
        <span class="glyphicon glyphicon-ok font-size-30 color-green"></span> <span class="text">Saved</span>
    </div>
    <img class="hidden" src="{$base_uri}img/loader.gif" />
    <div class="container">
        {if $display_top_logo && $page_name != 'customshopsuperadmin'}
            <div class="col-xs-12 logo-top-container">
                <img src="{$logo_gift}" title="{$shop_title}" alt="{$shop_title}" />
                <div class="slogan">
                    <span class="primary-color">"</span>{l s='Personalized gifts'}<br /> {l s='for unique memories'}<span class="primary-color">"</span>
                </div>
            </div>
        {/if}
        {if $is_super_admin && $page_name == 'customshopsuperadmin'}
            <div class="col-xs-12 margin-top-10">
                <form method="post"><input type="hidden" name="disconnect"><button class="btn btn-danger pull-right" type="submit"><span class="glyphicon glyphicon-log-out"></span> Log out</button></form>
            </div>
        {/if}
    </div>
    <div class="{if $page_name != 'customshopsuperadmin'}container{/if}">
        {if $is_super_admin && $page_name != 'customshopsuperadmin'}
            <div class="pull-right"><label class="cursor-pointer" for="deactivate"><input id="deactivate" class="checkbox-deactivate" data-id-shop="{$shop.id}" type="checkbox" {if $shop.deactivated}checked{/if}> Deactivated the shop</label></div>
            <div class="clearfix"></div>
        {/if}
        <div class="alert alert-danger text-center margin-bottom-10 {if !$shop.deactivated}hidden{/if}">Your shop is currently deactivated</div>
        <div class="col-xs-12 padding-0 padding-top-10">
