<!DOCTYPE html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/vnd.microsoft.icon" href="{if $shop.logo}{$base_dir_ssl}img/custom_shop/logo/{$shop.logo}{else}{$base_dir_ssl}/img/favicon.ico?{rand()}{/if}">
    <link rel="stylesheet" href="{$css_dir}bootstrap.min.css" media="all">
    <link rel="stylesheet" href="{$css_dir}tool-custom-bootstrap.css?{$var_cache}" media="all">
    <link rel="stylesheet" href="{$css_dir}autoload/magnific-popup.css" media="all">
    <link rel="stylesheet" href="{$css_dir}register.css?{$var_cache}" media="all">
    <link rel="stylesheet" href="{$base_dir_ssl}js/jquery/plugins/fancybox/jquery.fancybox.css" media="all">
    <link rel="stylesheet" href="{$base_dir_ssl}js/jquery/plugins/jqzoom/jquery.jqzoom.css" media="all">
    <link rel="stylesheet" href="{$css_dir}product.css?{$var_cache}" media="all">
    <link rel="stylesheet" href="{$css_dir}custom-shop.css?{$var_cache}" media="all">
    <link rel="stylesheet" href="{$css_dir}custom-shop-front.css?{$var_cache}" media="all">
    {if !$is_local}
        {literal} 
            <script type="text/javascript">
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
    {/if}
    <meta property="og:title" content="{if isset($og_title)}{$og_title}{else}{if $shop.title}{$shop.title|escape:'html':'UTF-8'}{else}{$shop.name}{/if} shop – Gift Attitude{/if}" />
    <meta property="og:description" content="{if isset($og_description)}{$og_description}{else}{if $shop.description}{$shop.description|escape:'html':'UTF-8'}{else}Find keychain, bottle opener, coin keychain, menu holder and more with unbeatbale prices on \"{if $shop.title}{$shop.title|escape:'html':'UTF-8'}{else}{$shop.name}{/if}\" shop. Shipping worldwide{/if}{/if}"/>
    <meta property="og:image" content="{if isset($og_image)}{$og_image}{else}{if $shop.logo}{$base_dir_ssl}img/custom_shop/logo/{$shop.logo}{else}{$logo_gift}{/if}{/if}" />
    {if isset($og_image)}
        <meta property="og:image:width" content="200" />
        <meta property="og:image:height" content="200" />
    {else}
        <meta property="og:image:width" content="100" />
        <meta property="og:image:height" content="100" />
    {/if}
    <meta name="description" content="{if isset($og_description)}{$og_description}{else}{if $shop.description}{$shop.description|escape:'html':'UTF-8'}{else}Find keychain, bottle opener, coin keychain, menu holder and more with unbeatbale prices on \"{if $shop.title}{$shop.title|escape:'html':'UTF-8'}{else}{$shop.name}{/if}\" shop. Shipping worldwide{/if}{/if}"/>
    <title>{if isset($og_title)}{$og_title}{else}{if $shop.title}{$shop.title|escape:'html':'UTF-8'}{else}{$shop.name}{/if} shop – Gift Attitude{/if}</title>
