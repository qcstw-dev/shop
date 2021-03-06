<div class="row">
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <div class="navbar-brand border-right">
                    {if strpos($meta_title, 'Home Mobile') !== false || strpos($meta_title, 'Mobile Product') !== false}
                        {l s='Step 1'}
                    {elseif strpos($meta_title, 'Select Design') !== false}
                        {l s='Step 2'}
                    {elseif strpos($meta_title, 'Place design on product') !== false}
                        {l s='Step 3'}
                    {elseif strpos($meta_title, 'Checkout') !== false}
                        {l s='Step 4'}
                    {elseif strpos($meta_title, 'Search') !== false}
                        {l s='Search'}
                    {else}
                        {l s='Info'}
                    {/if}
                </div>
                <div class="navbar-brand padding-0 padding-top-15 margin-left-5">
                    {if strpos($meta_title, 'Home Mobile') !== false}
                        {l s='Select Product'}
                    {elseif strpos($meta_title, 'Select Design') !== false}
                        {l s='Select Design'}
                    {elseif strpos($meta_title, 'Place design on product') !== false}
                        <span class="font-size-13">
                            {l s='Place design on product'}
                        </span>
                    {elseif strpos($meta_title, 'Checkout') !== false}
                        {l s='Checkout'}
                    {elseif strpos($meta_title, 'Search') !== false}
                        {$smarty.get.search_query|truncate:17:'...'}
                    {else}
                        {str_replace(' - ', '' , str_replace($shop_title, '', $meta_title))}
                    {/if}
                </div>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav bold">
                    <li>
                        <a href="{$base_uri}mobile">{l s='Step 1 Select Product'}</a>
                    </li>
                    <li>
                        <a {if $step|in_array:['2', '3', '4']}href="{$base_uri}mobile-designs"{/if} {if $step == '1'}class="disabled"{/if}>
                            {l s='Step 2 Select Design'}
                        </a>
                    </li>
                    <li>
                        <a {if $step|in_array:['3', '4']}href="{$base_uri}mobile-layout-maker"{/if} {if !in_array($step, ['3', '4'])}class="disabled"{/if}>
                            {l s='Step 3 Place design on product'}
                        </a>
                    </li>
                    <li>
                        <a {if $cart_products}href="{$base_uri}mobile-checkout"{/if} {if !$cart_products}class="disabled"{/if}>
                            {l s='Step 4 Checkout'}
                        </a>
                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
</div>