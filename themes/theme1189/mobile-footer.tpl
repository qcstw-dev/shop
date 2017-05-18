</div>
<div class="clearfix"></div>
<!-- id mobile-content-->
</div>
<div id="mobile-footer">
    <div class="col-xs-12 padding-0">
        {$HOOK_MOBILE_FOOTER}
    </div>
    <div class="col-xs-12 text-center">
        <a class="underline" href="{$base_uri}mobile-information">{l s='Information'}</a> - <a class="underline" href="{$base_uri}mobile-information?select=about-us">{l s='About us'}</a> - <a class="underline" href="{$base_uri}mobile-contact-us">{l s='Contact us'}</a>
    </div>
</div>
<script>
    var baseUri = '{$base_uri}';
    var baseDir = '{$content_dir}';
    var token = '{$token}';
    var static_token = '{$token}';
    var hasDeliveryAddress = '';
    var toBeDetermined = true;
    var currencyFormat = {$currency->format};
    var currencySign = '{$currency->sign}';
    var currencyBlank = {$currency->blank};
    var priceDisplayPrecision = {$roundMode};
</script>
{if !isset($mobile_payment)}
    {* call in header*}
    <script type="text/javascript" src="{$base_dir_ssl}js/jquery/jquery-1.11.0.min.js"></script>
{/if}
<script type="text/javascript" src="{$base_dir_ssl}js/jquery/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="{$js_dir}autoload/10-bootstrap.min.js"></script>
<script type="text/javascript" src="{$js_dir}autoload/jquery.magnific-popup.min.js"></script>
<script type="text/javascript" src="{$js_dir}slick/slick.min.js"></script>

<script type="text/javascript" src="{$base_dir_ssl}js/tools.js?{$var_cache}"></script>

<script type="text/javascript" src="{$js_dir}login.js?{$var_cache}"></script>
<script type="text/javascript" src="{$js_dir}mobile-global.js?{$var_cache}"></script>

{if isset($upload)}
    <script type="text/javascript" src="{$js_dir}fileupload/jquery.ui.widget.js"></script>
    <script type="text/javascript" src="{$js_dir}fileupload/jquery.fileupload.js"></script>
    <script type="text/javascript" src="{$js_dir}fileupload/load-image.all.min.js"></script>
    <script type="text/javascript" src="{$js_dir}fileupload/canvas-to-blob.min.js"></script>
    <script type="text/javascript" src="{$js_dir}fileupload/jquery.iframe-transport.js"></script>
    <script type="text/javascript" src="{$js_dir}fileupload/jquery.fileupload-process.js"></script>
    <script type="text/javascript" src="{$js_dir}fileupload/jquery.fileupload-validate.js"></script>
    <script type="text/javascript" src="{$js_dir}fileupload/jquery.fileupload-image.js"></script>
    <script type="text/javascript" src="{$js_dir}fileupload/mobile-custom.js?{$var_cache}"></script>
{/if}
{if isset($layout_maker) && !isset($smarty.get.add_to_cart_success)}
    <script type="text/javascript" src="{$js_dir}layout_maker/component.js?{$var_cache}"></script>
    <script type="text/javascript" src="{$js_dir}layout_maker/mobile-custom.js?{$var_cache}"></script>
{/if}
{if isset($product_list)}
    <script type="text/javascript" src="{$js_dir}noframework.waypoints.min.js"></script>
    <script type="text/javascript" src="{$js_dir}mobile-product-list.js?{$var_cache}"></script>
    <script type="text/javascript" src="{$base_dir_ssl}js/jquery/plugins/fancybox/jquery.fancybox.js"></script>
    <script type="text/javascript" src="{$base_dir_ssl}js/jquery/plugins/jqzoom/jquery.jqzoom.js"></script>
{/if}
{if isset($checkout)}
    <script type="text/javascript" src="{$base_dir_ssl}js/jquery/plugins/jquery.typewatch.js"></script>
    <script type="text/javascript" src="{$js_dir}checkout.js?{$var_cache}"></script>
{/if}
{if isset($checkout) && isset($checkout_step) && $checkout_step == 2}
    <script type="text/javascript" src="{$js_dir}mobile-authentication.js?{$var_cache}"></script>
    <script type="text/javascript" src="{$base_dir_ssl}js/validate.js?{$var_cache}"></script>
{/if}
{if (isset($checkout) && isset($checkout_step) && $checkout_step == 3) || isset($mobile_address)}
    <script type="text/javascript" src="{$js_dir}autoload/15-jquery.uniform-modified.js"></script>
    <script type="text/javascript" src="{$js_dir}tools/vatManagement.js"></script>
    <script type="text/javascript" src="{$js_dir}tools/statesManagement.js"></script>
    <script type="text/javascript" src="{$base_dir_ssl}js/validate.js?{$var_cache}"></script>
{/if}
{if isset($mobile_addresses)}
    <script type="text/javascript" src="{$js_dir}order-address.js?{$var_cache}"></script>
{/if}
{if isset($mobile_shipping)}
    <script type="text/javascript" src="{$js_dir}cart-summary.js?{$var_cache}"></script>
    <script type="text/javascript" src="{$js_dir}order-carrier.js?{$var_cache}"></script>
{/if}
{if isset($mobile_contact)}
    <script type="text/javascript" src="{$js_dir}autoload/15-jquery.uniform-modified.js"></script>
    <script type="text/javascript" src="{$js_dir}contact-form.js?{$var_cache}"></script>
{/if}
{if isset($mobile_identity) || isset($mobile_contact)}
    <script type="text/javascript" src="{$base_dir_ssl}js/validate.js?{$var_cache}"></script>
{/if}
{if (isset($checkout) && isset($checkout_step) && $checkout_step == 5)}
    {literal}
        <script>
            $('.radio-payment').on('change', function () {
                $('.hidden-payment').addClass('hidden');
                $('.hidden-' + $(this).attr('id')).removeClass('hidden');
            });
        </script>
    {/literal}
{/if}
<!-- id mobile-->
</body>