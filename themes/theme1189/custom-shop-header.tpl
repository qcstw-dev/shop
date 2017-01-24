<!DOCTYPE html>
<head>
    <meta name="robots" content="noindex, nofollow">
    <meta name="viewport" content="width=device-width, minimum-scale=0.25, maximum-scale=1.0, initial-scale=1.0" /> 
    <link rel="icon" type="image/vnd.microsoft.icon" href="{$base_dir_ssl}/img/favicon.ico?{rand()}">
    <link rel="stylesheet" href="{$css_dir}bootstrap.min.css" media="all">
    <link rel="stylesheet" href="{$css_dir}tool-custom-bootstrap.css" media="all">
    <link rel="stylesheet" href="{$css_dir}autoload/magnific-popup.css" media="all">
    <link rel="stylesheet" href="{$css_dir}register.css" media="all">
    <link rel="stylesheet" href="{$css_dir}custom-shop-admin.css" media="all">
    {if isset($layout_maker) && $layout_maker}
        <link rel="stylesheet" href="{$css_dir}layout_maker/component.css" media="all">
        <link rel="stylesheet" href="{$css_dir}layout_maker/custom.css" media="all">
    {/if}
    {if isset($register)}
        <script src='https://www.google.com/recaptcha/api.js'></script>
    {/if}
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
    <meta property="og:image" content="{$logo_gift}" />
    <title>{$meta_title}</title>
</head>
<body>
    <img class="hidden" src="{$base_uri}img/loader.gif" />
    <div class="container">
        {if $display_top_logo}
            <div class="col-xs-12 logo-top-container">
                <img src="{$logo_gift}" title="{$shop_title}" alt="{$shop_title}" />
            </div>
        {/if}
        <div class="col-xs-12 padding-top-10">