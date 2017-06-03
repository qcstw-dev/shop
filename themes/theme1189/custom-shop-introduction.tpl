{if isset($mobile)}
    {include file=$header_mobile}
{/if}
<div class="col-xs-12 padding-0 margin-top-20 margin-bottom-20">
    <div class="col-xs-12 col-sm-6 margin-bottom-10 text-center">
        <a class="btn btn-danger btn-lg font-size-20 uppercase btn-connect" href="{$base_uri}custom-shop-register" title="Create your shop">
            <span class="glyphicon glyphicon-edit"></span> Create your shop 
        </a>
    </div>
    <div class="col-xs-12 col-sm-6 margin-bottom-10 text-center">
        <a class="btn btn-success btn-lg font-size-20 uppercase btn-connect" href="{$base_uri}custom-shop-register?preselect=login" title="Access to your shop">
            <span class="glyphicon glyphicon-user"></span> I already have a shop 
        </a>
    </div>
</div>
<div class="col-xs-12 text-center margin-top-10 margin-bottom-20 uppercase padding-top-20 padding-bottom-20 intro-title">You are a</div>
<div class="col-xs-12 margin-bottom-20">
    <div class="col-xs-6 col-sm-3">
        <div class="intro-block-picture">
            <img src="{$img_dir}custom-shop-intro/charity.png?{$var_cache}" alt="charity" title="charity" />
        </div>
        <div class="font-size-20 text-center">Charity</div>
    </div>
    <div class="col-xs-6 col-sm-3">
        <div class="intro-block-picture">
            <img src="{$img_dir}custom-shop-intro/club.png?{$var_cache}" alt="club association" title="club association" />
        </div>
        <div class="font-size-20 text-center">Club association</div>
    </div>
    <div class="col-xs-6 col-sm-3">
        <div class="intro-block-picture">
            <img src="{$img_dir}custom-shop-intro/artist.png?{$var_cache}" alt="Artist" title="Artist" />
        </div>
        <div class="font-size-20 text-center">Artist</div>
    </div>
    <div class="col-xs-6 col-sm-3">
        <div class="intro-block-picture">
            <img src="{$img_dir}custom-shop-intro/designer.png?{$var_cache}" alt="Designer" title="Designer" />
        </div>
        <div class="font-size-20 text-center">Designer</div>
    </div>
</div>
<div class="col-xs-6 padding-top-20">
    <div class="col-xs-12 text-center uppercase margin-bottom-20 padding-top-20 padding-bottom-20 intro-title intro-title-twince-left">
        And you want to use your <span class="hidden-xs">image / </span>design to <span class="hidden-xs">increase / </span> create revenue
    </div>
    <div class="col-xs-12 text-center thumbnail border-none margin-top-20">
        <img src="{$img_dir}custom-shop-intro/money.png?{$var_cache}" alt="increase / create revenue" title="increase / create revenue" />
    </div>
</div>
<div class="col-xs-6 padding-top-20">
    <div class="col-xs-12 text-center uppercase margin-bottom-20 padding-top-20 padding-bottom-20 intro-title intro-title-twince-right">
        Create your personal shop with us today
    </div>
    <div class="col-xs-12 text-center thumbnail border-none">
        <img src="{$img_dir}custom-shop-intro/shop.png?{$var_cache}" alt="Personal shop" title="Personal shop" />
    </div>
    <div class="col-xs-12 italic text-center margin-bottom-20 intro-quote">
        "It's completely free and will forever be"
    </div>
</div>
<div class="col-xs-12 padding-0">
    <div class="col-xs-12 text-center uppercase margin-bottom-20 padding-top-20 padding-bottom-20 intro-title">
        You can
    </div>
    <div class="col-xs-12 col-lg-4">
        <div class="intro-block-picture-square thumbnail">
            <img src="{$img_dir}custom-shop-intro/batch-of-prod.png?{$var_cache}" alt="Choose the products" title="Choose the products" />
        </div>
        <div class="font-size-20 text-center">Choose the products you want to offer & place your design on it</div>
    </div>
    <div class="col-xs-12 col-lg-4">
        <div class="intro-block-picture-square thumbnail">
            <img src="{$img_dir}custom-shop-intro/dollars.png?{$var_cache}" alt="Set your commission" title="Set your commission" />
        </div>
        <div class="font-size-20 text-center">Decide how much you earn on each product sold</div>
    </div>
    <div class="col-xs-12 col-lg-4">
        <div class="intro-block-picture-square thumbnail">
            <img src="{$img_dir}custom-shop-intro/custom-shop.png?{$var_cache}" alt="Manage your shop" title="Manage your shop" />
        </div>
        <div class="font-size-20 text-center">Manage your shop looking</div>
    </div>
