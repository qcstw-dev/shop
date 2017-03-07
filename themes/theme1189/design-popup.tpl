<div class="col-xs-12 margin-top-10">
    <div class="col-xs-12">
        {assign var="isInSelection" value="{($selection && in_array($product->id, $selection))}"}
        <div class="btn btn-default selection margin-bottom-10 product-{$product->id} pull-right"
             data-product-link="{$product->getLink()|escape:'html':'UTF-8'}" 
             data-img="{$link->getImageLink($product->link_rewrite, $product->image.id_image, 'tm_home_default')|escape:'html':'UTF-8'}" 
             data-img-large="{$link->getImageLink($product->link_rewrite, $product->image.id_image, 'tm_thickbox_default')|escape:'html':'UTF-8'}" 
             data-id="{$product->id}" 
             data-product-title="{$product->name}" 
             data-type="design"
             data-text-add="{l s='Add to selection'}" 
             data-text-remove="{l s='Remove from selection'}">
            <span class="glyphicon glyphicon-{if !$isInSelection}plus{else}minus{/if}-sign"></span> <span class="text">{if !$isInSelection} {l s='Add to selection'} {else} {l s='Remove from selection'}{/if}</span>
        </div>
        <div class="clearfix"></div>
        <div class="thumbnail">
            <img src="{$link->getImageLink($product->link_rewrite, $cover.id_image, 'tm_large_default')|escape:'html':'UTF-8'}" alt="" title="" />
        </div>
    </div>
</div>