{if $aSelectedProducts}
    <div class="layout-container">
        <div class="hidden-uploader">
            <input class="fileupload hidden-fileupload" type="file" name="files[]" multiple>
        </div>
        <div class="clearfix"></div>
        <div class="btn-cart col-lg-3 padding-0">
            <button id="add-to-cart" class="btn btn-primary add-to-cart ajax_add_to_cart_button col-xs-12" 
                    rel="nofollow" title="{l s='Add to cart'}"
                    data-id-product=""
                    data-id-design=""
                    data-minimal_quantity="1"
                    data-picture-url=""
                    data-custom-picture=""
                    data-original-picture=""
                    style="display: none">{l s='Add to cart'}</button>
            <button class="btn btn-default preview-layout margin-top-10 col-xs-12" style="display: none" ><span class="glyphicon glyphicon-eye-open"></span> Preview</button>
            <div class="change-color-product-block text-left col-xs-12 background-white position-absolute border padding-10" style="display: none">
                <div class="col-xs-12 col-sm-4 col-lg-12 padding-0 border text-center margin-bottom-10 background-dark-grey block-item-size" style="display: none">
                    <div class="col-xs-6">
                        Item size:
                    </div>
                    <div class="col-xs-6 background-white info-item-size"></div>
                </div>
                <div class="clearfix"></div>
                <div class="col-xs-12 col-sm-4 col-lg-12 padding-0 border text-center margin-bottom-10 background-dark-grey block-design-size" style="display: none">
                    <div class="col-xs-6">
                        Design size:
                    </div>
                    <div class="col-xs-6 background-white info-design-size"></div>
                </div>
                <div class="preview-color" style="display: none">
                    <div class="col-xs-12 padding-0 border overflow-auto">
                        <h4 class="padding-md-10">Colors available:</h4>
                        <div class="block-colors">
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>                
        <div class="btn-rotate rotate">
            <div class="glyphicon glyphicon-repeat font-size-30"></div>
            <div class="bold margin-top-5">Rotate 90°</div>
        </div>
        <div id="component" class="component margin-bottom-10">
            <div class="overlay">
                <div class="overlay-inner">
                    <img class="overlay-img" src="">
                </div>
            </div>
            <img id="image" class="resize-image dash" src="{$img_dir}layout_maker/drag-and-drop.png" />
            <img class="hidden-original-picture hidden" scr="{$img_dir}layout_maker/drag-and-drop.png" />
        </div>
    </div>
{else}
    <div class="col-xs-12 alert alert-info margin-top-10 text-center">
        <p>First you have to select at least one product, then you can comeback on this page to customize it</p>
        <p>
            <a class="btn btn-default border-blue" href="45-products"><span class="glyphicon glyphicon-search"></span> Go to product selection</a>
        </p>
    </div>
{/if}
<script>
    $(document).ready(function () {
    {if $preselected_product}
        $('.list-item-{$preselected_product}').trigger('click');
    {else}
        $('.list-item-product').first().trigger('click');
    {/if}
    {if $preselected_design}
        {if strpos($preselected_design, '_') == false}
        $('.list-item-{$preselected_design}').trigger('click');
        {else}
        $('.id_{$preselected_design}').trigger('click');
        {/if}
    {else}
        $('.list-item-design').first().trigger('click');
    {/if}
    });
</script>