</div>
<div class="clearfix"></div>
<!-- id mobile-content-->
</div>
<div id="mobile-footer">
    {$HOOK_MOBILE_FOOTER}
</div>
<script>
    var baseUri = '{$base_uri}';
    var baseDir = '{$content_dir}';
    var token = '{$token}';
    var static_token = '{$token}';
    var hasDeliveryAddress = '';
    var toBeDetermined = true;
</script>
{if !isset($mobile_payment)}
    {* call in header*}
    <script type="text/javascript" src="{$base_dir_ssl}js/jquery/jquery-1.11.0.min.js"></script>
{/if}
<script type="text/javascript" src="{$base_dir_ssl}js/jquery/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="{$js_dir}autoload/10-bootstrap.min.js"></script>
<script type="text/javascript" src="{$js_dir}autoload/jquery.magnific-popup.min.js"></script>
<script type="text/javascript" src="{$js_dir}slick/slick.min.js"></script>

<script type="text/javascript" src="{$base_dir_ssl}js/tools.js"></script>
{*<script type="text/javascript" src="{$base_dir_ssl}modules/tmheaderaccount/js/front.js"></script>*}

<script type="text/javascript" src="{$js_dir}mobile-login.js"></script>
<script type="text/javascript" src="{$js_dir}mobile-global.js"></script>

{if isset($upload)}
    <script type="text/javascript" src="{$js_dir}fileupload/jquery.ui.widget.js"></script>
    <script type="text/javascript" src="{$js_dir}fileupload/jquery.fileupload.js"></script>
    <script type="text/javascript" src="{$js_dir}fileupload/load-image.all.min.js"></script>
    <script type="text/javascript" src="{$js_dir}fileupload/canvas-to-blob.min.js"></script>
    <script type="text/javascript" src="{$js_dir}fileupload/jquery.iframe-transport.js"></script>
    <script type="text/javascript" src="{$js_dir}fileupload/jquery.fileupload-process.js"></script>
    <script type="text/javascript" src="{$js_dir}fileupload/jquery.fileupload-validate.js"></script>
    <script type="text/javascript" src="{$js_dir}fileupload/jquery.fileupload-image.js"></script>
    <script type="text/javascript" src="{$js_dir}fileupload/mobile-custom.js"></script>
{/if}
{if isset($layout_maker)}
    <script type="text/javascript" src="{$js_dir}layout_maker/component.js"></script>
    <script type="text/javascript" src="{$js_dir}layout_maker/mobile-custom.js"></script>
{/if}
{if isset($product_list)}
    <script type="text/javascript" src="{$js_dir}mobile-product-list.js"></script>
{/if}
{if isset($checkout)}
    <script type="text/javascript" src="{$base_dir_ssl}js/jquery/plugins/jquery.typewatch.js"></script>
    <script type="text/javascript" src="{$js_dir}mobile-checkout.js"></script>
{/if}
{if isset($checkout) && isset($checkout_step) && $checkout_step == 2}
    <script type="text/javascript" src="{$js_dir}mobile-authentication.js"></script>
    <script type="text/javascript" src="{$base_dir_ssl}js/validate.js"></script>
{/if}
{if (isset($checkout) && isset($checkout_step) && $checkout_step == 3) || isset($mobile_address)}
    <script type="text/javascript" src="{$js_dir}autoload/15-jquery.uniform-modified.js"></script>
    <script type="text/javascript" src="{$js_dir}tools/vatManagement.js"></script>
    <script type="text/javascript" src="{$js_dir}tools/statesManagement.js"></script>
    <script type="text/javascript" src="{$base_dir_ssl}js/validate.js"></script>
{/if}
{if isset($mobile_addresses)}
    <script type="text/javascript" src="{$js_dir}order-address.js"></script>
{/if}
{if isset($mobile_shipping)}
    <script type="text/javascript" src="{$js_dir}cart-summary.js"></script>
    <script type="text/javascript" src="{$js_dir}order-carrier.js"></script>
{/if}
{if isset($mobile_contact)}
    <script type="text/javascript" src="{$js_dir}autoload/15-jquery.uniform-modified.js"></script>
    <script type="text/javascript" src="{$js_dir}contact-form.js"></script>
{/if}
{if isset($mobile_identity) || isset($mobile_contact)}
    <script type="text/javascript" src="{$base_dir_ssl}js/validate.js"></script>
{/if}
<!-- id mobile-->
</body>