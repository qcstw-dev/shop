{include file=$header_mobile}
<div id="mobile-design">
    {if isset($smarty.get.categories)}
        {include file="./mobile-categories.tpl"}
    {elseif isset($smarty.get.category) && $smarty.get.category}
        {include file="./mobile-design-list.tpl"}
    {else}
        {include file="./mobile-choice-design.tpl"}
    {/if}
</div>
            
{include file=$footer_mobile}