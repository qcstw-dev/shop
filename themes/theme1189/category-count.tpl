{strip}
    <span class="heading-counter">
        {if (isset($category) && $category->id == 1) OR (isset($nb_products) && $nb_products == 0)}
            {if in_array($category->id_parent, ['2', '45']) && $category->name != "Designs"}
                {l s='There are no products in this category.'}
            {elseif in_array($category->id_parent, ['2', '46']) && $category->name != "Products"}
                {l s='There are no designs in this category.'}
            {/if}
        {else}
            {if isset($nb_products) && $nb_products == 1}
                {if in_array($category->id_parent, ['2', '45']) && $category->name != "Designs"}
                    {l s='There is 1 product.'}
                {elseif in_array($category->id_parent, ['2', '46']) && $category->name != "Products"}
                    {l s='There is 1 design.'}
                {/if}
            {elseif isset($nb_products)}
                {if in_array($category->id_parent, ['2', '45']) && $category->name != "Designs"}
                    {l s='There are %d products.' sprintf=$nb_products}
                {elseif in_array($category->id_parent, ['2', '46']) && $category->name != "Products"}
                    {l s='There are %d designs.' sprintf=$nb_products}
                {/if}
            {/if}
        {/if}
    </span>
{/strip}