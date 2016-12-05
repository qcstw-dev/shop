<!DOCTYPE html>
<head>
    <meta name="robots" content="noindex, nofollow">
    <meta name="viewport" content="width=device-width, minimum-scale=0.25, maximum-scale=1.0, initial-scale=1.0" /> 
    <link rel="icon" type="image/vnd.microsoft.icon" href="{$base_dir_ssl}/img/favicon.ico?{rand()}">
    <link rel="stylesheet" href="{$css_dir}bootstrap.min.css" media="all">
    <link rel="stylesheet" href="{$css_dir}tool-custom-bootstrap.css" media="all">
    <link rel="stylesheet" href="{$css_dir}autoload/magnific-popup.css" media="all">
    <link rel="stylesheet" href="{$css_dir}slick/slick.css" media="all">
    <link rel="stylesheet" href="{$css_dir}slick/slick-theme.css" media="all">
    <link rel="stylesheet" href="{$css_dir}mobile-style.css" media="all">
    {if isset($layout_maker) && $layout_maker}
        <link rel="stylesheet" href="{$css_dir}layout_maker/component.css" media="all">
        <link rel="stylesheet" href="{$css_dir}layout_maker/custom.css" media="all">
    {/if}
    {if isset($mobile_payment)}
        <script type="text/javascript" src="{$base_dir_ssl}js/jquery/jquery-1.11.0.min.js"></script>
    {/if}
    {*<link rel="stylesheet" href="{$modules_dir}tmheaderaccount/css/front.css" media="all">*}
    <meta property="og:image" content="{$logo_url}" />
    <title>{$meta_title}</title>
