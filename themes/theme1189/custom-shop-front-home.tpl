{include file=$header}
{if !$shop.deactivated}
    {if $products}
        {include file=$front_products_list}
    {else}
        <div class="alert alert-info text-center">
            No products available yet for this shop
        </div>
    {/if}
    {include file=$footer}
{/if}