</div>
<div class="col-xs-12 padding-0">
    <div class="col-xs-12 text-center uppercase margin-bottom-20 margin-top-20 padding-top-20 padding-bottom-20 intro-title">
        We handle
    </div>
    <div class="col-xs-6 col-sm-2">
        <div class="intro-block-picture">
            <img src="{$img_dir}custom-shop-intro/order-process.png?{$var_cache}" alt="Order process" title="Order process" />
        </div>
        <div class="font-size-20 text-center">Order process</div>
    </div>
    <div class="col-xs-6 col-sm-2">
        <div class="intro-block-picture">
            <img src="{$img_dir}custom-shop-intro/payment.png?{$var_cache}" alt="Payment" title="Payment" />
        </div>
        <div class="font-size-20 text-center">Payment</div>
    </div>
    <div class="col-xs-6 col-sm-2">
        <div class="intro-block-picture">
            <img src="{$img_dir}custom-shop-intro/stock.png?{$var_cache}" alt="Stock" title="Stock" />
        </div>
        <div class="font-size-20 text-center">Stock</div>
    </div>
    <div class="col-xs-6 col-sm-2">
        <div class="intro-block-picture">
            <img src="{$img_dir}custom-shop-intro/personalization.png?{$var_cache}" alt="Personalization" title="Personalization" />
        </div>
        <div class="font-size-20 text-center">Personalization</div>
    </div>
    <div class="col-xs-6 col-sm-2">
        <div class="intro-block-picture">
            <img src="{$img_dir}custom-shop-intro/shipping.png?{$var_cache}" alt="Shipping" title="Shipping" />
        </div>
        <div class="font-size-20 text-center">Shipping</div>
    </div>
    <div class="col-xs-6 col-sm-2">
        <div class="intro-block-picture">
            <img src="{$img_dir}custom-shop-intro/customer-service.png?{$var_cache}" alt="Customer service" title="Customer service" />
        </div>
        <div class="font-size-20 text-center">Customer service</div>
    </div>
</div>
<div class="col-xs-12 padding-0">
    <div class="col-xs-12 text-center uppercase margin-bottom-20 margin-top-20 padding-top-20 padding-bottom-20 intro-title">
        3 minutes shop creation set-up process
    </div>
    <iframe class="center-block visible-lg" width="640" height="360" src="https://www.youtube.com/embed/oty_aTG-rE4" frameborder="0" allowfullscreen></iframe>
    <iframe class="center-block visible-xs visible-sm" width="90%" height="300" src="https://www.youtube.com/embed/oty_aTG-rE4" frameborder="0" allowfullscreen></iframe>
</div>
<div class="col-xs-12 padding-0">
    <div class="col-xs-12 text-center uppercase margin-bottom-20 margin-top-20 padding-top-20 padding-bottom-20 intro-title">
        They trust us:
    </div>
    <div class="col-xs-12 padding-0 margin-bottom-20">
        <div class="col-xs-6 col-sm-3">
            <a target="_blank" href="https://www.giftattitude.com/shop/phoenixgear" title="phoenixgear shop Gift Attitude">
                <div class="thumbnail margin-bottom-10">
                    <img src="{$img_dir}custom-shop-intro/they-trust-us/phoenixgear-shop-Gift-Attitude.jpg?{$var_cache}" alt="phoenixgear shop Gift Attitude" title="phoenixgear shop Gift Attitude" />
                </div>
                <div class="font-size-20 text-center">Phoenix</div>
            </a>
        </div>
        <div class="col-xs-6 col-sm-3">
            <a target="_blank" href="https://www.giftattitude.com/shop/brazil" title="Bazil Goodies shop">
                <div class="thumbnail margin-bottom-10">
                    <img src="{$img_dir}custom-shop-intro/they-trust-us/Bazil-Goodies-shop-Gift-Attitude.jpg?{$var_cache}" alt="Bazil Goodies shop Gift Attitude" title="Bazil Goodies shop Gift Attitude" />
                </div>
                <div class="font-size-20 text-center">Brazil shop</div>
            </a>
        </div>
        <div class="col-xs-6 col-sm-3">
            <a target="_blank" href="https://www.giftattitude.com/shop/pimpmydog" title="P!MP My Dog shop Gift Attitude">
                <div class="thumbnail margin-bottom-10">
                    <img src="{$img_dir}custom-shop-intro/they-trust-us/PiMP-My-Dog-shop-Gift-Attitude.jpg?{$var_cache}" alt="P!MP My Dog shop Gift Attitude" title="P!MP My Dog shop Gift Attitude" />
                </div>
                <div class="font-size-20 text-center">P!MP My Dog</div>
            </a>
        </div>
        <div class="col-xs-6 col-sm-3">
            <a target="_blank" href="https://www.giftattitude.com/shop/cities-by-night" title="Cities by night shop Gift Attitude">
                <div class="thumbnail margin-bottom-10">
                    <img src="{$img_dir}custom-shop-intro/they-trust-us/Cities-by-night-shop-Gift-Attitude.jpg?{$var_cache}" alt="Cities by night shop Gift Attitude" title="Cities by night shop Gift Attitude" />
                </div>
                <div class="font-size-20 text-center">Cities by night</div>
            </a>
        </div>
    </div>
</div>
<div class="col-xs-12 padding-0 margin-top-20 margin-bottom-20">
    <div class="col-xs-12 col-sm-6 margin-bottom-10 text-center">
        <a class="btn btn-danger btn-lg font-size-20 uppercase btn-connect" href="{$base_uri}custom-shop-register" title="Create your shop">
            <span class="glyphicon glyphicon-edit"></span> Create your shop 
        </a>
    </div>
    <div class="col-xs-12 col-sm-6 margin-bottom-10 text-center">
        <a class="btn btn-success btn-lg font-size-20 uppercase btn-connect" href="{$base_uri}custom-shop-register?preselect=login" title="Access to your shop">
            <span class="glyphicon glyphicon-user"></span> I already have a shop 
        </a>
    </div>
</div>
{if isset($mobile)}
    {include file=$footer_mobile}
{/if}