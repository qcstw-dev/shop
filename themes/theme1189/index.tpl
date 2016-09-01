{*{if isset($HOOK_HOME_TAB_CONTENT) && $HOOK_HOME_TAB_CONTENT|trim}*}
    {if isset($HOOK_HOME_TAB) && $HOOK_HOME_TAB|trim}
        <ul id="home-page-tabs" class="nav nav-tabs clearfix">
            {$HOOK_HOME_TAB}
        </ul>
    {/if}
    <div class="tab-content">
        {$HOOK_HOME_TAB_CONTENT}
        {if $aCreations}
            <h4 class="row-title">Last creations</h4>
            {include file="./last-creations.tpl" creations=$aCreations}
        {/if}
        {if $aDesigns}
            <h4 class="row-title">Last Designs</h4>
            {include file="./product-list.tpl" products=$aDesigns}
        {/if}
        {if $aProducts}
            <h4 class="row-title">Last Products</h4>
            {include file="./product-list.tpl" products=$aProducts}
        {/if}
    </div>
{*{/if}*}