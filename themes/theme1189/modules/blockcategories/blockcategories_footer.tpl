<!-- Block categories module -->
<section class="blockcategories_footer footer-block col-xs-12">
    <h4>{l s='Categories' mod='blockcategories'}</h4>
    <div class="category_footer toggle-footer">
        <div class="list">
            <ul class="tree {if $isDhtml}dhtml{/if}">
                {foreach from=$blockCategTree.children item=child name=blockCategTree}
                    {if $smarty.foreach.blockCategTree.last}
                        {include file="$branche_tpl_path" node=$child last='true'}
                    {else}
                        {include file="$branche_tpl_path" node=$child}
                    {/if}

                    {if ($smarty.foreach.blockCategTree.iteration mod $numberColumn) == 0 AND !$smarty.foreach.blockCategTree.last}
                    </ul>
                </div>
            </div> <!-- .category_footer -->

            <div class="category_footer">
                <div class="list">
                    <ul class="tree {if $isDhtml}dhtml{/if}">
                    {/if}
                {/foreach}
                <li>
                    <a href="/new-products" title="New products">
                        New products
                    </a>
                </li>
                <li>
                    <a href="/best-sales" title="Top sellers">
                        Top sellers
                    </a>
                </li>
            </ul>
        </div>
    </div> <!-- .category_footer -->
</section>
<!-- /Block categories module -->
