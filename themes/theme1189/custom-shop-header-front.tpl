<!DOCTYPE html>
<head>
    <meta name="robots" content="noindex, nofollow">
    <meta name="viewport" content="width=device-width, minimum-scale=0.25, maximum-scale=1.0, initial-scale=1.0" /> 
    <link rel="icon" type="image/vnd.microsoft.icon" href="{$base_dir_ssl}/img/favicon.ico?{rand()}">
    <link rel="stylesheet" href="{$css_dir}bootstrap.min.css" media="all">
    <link rel="stylesheet" href="{$css_dir}tool-custom-bootstrap.css" media="all">
    <link rel="stylesheet" href="{$css_dir}autoload/magnific-popup.css" media="all">
    <link rel="stylesheet" href="{$css_dir}register.css" media="all">
    <link rel="stylesheet" href="{$base_dir_ssl}js/jquery/plugins/fancybox/jquery.fancybox.css" media="all">
    <link rel="stylesheet" href="{$base_dir_ssl}js/jquery/plugins/jqzoom/jquery.jqzoom.css" media="all">
    <link rel="stylesheet" href="{$css_dir}product.css" media="all">
    <link rel="stylesheet" href="{$css_dir}custom-shop.css" media="all">
    <link rel="stylesheet" href="{$css_dir}custom-shop-front.css" media="all">
    <script src='https://www.google.com/recaptcha/api.js'></script>
    {literal} 
        <script>
            (function (i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r;
                i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date();
                a = s.createElement(o),
                        m = s.getElementsByTagName(o)[0];
                a.async = 1;
                a.src = g;
                m.parentNode.insertBefore(a, m)
            })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

            ga('create', 'UA-85358221-1', 'auto');
            ga('send', 'pageview');
        </script>
    {/literal}
    <meta property="og:image" content="{if $shop.logo}{$base_dir}img/custom_shop/logo/{$shop.logo}{else}{$logo_gift}{/if}" />
    <title>{$meta_title}</title>
</head>
<body>
    <div class="shop hidden" data-id-shop="{$id_shop}" data-name-shop="{$name_shop}" data-side="front"></div>
    <div class="panel panel-default col-md-2 vertical-center shadow loading-ajax" style="display: none;">
        <div class="thumbnail border-none margin-0">
            <img src="{$base_uri}/img/loader.gif" title="Loading" alt="Loading"/> 
        </div>
        <span class="text">Loading...</span></div>
    <div class="panel panel-success col-md-2 vertical-center shadow confirm" style="display: none;">
        <span class="glyphicon glyphicon-ok font-size-40 color-green"></span> <span class="text">Added !</span>
    </div>
    <img class="hidden" src="{$base_uri}img/loader.gif" />
    {if !$shop.deactivated}
        <div class="container">
            <div class="col-xs-12">
                <div class="header" style="background-image: url('{if $shop.header}{$base_dir}img/custom_shop/header/{$shop.header}{else}{$header_default}{/if}')"></div>
                <div class="logo">
                    <a href="{$base_uri}shop/{$custom_shop_name}" title="{$shop.name}">
                        <img src="{if $shop.logo}{$base_dir}img/custom_shop/logo/{$shop.logo}{else}{$logo_default}{/if}" alt="{$shop.title}" title="{$shop.title}" />
                    </a>
                </div>
                <div class="header-label">
                    <span class="shop-title">{if $shop.title}{$shop.title|truncate:15:'...'|escape:'html':'UTF-8'}{else}{$shop.name}{/if}</span>
                    <span class="shop-motto">"{if $shop.motto}{$shop.motto|truncate:113:'...'|escape:'html':'UTF-8'}{else}Your shop motto{/if}"</span>
                </div>
            </div>
        </div>
        <nav class="navbar navbar-default border-left-0 border-right-0">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <div class="cart-icon-mobile padding-10 pull-right visible-xs">
                        <span class="ajax_cart_quantity">{$cart_qties}</span>
                        <span class="glyphicon glyphicon-shopping-cart font-size-24 pull-right"></span>
                    </div>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="{if !$cat}active{/if}"><a href="{$base_uri}shop/{$custom_shop_name}" title="{$shop.name}">Home</a></li>
                        {foreach from=$categories item='category'}
                            <li class="{if $cat == $category.link_rewrite}active{/if}"><a href="{$base_uri}shop/{$custom_shop_name}/{$category.link_rewrite}" title="{$category.name}">{$category.name}</a></li>
                        {/foreach}
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="margin-right-20">
                            <div class="cart-icon-desk padding-10 hidden-xs">
                                <a href="{$base_dir}shop/{$custom_shop_name}/checkout">
                                    <span class="ajax_cart_quantity">{$cart_qties}</span>
                                    <span class="glyphicon glyphicon-shopping-cart font-size-24"></span>
                                    <div class="cart cart-desk">
                                        {include file="./custom-shop-front-cart-products.tpl" products=$cart_products}
                                    </div>
                                </a>
                            </div>
                        </li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
    {/if}
    <div class="container">
        <div class="margin-top-50 visible-sm visible-md visible-lg"></div>
        <div class="col-xs-12 padding-0">