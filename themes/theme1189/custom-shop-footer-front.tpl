</div><!-- content-admin -->
</div><!-- container -->
<div class="col-xs-12 margin-top-20 border-top border-bottom padding-10 background-light">
    <div class="container background-light">
        <div class="col-xs-10">
            {if $shop.website}
                <div>
                    <span class="bold">Website:</span> <a href="{if !(strpos($shop['website'], 'http') == false || strpos($shop['website'], 'https') == false)}http://{/if}{$shop.website}" class="underline" target="_blank" title="{$shop.title}">{$shop.website}</a>
                </div>
            {/if}
            <div class="bold">
                Website short description:
            </div>
            <div>
                {$shop.description}
            </div>
        </div>
        <div class="col-xs-2 padding-0">
            {if $shop.facebook}
                <div class="pull-left margin-right-10"><a href="{$shop.facebook}" target="_blank" class="fa fa-facebook-square font-size-30"></a></div>
                {/if}
                {if $shop.twitter}
                <div class="pull-left margin-right-10"><a href="{$shop.twitter}" target="_blank" class="fa fa-twitter-square font-size-30"></a></div>
                {/if}
                {if $shop.instagram}
                <div class="pull-left margin-right-10"><a href="{$shop.instagram}" target="_blank" class="fa fa-instagram font-size-30"></a></div>
                {/if}
                {if $shop.linkedin}
                <div class="pull-left margin-right-10"><a href="{$shop.linkedin}" target="_blank" class="fa fa-linkedin-square font-size-30"></a></div>
                {/if}
                {if $shop.pinterest}
                <div class="pull-left margin-right-10"><a href="{$shop.pinterest}" target="_blank" class="fa fa-pinterest-square font-size-30"></a></div>
                {/if}
        </div>
    </div>
</div>
<div class="col-xs-12 margin-bottom-10 border-bottom bold">
    <div class="container">
        <div class="col-sm-2 padding-0">
            <div class="thumbnail padding-0 border-none margin-bottom-0">
                <img src="{$base_dir_ssl}img/credit-cards.png" alt="payment logo" title="payment logo" />
            </div>
        </div>
        <div class="col-sm-3 text-center padding-top-10">
            <div class="popup-cms-content cursor-pointer" data-page="terms">Terms & Conditions</div>
        </div>
        <div class="col-sm-2 text-center padding-top-10">
            <div class="btn-contact cursor-pointer" data-page="contactus">Contact us</div>
        </div>
        <div class="col-sm-2 text-center">
            <div class="col-xs-6 padding-top-10">Shipping:</div><div class="col-xs-6 thumbnail margin-bottom-0 border-none"><img src="{$base_dir_ssl}img/EMS.jpg" alt="EMS - Express mail service" title="EMS - Express mail service" /></div>
        </div>
        <div class="col-sm-3 padding-0 text-center padding-top-10">
            Website powered by Gift attitude
        </div>
    </div>
</div>
<script>
    var baseUri = '{$base_uri}';
    var baseDir = '{$content_dir}';
    var token = '{$token}';
    var static_token = '{$token}';
    var hasDeliveryAddress = '';
    var toBeDetermined = true;
    var custom_shop_name = '{$shop.name}';
    var custom_shop_id = '{$shop.id}';
    var currencyFormat = {$currency->format};
    var currencySign = '{$currency->sign}';
    var currencyBlank = {$currency->blank};
    var priceDisplayPrecision = {$roundMode};
</script>
<script type="text/javascript" src="{$base_dir_ssl}js/jquery/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="{$base_dir_ssl}js/jquery/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="{$js_dir}autoload/10-bootstrap.min.js"></script>
<script type="text/javascript" src="{$js_dir}autoload/jquery.magnific-popup.min.js"></script>
<script type="text/javascript" src="{$base_dir_ssl}js/jquery/plugins/fancybox/jquery.fancybox.js"></script>
<script type="text/javascript" src="{$base_dir_ssl}js/jquery/plugins/jqzoom/jquery.jqzoom.js"></script>
<script type="text/javascript" src="{$js_dir}custom-shop.js"></script>
<script type="text/javascript" src="{$js_dir}custom-shop-front.js"></script>

<script type="text/javascript" src="{$base_dir_ssl}js/tools.js"></script>

{*{if $smarty.server.HTTP_HOST != 'localhost'}
    <script src='https://www.google.com/recaptcha/api.js'></script>
{/if}*}

{if isset($checkout)}
    <script type="text/javascript" src="{$base_dir_ssl}js/jquery/plugins/jquery.typewatch.js"></script>
    <script type="text/javascript" src="{$js_dir}checkout.js"></script>
{/if}
{if isset($checkout) && isset($checkout_step) && $checkout_step == 2}
    <script type="text/javascript" src="{$js_dir}login.js"></script>
    <script type="text/javascript" src="{$js_dir}custom-shop-authentication.js"></script>
    <script type="text/javascript" src="{$base_dir_ssl}js/validate.js"></script>
{/if}
{if (isset($checkout) && isset($checkout_step) && $checkout_step == 3) || isset($custom_shop_address)}
    <script type="text/javascript" src="{$js_dir}autoload/15-jquery.uniform-modified.js"></script>
    <script type="text/javascript" src="{$js_dir}tools/vatManagement.js"></script>
    <script type="text/javascript" src="{$js_dir}tools/statesManagement.js"></script>
    <script type="text/javascript" src="{$base_dir_ssl}js/validate.js"></script>
{/if}
{if isset($custom_shop_addresses)}
    <script type="text/javascript" src="{$js_dir}order-address.js"></script>
{/if}
{if isset($custom_shop_shipping)}
    <script type="text/javascript" src="{$js_dir}cart-summary.js"></script>
    <script type="text/javascript" src="{$js_dir}order-carrier.js"></script>
{/if}
{if isset($custom_shop_contact)}
    <script type="text/javascript" src="{$js_dir}autoload/15-jquery.uniform-modified.js"></script>
    <script type="text/javascript" src="{$js_dir}contact-form.js"></script>
{/if}
{if isset($custom_shop_identity) || isset($custom_shop_contact)}
    <script type="text/javascript" src="{$base_dir_ssl}js/validate.js"></script>
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
{if isset($paypal)}
    {literal}
        <script>
            $(document).ready(function () {
                $('#paypal_process_payment').click(function () {
                    $('#paypal_payment_form_payment').submit();
                })
            });
        </script>
    {/literal}

{/if}
</body>