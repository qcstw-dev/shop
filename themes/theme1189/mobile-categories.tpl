<div class="col-xs-12">
    <a href="{$base_uri}mobile-designs" class="btn btn-default"><span class="glyphicon glyphicon-chevron-left"></span> {l s='Back'}</a>
    <div class="row margin-top-20">
        {foreach from=$subcategories item=subcategory}
            <div class="col-xs-6 col-sm-3 col-md-2 margin-bottom-10">
                <a href="{$base_uri}mobile-designs?category={$subcategory.id_category}" title="{$subcategory.name|escape:'html':'UTF-8'}" class="img">
                    <div class="col-xs-12 thumbnail">
                        {if $subcategory.id_image}
                            <img class="" src="{$link->getCatImageLink($subcategory.link_rewrite, $subcategory.id_image, 'tm_medium_default')|escape:'html':'UTF-8'}" alt="{$subcategory.name|escape:'html':'UTF-8'}" />
                        {else}
                            <img class="" src="{$img_cat_dir}{$lang_iso}-default-medium_default.jpg" alt="" width="{$mediumSize.width}" height="{$mediumSize.height}" />
                        {/if}
                        <h5 class="bold text-center padding-top-5 margin-bottom-5 border-top">
                            <a class="subcategory-name" href="{$link->getCategoryLink($subcategory.id_category, $subcategory.link_rewrite)|escape:'html':'UTF-8'}" title="{$subcategory.name|truncate:25:'...'|escape:'html':'UTF-8'|truncate:50}">{$subcategory.name|truncate:25:'...'|escape:'html':'UTF-8'}</a>
                        </h5>
                    </div>
                </a>
            </div>
        {/foreach}
    </div>
</div>