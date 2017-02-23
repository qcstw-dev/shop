<!DOCTYPE html>
<head>
    <meta name="robots" content="noindex, nofollow">
    <meta name="viewport" content="width=device-width, minimum-scale=0.25, maximum-scale=1.0, initial-scale=1.0" /> 
    <link rel="icon" type="image/vnd.microsoft.icon" href="{$base_dir_ssl}/img/favicon.ico?{rand()}">
    {if isset($layout_maker) && $layout_maker}
        <link rel="stylesheet" href="{$base_dir_ssl}js/jquery/plugins/fancybox/jquery.fancybox.css" media="all">
        <link rel="stylesheet" href="{$base_dir_ssl}js/jquery/plugins/jqzoom/jquery.jqzoom.css" media="all">
        <link rel="stylesheet" href="{$css_dir}product.css" media="all">
        <link rel="stylesheet" href="{$css_dir}slick/slick.css" media="all">
        <link rel="stylesheet" href="{$css_dir}slick/slick-theme.css" media="all">
        <link rel="stylesheet" href="{$css_dir}layout_maker/component.css" media="all">
        <link rel="stylesheet" href="{$css_dir}layout_maker/custom.css" media="all">
        <link rel="stylesheet" href="{$css_dir}layout_maker/custom_shop_layout_maker.css" media="all">
    {/if}
    <link rel="stylesheet" href="{$css_dir}bootstrap.min.css" media="all">
    <link rel="stylesheet" href="{$css_dir}tool-custom-bootstrap.css" media="all">
    <link rel="stylesheet" href="{$css_dir}autoload/magnific-popup.css" media="all">
    <link rel="stylesheet" href="{$css_dir}register.css" media="all">
    <link rel="stylesheet" href="{$css_dir}custom-shop.css" media="all">
    <link rel="stylesheet" href="{$css_dir}custom-shop-admin.css" media="all">
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
        <span class="glyphicon glyphicon-ok font-size-40 color-green"></span> <span class="text">Saved</span>
    </div>
    <img class="hidden" src="{$base_uri}img/loader.gif" />
    <div class="container">
        {if $display_top_logo}
            <div class="col-xs-12 logo-top-container">
                <img src="{$logo_gift}" title="{$shop_title}" alt="{$shop_title}" />
                <div class="slogan">
                    <span class="primary-color">"</span>{l s='Personalized gifts'}<br /> {l s='for unique memories'}<span class="primary-color">"</span>
                </div>
            </div>
        {/if}
        <div class="col-xs-12 padding-top-10">
