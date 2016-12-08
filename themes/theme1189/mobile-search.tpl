{include file=$header_mobile}
{if $products}
    {include file="./mobile-product-list.tpl" products=$products}
{else}
    <div class="col-xs-12">
        <div class="alert alert-danger bold">
            {l s='No results were found for your search'}
        </div>
    </div>
{/if}
{include file=$footer_mobile}