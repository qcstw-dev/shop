{*{if isset($HOOK_HOME_TAB_CONTENT) && $HOOK_HOME_TAB_CONTENT|trim}*}
{if isset($HOOK_HOME_TAB) && $HOOK_HOME_TAB|trim}
    <ul id="home-page-tabs" class="nav nav-tabs clearfix">
        {$HOOK_HOME_TAB}
    </ul>
{/if}
<div class="tab-content">
    {$HOOK_HOME_TAB_CONTENT}
    <h1 class="row-title font-size-20">{l s='Product categories'}</h1>
    <div class="col-xs-6 thumbnail border-none margin-bottom-0 home-block">
        <a href="{$base_dir_ssl}51-bar-accessory" title="Bar accessory">
            <img src="{$img_dir}home/MSOBT-Bar-accessory-familly-souvenirs.jpg" alt="Bar accessory" title="Bar accessory">
            <div class="home-block-hover">Bar accessory</div>
        </a>
    </div>
    <div class="col-xs-3 thumbnail border-none margin-bottom-0 home-block">
        <a href="{$base_dir_ssl}50-keychain" title="Keychain">
            <img src="{$img_dir}home/ZMR-Keychain-dog.jpg" alt="Keychain" title="Keychain">
            <div class="home-block-hover home-block-hover-sm">Keychain</div>
        </a>
    </div>
    <div class="col-xs-3 thumbnail border-none margin-bottom-0 home-block">
        <a href="{$base_dir_ssl}78-3c-accessory" title="3C Accessory wedding souvenirs">
            <img src="{$img_dir}home/PWH-3C-Accessory-wedding-souvenir.jpg" alt="3C Accessory" title="3C Accessory">
            <div class="home-block-hover home-block-hover-sm">3C Accessory</div>
        </a>
    </div>
    <div class="col-xs-3 thumbnail border-none margin-bottom-0 home-block">
        <a href="{$base_dir_ssl}75-coin-keychain" title="Coin keychain">
            <img src="{$img_dir}home/ZUM01-Coin-keychain-proverb.jpg" alt="Coin keychain" title="Coin keychain">
            <div class="home-block-hover home-block-hover-sm">Coin keychain</div>
        </a>
    </div>
    <div class="col-xs-3 thumbnail border-none margin-bottom-0 home-block">
        <a href="{$base_dir_ssl}73-wearable" title="Wearable product">
            <img src="{$img_dir}home/LPODD-Wearable-paintball.jpg" alt="Wearable product" title="Wearable product">
            <div class="home-block-hover home-block-hover-sm">Wearable product</div>
        </a>
    </div>

    <div class="col-xs-6 padding-0">
        <div class="col-xs-6 padding-0">
            <div class="col-xs-12 thumbnail border-none margin-bottom-0 home-block">
                <a href="{$base_dir_ssl}74-stickers-magnets" title="Stickers & Magnets">
                    <img src="{$img_dir}home/MFM-Stickers-Magnets-Music-Band.jpg" alt="Stickers & Magnets" title="Stickers & Magnets">
                    <div class="home-block-hover home-block-hover-sm">Stickers & Magnets</div>
                </a>
            </div>
            <div class="col-xs-12 thumbnail border-none margin-bottom-0 home-block">
                <a href="{$base_dir_ssl}76-canisters-containers" title="Canister & container">
                    <img src="{$img_dir}home/PCA19-Canister-container-ear-plug-religion.jpg" alt="Canister & container" title="Canister & container">
                    <div class="home-block-hover home-block-hover-sm">Canister & container</div>
                </a>
            </div>
        </div>
        <div class="col-xs-6 padding-0">
            <div class="col-xs-12 thumbnail border-none margin-bottom-0 home-block">
                <a href="{$base_dir_ssl}79-dogtag" title="Dogtag">
                    <img src="{$img_dir}home/PDTOV-Wearable-Dogtag-Party-Night-Club.jpg" alt="Dogtag" title="Dogtag">
                    <div class="home-block-hover home-block-hover-sm">Dogtag</div>
                </a>
            </div>
        </div>
    </div>
    <div class="col-xs-6 thumbnail border-none margin-bottom-0 home-block">
        <a href="{$base_dir_ssl}77-tools" title="Tools">
            <img src="{$img_dir}home/PGT-Tools-Golf-Baby-souvenirs.jpg" alt="Golf tool divot, baby souvenirs" title="Golf tool divot, baby souvenirs">
            <div class="home-block-hover">Tools</div>
        </a>
    </div>
    <div class="clearfix"></div>
    {if $aProducts}
        <h4 class="row-title font-size-20">{l s='Latest product available'}</h4>
        {include file="./product-list.tpl" products=$aProducts home_category='products'}
    {/if}
    {*<div class="col-xs-3 thumbnail border-none margin-bottom-0">
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