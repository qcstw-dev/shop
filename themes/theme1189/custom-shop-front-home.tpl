{include file=$header}
{if !$shop.deactivated}
    {if $products}
        {include file=$front_products_list}
    {else}
        <div class="alert alert-info text-center">
            No products available yet for this shop
        </div>
    {/if}
    {include file=$contact_form}
    {include file=$footer}
{else}
    <div class="alert alert-info font-size-20 text-center top-50-percent">
        <div>This shop is currently not available</div>
        <div><a class="btn btn-primary margin-top-10" href="{$base_dir}">Visit main website</a></div>
    </div>
{/if}