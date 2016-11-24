<head>
    <meta name="viewport" content="width=device-width, minimum-scale=0.25, maximum-scale=1.0, initial-scale=1.0" /> 
    <link rel="icon" type="image/vnd.microsoft.icon" href="/shop/img/favicon.ico?{rand()}">
    <script type="text/javascript" src="{$base_dir}js/jquery/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="{$js_dir}autoload/10-bootstrap.min.js"></script>
    <link rel="stylesheet" href="{$css_dir}bootstrap.min.css" media="all">
    <link rel="stylesheet" href="{$css_dir}tool-custom-bootstrap.css" media="all">
    <link rel="stylesheet" href="{$css_dir}mobile-style.css" media="all">
    <meta property="og:image" content="{$logo_url}" />
</head>
<div id="mobile" class="container">
    <div id="mobile-header">
        <div class="row">
            <div class="col-xs-4 thumbnail border-none">
                <img src="{$logo_url}" alt="{$shop_name|escape:'html':'UTF-8'}" title="{$shop_name|escape:'html':'UTF-8'}"/>
            </div>
            <div class="col-xs-8 col-sm-4 pull-right padding-0 header-icons">
                <!-- Single button -->
                <div class="btn-group col-xs-3 header-icon">
                    <div class="icon-inner icon-currency dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        {foreach from=$currencies key=k item=f_currency}
                            {if $cookie->id_currency == $f_currency.id_currency}
                                <div class="icon-sign-{$f_currency.sign|count_characters}">
                                    {$f_currency.sign}
                                </div>
                            {/if}
                        {/foreach}
                    </div>
                    <ul class="dropdown-menu">
                        {foreach from=$currencies key=k item=f_currency}
                            {if strpos($f_currency.name, '('|cat:$f_currency.iso_code:')') === false}
                                {assign var="currency_name" value={l s='%s (%s)' sprintf=[$f_currency.name, $f_currency.sign]}}
                            {else}
                                {assign var="currency_name" value=$f_currency.name}
                            {/if}
                            <li {if $cookie->id_currency == $f_currency.id_currency}class="selected"{/if}>
                                <a href="javascript:setCurrency({$f_currency.id_currency});" rel="nofollow" title="{$currency_name}">
                                    {$currency_name}
                                </a>
                            </li>
                        {/foreach}
                    </ul>
                </div>
                <div class="btn-group col-xs-3 header-icon">
                    <div class="icon-inner dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                       <span class="glyphicon glyphicon-search"></span>
                    </div>
                    <div class="dropdown-menu">
                        <div class="col-xs-12">
                            <input type="text" class="form-control"/>
                        </div>
                        <div class="col-xs-12">
                            <button type="submit" name="submit_search" class="btn btn-primary button-search col-xs-12">
                                <span class="glyphicon glyphicon-search"></span>
                            </button>
                        </div>
                    </div>
                </div>
                <div class="col-xs-3 header-icon">
                    <div class="icon-inner"><span class="glyphicon glyphicon-user"></span></div>
                </div>
                <div class="col-xs-3 header-icon">
                    <div class="icon-inner"><span class="glyphicon glyphicon-shopping-cart"></span></div>
                </div>
            </div>
        </div>
        {include file=$menu_mobile}
        {*    {$currencies|@var_dump}*}
        {*    {$cookie|@var_dump}*}
    </div>
    <div id="mobile-content">