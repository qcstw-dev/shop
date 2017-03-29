{if isset($mobile)}
    {include file=$header_mobile}
{/if}
<div class="col-xs-12 font-size-24 border-bottom text-center margin-top-10 margin-bottom-20 uppercase padding-top-20 padding-bottom-20">You are a</div>
<div class="col-xs-12 margin-bottom-20">
    <div class="col-xs-6 col-md-3">
        <div class="intro-block-picture">
            <img src="{$img_dir}custom-shop-intro/charity.png" alt="charity" title="charity" />
        </div>
        <div class="font-size-20 text-center">Charity</div>
    </div>
    <div class="col-xs-6 col-md-3">
        <div class="intro-block-picture">
            <img src="{$img_dir}custom-shop-intro/club.png" alt="club association" title="club association" />
        </div>
        <div class="font-size-20 text-center">Club association</div>
    </div>
    <div class="col-xs-6 col-md-3">
        <div class="intro-block-picture">
            <img src="{$img_dir}custom-shop-intro/artist.png" alt="Artist" title="Artist" />
        </div>
        <div class="font-size-20 text-center">Artist</div>
    </div>
    <div class="col-xs-6 col-md-3">
        <div class="intro-block-picture">
            <img src="{$img_dir}custom-shop-intro/designer.png" alt="Designer" title="Designer" />
        </div>
        <div class="font-size-20 text-center">Designer</div>
    </div>
</div>
<div class="col-xs-12 padding-0 padding-top-20">
    <div class="col-xs-12 text-center font-size-24 uppercase border-bottom margin-bottom-20 padding-top-20 padding-bottom-20">
        And you want to use your image / design to increase / create revenue
    </div>
    <div class="col-xs-12 text-center thumbnail border-none">
        <img src="{$img_dir}custom-shop-intro/money.png" alt="increase / create revenue" title="increase / create revenue" />
    </div>
</div>
<div class="col-xs-12 padding-0 padding-top-20">
    <div class="col-xs-12 text-center font-size-24 uppercase margin-bottom-20 border-bottom padding-top-20 padding-bottom-20">
        Create your personal shop with us today
    </div>
    <div class="col-xs-12">
        <div class="col-xs-6 text-center thumbnail border-none">
            <img src="{$img_dir}custom-shop-intro/shop.png" alt="Personal shop" title="Personal shop" />
        </div>
        <div class="col-xs-6 font-size-24 italic intro-quote">
            "It's completely free and will forever be"
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<div class="col-xs-12 padding-0">
    <div class="col-xs-12 text-center font-size-24 uppercase margin-bottom-20 border-bottom padding-top-20 padding-bottom-20">
        You can
    </div>
    <div class="col-xs-12 col-lg-4">
        <div class="intro-block-picture-square thumbnail">
            <img src="{$img_dir}custom-shop-intro/batch-of-prod.png" alt="Choose the products" title="Choose the products" />
        </div>
        <div class="font-size-20 text-center">Choose the products you want to offer & place your design on it</div>
    </div>
    <div class="col-xs-12 col-lg-4">
        <div class="intro-block-picture-square thumbnail">
            <img src="{$img_dir}custom-shop-intro/dollars.png" alt="Set your commission" title="Set your commission" />
        </div>
        <div class="font-size-20 text-center">Decide how much you earn on each product sold</div>
    </div>
    <div class="col-xs-12 col-lg-4">
        <div class="intro-block-picture-square thumbnail">
            <img src="{$img_dir}custom-shop-intro/custom-shop.png" alt="Manage your shop" title="Manage your shop" />
        </div>
        <div class="font-size-20 text-center">Manage your shop looking</div>
    </div>
</div>
<div class="col-xs-12 padding-0">
    <div class="col-xs-12 text-center font-size-24 uppercase margin-bottom-20 margin-top-20 border-bottom padding-top-20 padding-bottom-20">
        We handle
    </div>
    <div class="col-xs-6 col-md-2">
        <div class="intro-block-picture">
            <img src="{$img_dir}custom-shop-intro/order-process.png" alt="Order process" title="Order process" />
        </div>
        <div class="font-size-20 text-center">Order process</div>
    </div>
    <div class="col-xs-6 col-md-2">
        <div class="intro-block-picture">
            <img src="{$img_dir}custom-shop-intro/payment.png" alt="Payment" title="Payment" />
        </div>
        <div class="font-size-20 text-center">Payment</div>
    </div>
    <div class="col-xs-6 col-md-2">
        <div class="intro-block-picture">
            <img src="{$img_dir}custom-shop-intro/stock.png" alt="Stock" title="Stock" />
        </div>
        <div class="font-size-20 text-center">Stock</div>
    </div>
    <div class="col-xs-6 col-md-2">
        <div class="intro-block-picture">
            <img src="{$img_dir}custom-shop-intro/personalization.png" alt="Personalization" title="Personalization" />
        </div>
        <div class="font-size-20 text-center">Personalization</div>
    </div>
    <div class="col-xs-6 col-md-2">
        <div class="intro-block-picture">
            <img src="{$img_dir}custom-shop-intro/shipping.png" alt="Shipping" title="Shipping" />
        </div>
        <div class="font-size-20 text-center">Shipping</div>
    </div>
    <div class="col-xs-6 col-md-2">
        <div class="intro-block-picture">
            <img src="{$img_dir}custom-shop-intro/customer-service.png" alt="Customer service" title="Customer service" />
        </div>
        <div class="font-size-20 text-center">Customer service</div>
    </div>
</div>
<div class="col-xs-12 text-center margin-top-50">
    <a class="btn btn-primary btn-lg font-size-20 uppercase" href="{$base_uri}custom-shop-register" title="Create your shop">
        <span class="glyphicon glyphicon-chevron-right"></span> Create your shop <span class="glyphicon glyphicon-chevron-left"></span> 
    </a>
</div>
{if isset($mobile)}
    {include file=$footer_mobile}
{/if}