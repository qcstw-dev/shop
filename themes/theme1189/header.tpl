<!DOCTYPE HTML>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="{$language_code|escape:'html':'UTF-8'}"><![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8 ie7" lang="{$language_code|escape:'html':'UTF-8'}"><![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9 ie8" lang="{$language_code|escape:'html':'UTF-8'}"><![endif]-->
<!--[if gt IE 8]> <html class="no-js ie9" lang="{$language_code|escape:'html':'UTF-8'}"><![endif]-->
<html lang="{$language_code|escape:'html':'UTF-8'}">
    <head>
        <meta charset="utf-8" />
        <title>{$meta_title|escape:'html':'UTF-8'}</title>
        {if isset($meta_description) AND $meta_description}
            <meta name="description" content="{$meta_description|escape:'html':'UTF-8'}" />
        {/if}
        {if isset($meta_keywords) AND $meta_keywords}
            <meta name="keywords" content="{$meta_keywords|escape:'html':'UTF-8'}" />
        {/if}
        <meta name="generator" content="PrestaShop" />
        <meta name="robots" content="{if isset($nobots)}no{/if}index,{if isset($nofollow) && $nofollow}no{/if}follow" />
        <meta name="viewport" content="width=device-width, minimum-scale=0.25, maximum-scale=1.0, initial-scale=1.0" /> 
        {*        <meta name="viewport" content="width=1024">*}
        <meta name="apple-mobile-web-app-capable" content="yes" /> 
        <link rel="icon" type="image/vnd.microsoft.icon" href="{$favicon_url}?{$img_update_time}" />
        <link rel="shortcut icon" type="image/x-icon" href="{$favicon_url}?{$img_update_time}" />
        {if isset($css_files)}
            {foreach from=$css_files key=css_uri item=media}
                <link rel="stylesheet" href="{$css_uri}?{$var_cache}" media="{$media}" />
            {/foreach}
        {/if}
        {if isset($js_defer) && !$js_defer && isset($js_files) && isset($js_def)}
            {$js_def}
            {foreach from=$js_files item=js_uri}
                <script type="text/javascript" src="{$js_uri|escape:'html':'UTF-8'}?{$var_cache}"></script>
            {/foreach}
        {/if}
        {$HOOK_HEADER}
        <link rel="stylesheet" href="http{if Tools::usingSecureMode()}s{/if}://fonts.googleapis.com/css?family=Open+Sans:300,600&amp;subset=latin,latin-ext,cyrillic-ext" type="text/css" media="all" />
        <link rel="stylesheet" href='http{if Tools::usingSecureMode()}s{/if}://fonts.googleapis.com/css?family=Ubuntu:300,400,500,700' rel='stylesheet' type='text/css'>
        <!--[if IE 8]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
        <meta property="og:image" content="{$logo_url}" />
        <script type="text/javascript"> //<![CDATA[ 
            var tlJsHost = ((window.location.protocol == "https:") ? "https://secure.comodo.com/" : "http://www.trustlogo.com/");
            document.write(unescape("%3Cscript src='" + tlJsHost + "trustlogo/javascript/trustlogo.js' type='text/javascript'%3E%3C/script%3E"));
            //]]>
        </script>
        <script src='https://www.google.com/recaptcha/api.js'></script>
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
        <meta name="p:domain_verify" content="5022cb310cd51f7b5a1e7644c4624213"/>
    </head>
    {if (($hide_left_column || $hide_right_column) && ($hide_left_column !='true' || $hide_right_column !='true')) && !$content_only}
        {assign var="columns" value="2"}
    {elseif (($hide_left_column && $hide_right_column) && ($hide_left_column =='true' && $hide_right_column =='true')) && !$content_only}
        {assign var="columns" value="1"}
    {elseif $content_only}
        {assign var="columns" value="1"}
    {else}
        {assign var="columns" value="3"}
    {/if}
    <body{if isset($page_name)} id="{$page_name|escape:'html':'UTF-8'}"{/if} class="{if isset($page_name)}{$page_name|escape:'html':'UTF-8'}{/if}{if isset($body_classes) && $body_classes|@count} {implode value=$body_classes separator=' '}{/if}{if $hide_left_column} hide-left-column{/if}{if $hide_right_column} hide-right-column{/if}{if isset($content_only) && $content_only} content_only{/if} lang_{$lang_iso} {if !$content_only}{if $columns == 2} two-columns{elseif $columns == 3} three-columns{else} one-column{/if}{/if}"
                                {if $smarty.server.HTTP_HOST != 'localhost'} oncontextmenu="return false" {/if}>
        <!-- Google Code for Adwords added tag - Gift attitude Conversion Page -->
        <script type="text/javascript">
            /* <![CDATA[ */
            var google_conversion_id = 1062791147;
            var google_conversion_language = "en";
            var google_conversion_format = "3";
            var google_conversion_color = "ffffff";
            var google_conversion_label = "DbqgCLzXum0Q68_j-gM";
            var google_conversion_value = 10.00;
            var google_conversion_currency = "USD";
            var google_remarketing_only = false;
            /* ]]> */
        </script>
        <script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
        </script>
        <noscript>
        <div style="display:inline;">
            <img height="1" width="1" style="border-style:none;" alt="" src="//www.googleadservices.com/pagead/conversion/1062791147/?value=10.00&amp;currency_code=USD&amp;label=DbqgCLzXum0Q68_j-gM&amp;guid=ON&amp;script=0"/>
        </div>
        </noscript>


        {if !isset($content_only) || !$content_only}
            <!--[if IE 8]>
            <div style='clear:both;height:59px;padding:0 15px 0 15px;position:relative;z-index:10000;text-align:center;'><a href="//www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." /></a></div>
                    <![endif]-->
            {if isset($restricted_country_mode) && $restricted_country_mode}
                <div id="restricted-country">
                    <p>{l s='You cannot place a new order from your country.'}{if isset($geolocation_country) && $geolocation_country} <span class="bold">{$geolocation_country|escape:'html':'UTF-8'}</span>{/if}</p>
                </div>
            {/if}
            <div id="page">
                {if !isset($mobile) || !$mobile}
                    <div class="header-container">
                        <header id="header">
                            <div class="banner">
                                <div class="container">
                                    <div class="row">
                                        {hook h="displayBanner"}
                                    </div>
                                </div>
                            </div>
                            <div class="nav">
                                <div class="container">
                                    <div class="row">
                                        <nav>{hook h="displayNav"}</nav>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <div class="container background">
                                    <div class="row">
                                        <div id="header_logo">
                                            <a href="{if $force_ssl}{$base_dir_ssl}{else}{$base_dir}{/if}" title="{$shop_name|escape:'html':'UTF-8'}">
                                                <img class="logo img-responsive" src="{$logo_url}" alt="{$shop_name|escape:'html':'UTF-8'}"{if isset($logo_image_width) && $logo_image_width} width="{$logo_image_width}"{/if}{if isset($logo_image_height) && $logo_image_height} height="{$logo_image_height}"{/if}/>
                                            </a>
                                        </div>
                                        <div class="slogan">
                                            <span class="primary-color">"</span>{l s='Personalized gifts'}<br /> {l s='for unique memories'}<span class="primary-color">"</span>
                                        </div>
                                    {if isset($HOOK_TOP)}{$HOOK_TOP}{/if}
                                </div>
                            </div>
                        </div>
                    </header>
                </div>
                <div class="columns-container">
                    <div id="columns" class="container padding-bottom-0">
                        {if $page_name == 'category'
                        || $page_name =='design'
                        || $page_name =='layoutmaker'
                        }
                        {include file="./selection.tpl" selection=$selection}
                    {/if}
                    {if $page_name !='index' 
                    && $page_name !='pagenotfound'
                    && $page_name !='layoutmaker' 
                    && $page_name !='design'
                    && $page_name !='category'
                    && $page_name !='shop'
                    && $page_name !='customshopintroduction'
                    }
                    {include file="$tpl_dir./breadcrumb.tpl"}
                {/if}
            </div>
            <div id="slider_row" class="container">
                <div id="top_column" class="center_column col-xs-12">{hook h="displayTopColumn"}</div>
                <div class="clearfix"></div>
            </div>
            <div id="columns" class="container">
                <div class="row">
                    <div class="large-left
                         {if $page_name =='layoutmaker' 
                            || $page_name =='design'
                            || $page_name =='category'}
                         bordered-page
                         {/if}
                             col-sm-{12 - $right_column_size}">
                             <div class="row">
                                 <div id="center_column" class="center_column col-xs-12 col-sm-{12 - $left_column_size}">
                                     {/if}
                                         {/if}
