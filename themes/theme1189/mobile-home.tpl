{include file=$header_mobile}
<div id="mobile-home">
    <div class="product-list">
        {include file="./mobile-product-list.tpl" products=$products}
    </div>
    <div class="col-xs-12 padding-top-10 padding-bottom-10 loading-ajax hidden">
        <div class="col-xs-6 col-xs-offset-3 col-sm-offset-5">
            <div class="col-xs-4 col-xs-1"><img src="{$base_uri}img/loader.gif" /></div>
            <div class="col-xs-6 bold">Loading...</div>
        </div>
    </div>
</div>
{include file=$footer_mobile}