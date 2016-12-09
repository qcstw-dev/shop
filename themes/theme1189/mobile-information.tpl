{include file=$header_mobile}
<div class="col-xs-12">
    <div class="col-xs-12 title-block" data-block="how">
        <span class="glyphicon glyphicon-question-sign"></span> {l s="How do I order"} <span class="glyphicon glyphicon-chevron-down pull-right"></span>
    </div>
    <div class="block-hidden block-how">
        {$how_to_order}
        <style>
            iframe {
                display: none;
            }
        </style>
    </div> 
    <div class="col-xs-12 title-block" data-block="delivery">
        <span class="fa fa-truck"></span> {l s="Delivery information"} <span class="glyphicon glyphicon-chevron-down pull-right"></span>
    </div>
    <div class="block-hidden block-delivery">
        {$delivery}
    </div> 
    <div class="col-xs-12 title-block" data-block="terms">
        <span class="fa fa-pencil-square-o"></span> {l s="Terms and conditions"} <span class="glyphicon glyphicon-chevron-down pull-right"></span>
    </div>
    <div class="block-hidden block-terms">
        {$terms}
    </div> 
    <div class="col-xs-12 title-block" data-block="payment">
        <span class="fa fa-money"></span> <span class="font-size-15">{l s="Payment security and safety"}</span> <span class="glyphicon glyphicon-chevron-down pull-right"></span>
    </div>
    <div class="block-hidden block-payment">
        {$payment}
    </div> 
    <div class="col-xs-12 title-block" data-block="about-us">
        <span class="fa fa-users"></span> {l s="About us"} <span class="glyphicon glyphicon-chevron-down pull-right"></span>
    </div>
    <div class="block-hidden block-about-us">
        {$about_us}
    </div> 
    <div class="col-xs-12 title-block" data-block="sitemap">
        <span class="fa fa-sitemap"></span> {l s="Sitemap"} <span class="glyphicon glyphicon-chevron-down pull-right"></span>
    </div>
    <div id="center_column" class="block-hidden block-sitemap">
        <div class="tree_top">
            <a href="{$base_uri}mobile" title="Home" class="bold margin-left-10"><span class="glyphicon glyphicon-home"></span> {l s='Select products'}</a>
        </div>
        <ul class="tree">
            <li>
                <a class="bold" href="{$base_uri}mobile-designs" title="">{l s='Select design'}</a>
                <ul>
                    {foreach from=$subcategories item=subcategory name=subcategories}
                        <li {if $smarty.foreach.subcategories.last}class="last"{/if}>
                            <a href="{$base_uri}mobile-designs?category={$subcategory.id_category}" title="">{$subcategory.name|escape:'html':'UTF-8'}</a>
                        </li>
                    {/foreach}
                </ul>
            </li>
            <li class="last">
                <a href="{$base_uri}mobile-layout-maker" class="bold" title="">{l s='Place your design on product'}</a>
            </li>
        </ul>
    </div> 
</div>
{if isset($smarty.get.select)}
    <div class="hidden preselected" data-select="{$smarty.get.select}"></div>
{/if}
{include file=$footer_mobile}