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
                    {else}
                        {l s='Step 4'}
                    {/if}
                </div>
                <div class="navbar-brand padding-0 padding-top-15 margin-left-10">
                    {if strpos($meta_title, 'Home Mobile') !== false}
                        {l s='Select Product'}
                    {elseif strpos($meta_title, 'Select Design') !== false}
                        {l s='Select Design'}
                    {elseif strpos($meta_title, 'Place design on product') !== false}
                        <span class="font-size-13">
                            {l s='Place design on product'}
                        </span>
                    {else}
                        {l s='Checkout'}
                    {/if}
                </div>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav bold">
                    <li>
                        <a href="{$base_uri}mobile">{l s='Step 1 Select Product'}</a>
                    </li>
                    <li {if $step == '1'}class="disabled"{/if}>
                        <a href="{if $step|in_array:['2', '3', '4']}{$base_uri}mobile-designs{/if}">
                            {l s='Step 2 Select Design'}
                        </a>
                    </li>
                    <li {if !in_array($step, ['3', '4'])}class="disabled"{/if}>
                        <a href="{if $step|in_array:['3', '4']}{$base_uri}mobile-layout-maker{/if}">
                            {l s='Step 3 Place design on product'}
                        </a>
                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
</div>