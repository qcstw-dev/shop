<h1 class="row-title">SHOP</h1>
<div class="col-xs-2 margin-top-20 padding-top-10 border shadow">
    <div class="bold font-size-20">Design category:</div>
    <ul>
        {foreach from=$design_categories item='design_category'}
            <li>
                <label class="checkbox cursor-pointer"><input class="filter" data-type="design" value="{$design_category.id}" type="checkbox" {if isset($criteria.id_cat_design) && ((is_array($criteria.id_cat_design) && in_array($design_category.id, $criteria.id_cat_design)) || $design_category.id == $criteria.id_cat_design)}checked{/if}/> {$design_category.name}</label>
            </li>
        {/foreach}
    </ul>
    <div class="bold font-size-20 margin-top-20">Product type:</div>
    <ul>
        {foreach from=$product_categories item='product_category'}
            <li>
                <label class="checkbox cursor-pointer"><input class="filter" data-type="product"  value="{$product_category.id_category}" type="checkbox" {if isset($criteria.id_cat_prod) && ((is_array($criteria.id_cat_prod) && in_array($product_category.id_category, $criteria.id_cat_prod)) || $product_category.id_category == $criteria.id_cat_prod)}checked{/if}/> {$product_category.name}</label>
            </li>
        {/foreach}
    </ul>
</div>
<div class="col-xs-10">
    {include file=$creations_list}
</div>