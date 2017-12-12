{*{if isset($HOOK_HOME_TAB_CONTENT) && $HOOK_HOME_TAB_CONTENT|trim}*}
{if isset($HOOK_HOME_TAB) && $HOOK_HOME_TAB|trim}
    <ul id="home-page-tabs" class="nav nav-tabs clearfix">
        {$HOOK_HOME_TAB}
    </ul>
{/if}
<div class="tab-content">
    {$HOOK_HOME_TAB_CONTENT}
    <h1 class="row-title">{l s='CREATE'}</h1>
    <div class="col-xs-6 thumbnail border-none margin-bottom-0 home-block">
        <a href="{$base_dir_ssl}51-bar-accessory" title="Bar accessory">
            <img src="{$img_dir}home/MSOBT-Bar-accessory-familly-souvenirs.jpg?{$var_cache}" alt="Bar accessory" title="Bar accessory">
            <div class="home-block-hover">Bar accessory</div>
        </a>
    </div>
    <div class="col-xs-3 thumbnail border-none margin-bottom-0 home-block">
        <a href="{$base_dir_ssl}50-keychain" title="Keychain">
            <img src="{$img_dir}home/ZMR-Keychain-dog.jpg?{$var_cache}" alt="Keychain" title="Keychain">
            <div class="home-block-hover home-block-hover-sm">Keychain</div>
        </a>
    </div>
    <div class="col-xs-3 thumbnail border-none margin-bottom-0 home-block">
        <a href="{$base_dir_ssl}78-3c-accessory" title="3C Accessory wedding souvenirs">
            <img src="{$img_dir}home/PWH-3C-Accessory-wedding-souvenir.jpg?{$var_cache}" alt="3C Accessory" title="3C Accessory">
            <div class="home-block-hover home-block-hover-sm">3C Accessory</div>
        </a>
    </div>
    <div class="col-xs-3 thumbnail border-none margin-bottom-0 home-block">
        <a href="{$base_dir_ssl}75-coin-keychain" title="Coin keychain">
            <img src="{$img_dir}home/ZUM01-Coin-keychain-proverb.jpg?{$var_cache}" alt="Coin keychain" title="Coin keychain">
            <div class="home-block-hover home-block-hover-sm">Coin keychain</div>
        </a>
    </div>
    <div class="col-xs-3 thumbnail border-none margin-bottom-0 home-block">
        <a href="{$base_dir_ssl}73-wearable" title="Wearable product">
            <img src="{$img_dir}home/LPODD-Wearable-paintball.jpg?{$var_cache}" alt="Wearable product" title="Wearable product">
            <div class="home-block-hover home-block-hover-sm">Wearable product</div>
        </a>
    </div>

    <div class="col-xs-6 padding-0">
        <div class="col-xs-6 padding-0">
            <div class="col-xs-12 thumbnail border-none margin-bottom-0 home-block">
                <a href="{$base_dir_ssl}74-stickers-magnets" title="Stickers & Magnets">
                    <img src="{$img_dir}home/MFM-Stickers-Magnets-Music-Band.jpg?{$var_cache}" alt="Stickers & Magnets" title="Stickers & Magnets">
                    <div class="home-block-hover home-block-hover-sm">Stickers & Magnets</div>
                </a>
            </div>
            <div class="col-xs-12 thumbnail border-none margin-bottom-0 home-block">
                <a href="{$base_dir_ssl}76-canisters-containers" title="Canister & container">
                    <img src="{$img_dir}home/PCA19-Canister-container-ear-plug-religion.jpg?{$var_cache}" alt="Canister & container" title="Canister & container">
                    <div class="home-block-hover home-block-hover-sm">Canister & container</div>
                </a>
            </div>
        </div>
        <div class="col-xs-6 padding-0">
            <div class="col-xs-12 thumbnail border-none margin-bottom-0 home-block">
                <a href="{$base_dir_ssl}79-dogtag" title="Dogtag">
                    <img src="{$img_dir}home/PDTOV-Wearable-Dogtag-Party-Night-Club.jpg?{$var_cache}" alt="Dogtag" title="Dogtag">
                    <div class="home-block-hover home-block-hover-sm">Dogtag</div>
                </a>
            </div>
        </div>
    </div>
    <div class="col-xs-6 thumbnail border-none margin-bottom-0 home-block">
        <a href="{$base_dir_ssl}77-tools" title="Tools">
            <img src="{$img_dir}home/PGT-Tools-Golf-Baby-souvenirs.jpg?{$var_cache}" alt="Golf tool divot, baby souvenirs" title="Golf tool divot, baby souvenirs">
            <div class="home-block-hover">Tools</div>
        </a>
    </div>
    <div class="clearfix"></div>
    <h4 class="row-title">{l s='SHOP'}</h4>
    <div class="col-xs-3 padding-0">
        <div class="col-xs-12 thumbnail border-none margin-bottom-0 home-block">
            <a href="{$base_dir_ssl}shop?design_cat[]=1" title="Animals">
                <img src="{$img_dir}home/Pets.jpg?{$var_cache}" alt="Animals" title="Animals">
                <div class="home-block-hover home-block-hover-sm">Animals</div>
            </a>
        </div>
    </div>
    <div class="col-xs-3 padding-0">
        <div class="col-xs-12 thumbnail border-none margin-bottom-0 home-block">
            <a href="{$base_dir_ssl}shop?design_cat[]=4" title="Travel">
                <img src="{$img_dir}home/travel.jpg?{$var_cache}" alt="Travel" title="Travel">
                <div class="home-block-hover home-block-hover-sm">Travel</div>
            </a>
        </div>
        <div class="col-xs-12 thumbnail border-none margin-bottom-0 home-block">
            <a href="{$base_dir_ssl}shop?design_cat[]=3" title="Geek">
                <img src="{$img_dir}home/geek.jpg?{$var_cache}" alt="Geek" title="Geek">
                <div class="home-block-hover home-block-hover-sm">Geek</div>
            </a>
        </div>
    </div>
    <div class="col-xs-3 padding-0">
        <div class="col-xs-12 thumbnail border-none margin-bottom-0 home-block">
            <a href="{$base_dir_ssl}shop?design_cat[]=7" title="Funny">
                <img src="{$img_dir}home/funny.jpg?{$var_cache}" alt="Funny" title="Funny">
                <div class="home-block-hover home-block-hover-sm">Funny</div>
            </a>
        </div>
    </div>
    <div class="col-xs-3 padding-0">
        <div class="col-xs-12 thumbnail border-none margin-bottom-0 home-block">
            <a href="{$base_dir_ssl}shop?design_cat[]=8" title="Design">
                <img src="{$img_dir}home/design.jpg?{$var_cache}" alt="Design" title="Design">
                <div class="home-block-hover home-block-hover-sm">Design</div>
            </a>
        </div>
        <div class="col-xs-12 thumbnail border-none margin-bottom-0 home-block">
            <a href="{$base_dir_ssl}shop?design_cat[]=5" title="Sport">
                <img src="{$img_dir}home/sport.jpg?{$var_cache}" alt="Sport" title="Sport">
                <div class="home-block-hover home-block-hover-sm">Sport</div>
            </a>
        </div>
    </div>
    <div class="clearfix"></div>
    <h4 class="row-title">{l s='SELL'}</h4>
    <div class="col-sm-4 border-right">
        <div class="col-xs-12 thumbnail border-none margin-bottom-0 margin-top-10">
            <img src="{$img_dir}custom-shop-intro/shop.png?{$var_cache}" alt="Personal shop" title="Personal shop" />
        </div>
        <div class="col-xs-12 font-size-15 text-center bold">
            "Create your shop today.<br />It's free and will forever be"
        </div>
    </div>
    <div class="col-sm-8">
        <div class="col-xs-12 text-center font-size-20 margin-bottom-10 padding-10 border background-light">Easy 3 step process</div>
        <div class="clearfix"></div>
        <div class="col-xs-12 margin-auto padding-20 margin-bottom-10">
            <div class="col-xs-offset-1 col-xs-3 padding-0">
                <div class="col-xs-12 padding-0 thumbnail border-none margin-bottom-0">
                    <img src="{$img_dir}custom-shop-intro/upload-pictures.png?{$var_cache}" alt="" title="" />
                </div>
                <div class="col-xs-12 padding-0 text-center bold font-size-15">
                    Upload your design
                </div>
            </div>
            <div class="col-xs-1 margin-top-90">
                <span class="glyphicon glyphicon-arrow-right color-warning font-size-44"></span>
            </div>
            <div class="col-xs-3 padding-0">
                <div class="col-xs-12 padding-0 thumbnail border-none margin-bottom-0">
                    <img src="{$img_dir}custom-shop-intro/place-product.png?{$var_cache}" alt="Create your product" title="Create your product" />
                </div>
                <div class="col-xs-12 padding-0 text-center bold font-size-15">
                    Place it on picture
                </div>
            </div>
            <div class="col-xs-1 margin-top-90">
                <span class="glyphicon glyphicon-arrow-right color-warning font-size-44"></span>
            </div>
            <div class="col-xs-3 padding-0">
                <div class="col-xs-12 padding-20 thumbnail border-none margin-bottom-0">
                    <img src="{$img_dir}custom-shop-intro/dollars.png?{$var_cache}" alt="Make money" title="Make money" />
                </div>
                <div class="col-xs-12 padding-0 text-center bold font-size-15">
                    Publish & collect money
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="col-xs-12">
            <div class="col-sm-9 margin-auto">
                <div class="col-xs-6">
                    <a class="btn btn-danger btn-lg col-xs-12" href="{$base_dir_ssl}custom-shop-register" title="Create your shop"><span class="glyphicon glyphicon-edit"></span> Create your shop</a>
                </div>
                <div class="col-xs-6">
                    <a class="btn btn-warning btn-lg col-xs-12" href="{$base_dir_ssl}custom-shop-introduction" title="Custom shop introduction"><span class="glyphicon glyphicon-info-sign"></span> Read more</a>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xs-12 padding-0 margin-top-10">
        <div class="col-xs-12 text-center font-size-20 margin-bottom-20 padding-10 border background-light">
            They trusted  us:
        </div>
        <div class="col-xs-12 padding-0">
            <div class="col-xs-6 col-sm-3">
                <a target="_blank" href="https://www.giftattitude.com/shop/phoenixgear" title="phoenixgear shop Gift Attitude">
                    <div class="thumbnail margin-bottom-0">
                        <img src="{$img_dir}custom-shop-intro/they-trust-us/phoenixgear-shop-Gift-Attitude.jpg?{$var_cache}" alt="phoenixgear shop Gift Attitude" title="phoenixgear shop Gift Attitude" />
                    </div>
                    <div class="font-size-20 text-center background-light padding-10 border border-top-0">Phoenix</div>
                </a>
            </div>
            <div class="col-xs-6 col-sm-3">
                <a target="_blank" href="https://www.giftattitude.com/shop/brazil" title="Bazil Goodies shop">
                    <div class="thumbnail margin-bottom-0">
                        <img src="{$img_dir}custom-shop-intro/they-trust-us/Bazil-Goodies-shop-Gift-Attitude.jpg?{$var_cache}" alt="Bazil Goodies shop Gift Attitude" title="Bazil Goodies shop Gift Attitude" />
                    </div>
                    <div class="font-size-20 text-center background-light padding-10 border border-top-0">Brazil shop</div>
                </a>
            </div>
            <div class="col-xs-6 col-sm-3">
                <a target="_blank" href="https://www.giftattitude.com/shop/pimpmydog" title="P!MP My Dog shop Gift Attitude">
                    <div class="thumbnail margin-bottom-0">
                        <img src="{$img_dir}custom-shop-intro/they-trust-us/PiMP-My-Dog-shop-Gift-Attitude.jpg?{$var_cache}" alt="P!MP My Dog shop Gift Attitude" title="P!MP My Dog shop Gift Attitude" />
                    </div>
                    <div class="font-size-20 text-center background-light padding-10 border border-top-0">P!MP My Dog</div>
                </a>
            </div>
            <div class="col-xs-6 col-sm-3">
                <a target="_blank" href="https://www.giftattitude.com/shop/cities-by-night" title="Cities by night shop Gift Attitude">
                    <div class="thumbnail margin-bottom-0">
                        <img src="{$img_dir}custom-shop-intro/they-trust-us/Cities-by-night-shop-Gift-Attitude.jpg?{$var_cache}" alt="Cities by night shop Gift Attitude" title="Cities by night shop Gift Attitude" />
                    </div>
                    <div class="font-size-20 text-center background-light padding-10 border border-top-0">Cities by night</div>
                </a>
            </div>
        </div>
    </div>
    <div class="col-xs-12 margin-top-20 text-right">
        <hr>
        Website designed by <a href="https://www.pineapple-web.com" class="text-underline color-primary" target="_blank">Pineapple Web - Web & digital marketing agency</a>
    </div>
    {*{if $aProducts}
    <h4 class="row-title font-size-20">{l s='Latest product available'}</h4>
    {include file="./product-list.tpl" products=$aProducts home_category='products'}
    {/if}*}
    {*<div class="col-xs-3 thumbnail border-none margin-bottom-0">
    <img src="{$img_dir}home/wearable-dog.jpg?{$var_cache}" alt="" title="">
    </div>
    <div class="col-xs-3 thumbnail border-none margin-bottom-0">
    <img src="{$img_dir}home/carabiner-religious.jpg?{$var_cache}" alt="" title="">
    </div>
    <div class="col-xs-3 thumbnail border-none margin-bottom-0">
    <img src="{$img_dir}home/wearable-dog.jpg?{$var_cache}" alt="" title="">
    </div>
    <div class="col-xs-3 thumbnail border-none margin-bottom-0">
    <img src="{$img_dir}home/carabiner-religious.jpg?{$var_cache}" alt="" title="">
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