</head>
<body {if $smarty.server.HTTP_HOST != 'localhost'} oncontextmenu="return false" {/if}>
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
                <div class="logo visible-xs visible-md">
                    <a href="{$base_uri}shop/{$custom_shop_name}" title="{$shop.name}">
                        <img src="{if $shop.logo}{$base_dir_ssl}img/custom_shop/logo/{$shop.logo}{else}{$logo_default}{/if}" alt="{$shop.title}" title="{$shop.title}" />
                    </a>
                </div>
                <div class="header-label">
                    <span class="shop-title">{if $shop.title}{$shop.title|escape:'html':'UTF-8'}{else}{$shop.name}{/if}</span>
                    <span class="shop-motto">"{if $shop.motto}{$shop.motto|escape:'html':'UTF-8'}{else}Your shop motto{/if}"</span>
                </div>
                <div class="header" style="background-image: url('{if $shop.header}{$base_dir_ssl}img/custom_shop/header/{$shop.header}{else}{$header_default}{/if}')"></div>
                <div class="logo hidden-xs">
                    <a href="{$base_uri}shop/{$custom_shop_name}" title="{$shop.name}">
                        <img src="{if $shop.logo}{$base_dir_ssl}img/custom_shop/logo/{$shop.logo}{else}{$logo_default}{/if}" alt="{$shop.title}" title="{$shop.title}" />
                    </a>
                </div>
            </div>
        </div>
        <nav class="navbar navbar-default border-left-0 border-right-0">
            <div class="container">
                <div class="header-icon">
                        {foreach from=$currencies key=k item=f_currency}
                            {if $cookie->id_currency == $f_currency.id_currency}
                            <div class="visible-xs visible-sm icon-inner icon-inner-mobile icon-currency" data-block="currencies">
                                <div class="currency-btn currency-btn-mobile">
                                    <div class="icon-sign-{$f_currency.sign|count_characters}">
                                        {$f_currency.sign}
                                    </div>
                                </div>
                            </div>
                            <div class="hidden-xs hidden-sm icon-inner icon-inner-desk icon-currency" data-block="currencies">
                                <div class="currency-btn currency-btn-desk">
                                    <div class="icon-sign-{$f_currency.sign|count_characters}">
                                        {$f_currency.sign}
                                    </div>
                                </div>
                            </div>
                            {/if}
                        {/foreach}
                </div>
                <div class="list-currency hidden block-currencies">
                    <div class="font-size-20 text-center bold">
                        Choose your currencies
                    </div>
                    <hr>
                    <div class="options text-center">
                        {foreach from=$currencies key=k item=f_currency}
                            {if strpos($f_currency.name, '('|cat:$f_currency.iso_code:')') === false}
                                {assign var="currency_name" value={l s='%s (%s)' sprintf=[$f_currency.name, $f_currency.sign]}}
                            {else}
                                {assign var="currency_name" value=$f_currency.name}
                            {/if}
                            <div class="option {if $cookie->id_currency == $f_currency.id_currency}selected{/if}">
                                <a href="javascript:setCurrency({$f_currency.id_currency});" rel="nofollow" title="{$currency_name}">
                                    {$currency_name}
                                </a>
                            </div>
                            <hr>
                        {/foreach}
                    </div>
                </div>
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <div class="cart-icon-mobile {if isset($checkout)}active{/if} padding-10 pull-right margin-right-20 visible-xs visible-sm">
                        <span class="ajax_cart_quantity margin-right-20 visible-xs">{$cart_qties}</span>
                        <span class="ajax_cart_quantity margin-right-40 visible-sm">{$cart_qties}</span>
                        <span class="glyphicon glyphicon-shopping-cart font-size-24 pull-right"></span>
                    </div>
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="pull-right margin-right-10">
                            <div class="cart-icon-desk {if isset($checkout)}active{/if} padding-10 hidden-xs hidden-sm">
                                <a href="{$base_dir_ssl}shop/{$custom_shop_name}/checkout" rel="no-follow">
                                    <span class="ajax_cart_quantity">{$cart_qties}</span>
                                    <span class="glyphicon glyphicon-shopping-cart font-size-24"></span>
                                </a>
                                <div class="cart cart-desk">
                                    {include file="./custom-shop-front-cart-products.tpl" products=$cart_products}
                                </div>
                            </div>
                        </li>
                        {if $is_logged}
                            <li class="pull-right margin-right-10">
                                <a class="pull-right btn btn-default btn-sm padding-top-5 padding-bottom-5 margin-top-10" href="{$base_uri}shop/{$custom_shop_name}?mylogout" title="Sign out" rel="nofollow">
                                    <span class="glyphicon glyphicon-log-out"></span>
                                    Log out
                                </a>
                            </li>
                        {/if}
                    </ul>
                    <ul class="nav navbar-nav navbar-left">
                        <li class="{if !$cat && !isset($checkout)}active{/if}"><a href="{$base_uri}shop/{$custom_shop_name}" title="{$shop.name}"><span class="glyphicon glyphicon-home"></span></a></li>
                            {if $categories}
                                {foreach from=$categories item='category'}
                                <li class="{if $cat == $category.link_rewrite}active{/if}">
                                    <a href="{$base_uri}shop/{$custom_shop_name}?category={$category.link_rewrite}" title="{$category.name}">
                                        {$category.name}
                                    </a>
                                </li>
                            {/foreach}
                        {/if}
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
    {/if}
    <div class="container">
        <div class="margin-top-50 visible-sm visible-md visible-lg"></div>
        <div class="col-xs-12 padding-0">
            {if $shop.deactivated}
                <div class="alert alert-info font-size-20 text-center top-50-percent">
                    <div>This shop is currently not available</div>
                    <div><a class="btn btn-primary margin-top-10" href="{$base_dir_ssl}">Visit main website</a></div>
                </div>
            {/if}