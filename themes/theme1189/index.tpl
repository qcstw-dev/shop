{*{if isset($HOOK_HOME_TAB_CONTENT) && $HOOK_HOME_TAB_CONTENT|trim}*}
{if isset($HOOK_HOME_TAB) && $HOOK_HOME_TAB|trim}
    <ul id="home-page-tabs" class="nav nav-tabs clearfix">
        {$HOOK_HOME_TAB}
    </ul>
{/if}
<div class="tab-content">
    {$HOOK_HOME_TAB_CONTENT}

    <div class="col-xs-6 thumbnail border-none margin-bottom-0 home-block">
        <a href="{$base_dir_ssl}73-wearable" title="Wearable products">
            <img src="{$img_dir}home/wearable-dog.jpg" alt="" title="">
            <div class="home-block-hover">Wearable products</div>
        </a>
    </div>
    <div class="col-xs-3 thumbnail border-none margin-bottom-0 home-block">
        <a href="{$base_dir_ssl}73-wearable" title="Wearable products">
            <img src="{$img_dir}home/sticker-proverb.jpg" alt="" title="">
            <div class="home-block-hover home-block-hover-sm">Wearable products</div>
        </a>
    </div>
    <div class="col-xs-3 thumbnail border-none margin-bottom-0">
        <img src="{$img_dir}home/keychain-paintball.jpg" alt="" title="">
    </div>
    <div class="col-xs-3 thumbnail border-none margin-bottom-0">
        <img src="{$img_dir}home/coin-keychain-club.jpg" alt="" title="">
    </div>
    <div class="col-xs-3 thumbnail border-none margin-bottom-0">
        <img src="{$img_dir}home/carabiner-religious.jpg" alt="" title="">
    </div>

    <div class="col-xs-6 padding-0">
        <div class="col-xs-6 padding-0">
            <div class="col-xs-12 thumbnail border-none margin-bottom-0">
                <img src="{$img_dir}home/tools-baby.jpg" alt="" title="">
            </div>
            <div class="col-xs-12 thumbnail border-none margin-bottom-0">
                <img src="{$img_dir}home/carabiner-religious.jpg" alt="" title="">
            </div>
        </div>
        <div class="col-xs-6 padding-0">
            <div class="col-xs-12 thumbnail border-none margin-bottom-0">
                <img src="{$img_dir}home/dogtag-wedding-long.jpg" alt="" title="">
            </div>
        </div>
    </div>
    <div class="col-xs-6 thumbnail border-none margin-bottom-0">
        <img src="{$img_dir}home/keychain-paintball.jpg" alt="" title="">
    </div>

    <di{*v class="col-xs-3 thumbnail border-none margin-bottom-0">
        <img src="{$img_dir}home/wearable-dog.jpg" alt="" title="">
    </div>
    <div class="col-xs-3 thumbnail border-none margin-bottom-0">
        <img src="{$img_dir}home/carabiner-religious.jpg" alt="" title="">
    </div>
    <div class="col-xs-3 thumbnail border-none margin-bottom-0">
        <img src="{$img_dir}home/wearable-dog.jpg" alt="" title="">
    </div>
    <div class="col-xs-3 thumbnail border-none margin-bottom-0">
        <img src="{$img_dir}home/carabiner-religious.jpg" alt="" title="">
    </div>*}
    {*{if $aProducts}
    <h4 class="row-title">{l s='Latest product available'}</h4>
    {include file="./product-list.tpl" products=$aProducts home_category='products'}
    {/if}
    {if $aDesigns}
    <h4 class="row-title">{l s='Latest pictures in library'}</h4>
    {include file="./product-list.tpl" products=$aDesigns home_category='designs'}
    {/if}
    {if $aCreations}
    <h4 class="row-title">{l s='Recently ordered'}</h4>
    {include file="./last-creations.tpl" creations=$aCreations}
    {/if}*}
</div> 
<script>
    {if $popup_video == 'true'}
    videoPopupOpen();
    {/if}
</script>
{*{/if}*}