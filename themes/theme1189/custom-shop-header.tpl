<!DOCTYPE html>
<head>
    <meta name="robots" content="noindex, nofollow">
    <meta name="viewport" content="width=device-width, minimum-scale=0.25, maximum-scale=1.0, initial-scale=1.0" /> 
    <link rel="icon" type="image/vnd.microsoft.icon" href="{$base_dir_ssl}/img/favicon.ico?{rand()}">
    <link rel="stylesheet" href="{$css_dir}bootstrap.min.css" media="all">
    <link rel="stylesheet" href="{$css_dir}tool-custom-bootstrap.css" media="all">
    <link rel="stylesheet" href="{$css_dir}autoload/magnific-popup.css" media="all">
    <link rel="stylesheet" href="{$css_dir}register.css" media="all">
    {if isset($layout_maker) && $layout_maker}
        <link rel="stylesheet" href="{$css_dir}layout_maker/component.css" media="all">
        <link rel="stylesheet" href="{$css_dir}layout_maker/custom.css" media="all">
    {/if}
    {if isset($register)}
        <script src='https://www.google.com/recaptcha/api.js'></script>
    {/if}
    {literal} 
        <script>
          (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
          (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
          m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
          })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

          ga('create', 'UA-85358221-1', 'auto');
          ga('send', 'pageview');

        </script>
    {/literal}
    <script type="text/javascript" src="{$base_dir_ssl}js/jquery/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="{$base_dir_ssl}js/jquery/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="{$js_dir}autoload/10-bootstrap.min.js"></script>
    <script type="text/javascript" src="{$js_dir}autoload/jquery.magnific-popup.min.js"></script>
{*    <meta property="og:image" content="{$logo_url}" />*}
    <title>{$meta_title}</title>
</head>
<body>
    <div class="container">
        
    