</head>
<body>
    <div id="mobile" class="container">
        <div id="mobile-header">
            <div class="row">
                <div class="col-xs-4 thumbnail border-none">
                    <a href="{$base_uri}mobile" title="{$shop_name|escape:'html':'UTF-8'}">
                        <img src="{$logo_url}" alt="{$shop_name|escape:'html':'UTF-8'}" title="{$shop_name|escape:'html':'UTF-8'}"/>
                    </a>
                </div>
                <div class="col-xs-8 col-sm-4 col-md-3 pull-right padding-0 header-icons">
                    <!-- Single button -->
                    <div class="col-xs-3 header-icon">
                        <div class="icon-inner icon-currency select" data-block="currencies">
                            {foreach from=$currencies key=k item=f_currency}
                                {if $cookie->id_currency == $f_currency.id_currency}
                                    <div class="icon-sign-{$f_currency.sign|count_characters}">
                                        {$f_currency.sign}
                                    </div>
                                {/if}
                            {/foreach}
                        </div>
                    </div>
                    <div class="col-xs-3 header-icon select" data-block="search">
                        <div class="icon-inner"><span class="glyphicon glyphicon-search"></span></div>
                    </div>
                    <div class="col-xs-3 header-icon select" data-block="account">
                        <div class="icon-inner"><span class="glyphicon glyphicon-user"></span></div>
                    </div>
                    <div class="col-xs-3 header-icon select" data-block="cart">
                        <span class="ajax_cart_quantity">{$cart_qties}</span>
                        <div class="icon-inner"><span class="glyphicon glyphicon-shopping-cart"></span></div>
                    </div>
                </div>
                <div class="list-currency hidden block-currencies">
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
                        {/foreach}
                    </div>
                </div>
                <div class="row hidden block-search">
                    <form id="searchbox" method="get" action="{$link->getPageLink('search', null, null, null, false, null, true)|escape:'html':'UTF-8'}" >
                        <div class="input-group">
                            <input type="hidden" name="controller" value="search" />
                            <input type="hidden" name="orderby" value="position" />
                            <input type="hidden" name="orderway" value="desc" />
                            <input class="search_query form-control" type="text" id="search_query_top" name="search_query" placeholder="{l s='Search' mod='blocksearch'}..." autofocus/>
                            <span class="input-group-btn">
                                <button type="submit" name="submit_search" class="btn btn-primary button-search">
                                    <span class="glyphicon glyphicon-search"></span> {l s='Search' mod='blocksearch'}
                                </button>
                            </span>
                        </div><!-- /input-group -->
                    </form>
                </div>
                <div class="row hidden block-account">
                    {if $is_logged}
{*                        <div><a href="{$link->getPageLink('history', true)|escape:'html'}" title="{l s='My orders' mod='tmheaderaccount'}" rel="nofollow">{l s='My orders' mod='tmheaderaccount'}</a></div>*}
                        <div><a href="{$link->getPageLink('mobile-addresses', true)|escape:'html'}" title="{l s='My addresses' mod='tmheaderaccount'}" rel="nofollow">{l s='My addresses' mod='tmheaderaccount'}</a></div>
                            {if isset($HOOK_BLOCK_MY_ACCOUNT) && $HOOK_BLOCK_MY_ACCOUNT !=''}
                                {$HOOK_BLOCK_MY_ACCOUNT}
                            {/if}
                        <p class="logout">
                            <a class="pull-right btn btn-default btn-sm" href="{$link->getPageLink('index')}?mylogout" title="{l s='Sign out' mod='tmheaderaccount'}" rel="nofollow">
                                <i class="fa fa-unlock left"></i> 
                                {l s='Sign out' mod='tmheaderaccount'}
                            </a>
                        </p>
                        <div class="clearfix"></div>
                    {else}
                        <form action="{$base_dir}login" method="post">
                            <div id="create_header_account_error" class="alert alert-danger" style="display:none;"></div>
                            <div class="form_content clearfix">
                                <div class="form-group">
                                    <label for="email">Email address</label>
                                    <input class="is_required validate account_input form-control" data-validate="isEmail" type="text" id="email" name="email" value="">
                                </div>
                                <div class="form-group">
                                    <label for="passwd">Password</label>
                                    <span><input class="is_required validate account_input form-control" type="password" data-validate="isPasswd" id="passwd" name="passwd" value="" autocomplete="off"></span>
                                </div>
                                <p class="submit">
                                    <button type="button" id="SubmitLogin" name="HeaderSubmitLogin" class="btn btn-primary btn-sm">
                                        <i class="fa fa-lock left"></i> 
                                        Login
                                    </button>
                                </p>
                                <p>
                                    <a href="{$base_dir}mobile-authentication" class="create">Create an account</a>
                                </p>
                                <div class="clearfix"></div>
                            </div>
                        </form>
                    {/if}
                </div>
                <div class="row hidden block-cart">
                    {if $cart_products}
                        <div class="font-size-20 text-center bold">{l s='Cart'}</div>
                        {foreach from=$cart_products item=product name=cart_products}
                            <div class="col-xs-12 padding-0 block-cart-element block-cart-element-{$product.id_product|intval}-{$product.custom_picture}" data-id="cart_block_product_{$product.id_product|intval}_{$product.custom_picture}">
                                <hr>
                                <div class="col-xs-6 thumbnail">
                                    <img class="popup" src="{$base_uri}{$custom_picture_path}{$product.custom_picture}.png" alt="{$product.name|escape:'html':'UTF-8'}" title="{$product.name|escape:'html':'UTF-8'}" />
                                </div>
                                <div class="col-xs-6 padding-right-0">
                                    <div>
                                        {$product.cart_quantity}</span>&nbsp;x&nbsp;
                                    </div>
                                    <div>
                                        <a href="{$base_uri}mobile-product-page?id_product={$product.id_product}">
                                            {$product.name|truncate:20:'...'|escape:'html':'UTF-8'}
                                        </a>
                                    </div>
                                    <div class="bold font-size-20">
                                        {if !isset($product.is_gift) || !$product.is_gift}
                                    {if $priceDisplay == $smarty.const.PS_TAX_EXC}{displayWtPrice p="`$product.total`"}{else}{displayWtPrice p="`$product.total_wt`"}{/if}
                                {else}
                                    {l s='Free!' mod='blockcart'}
                                {/if}
                            </div>
                            <div>
                                <div class="btn btn-danger remove-from-cart" 
                                     data-custom-picture="{$product.custom_picture}" 
                                     data-id-product="{$product.id_product}" 
                                     data-id-design="{$product.id_design}" 
                                     data-original-product="{$product.original_picture}" 
                                     href="{$link->getPageLink('cart', true, NULL, "delete=1&id_product={$product.id_product|intval}&id_address_delivery={$product.id_address_delivery|intval}&token={$token}&custom_picture={$product.custom_picture}&original_picture={$product.original_picture}")|escape:'html':'UTF-8'}"
                                     title="{l s='remove this product from my cart' mod='blockcart'}">
                                    <span class="glyphicon glyphicon-trash"></span> {l s='Remove'}
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12">
                    </div>
                    <div class="clearfix"></div>
                {/foreach}
                <div class="col-xs-12 bold font-size-20 block-cart-total">
                    <hr>
                    <div class="col-xs-6">
                        {l s='Total'}
                    </div>
                    <div class="col-xs-6 text-right cart-total">
                        {$total_cart}
                    </div>
                </div>
                <a class="btn btn-primary margin-top-10 col-xs-12 col-sm-offset-4 col-sm-4 btn-checkout" href="{$base_uri}mobile-checkout">{l s='Checkout'} <span class="glyphicon glyphicon-chevron-right"></span></a>
                <div class="clearfix"></div>
            {/if}
            <div class="alert alert-info text-center empty-cart-message {if $cart_products}hidden{/if}">
                {l s='Your cart is empty'}
            </div>
        </div>
    </div>

    {include file=$menu_mobile}
    {*    {$currencies|@var_dump}*}
    {*    {$cookie|@var_dump}*}
</div>
<div id="mobile-content" class="row">