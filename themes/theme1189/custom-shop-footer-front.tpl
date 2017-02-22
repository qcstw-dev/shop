</div><!-- content-admin -->
</div><!-- container -->
<div class="col-xs-12 border-top border-bottom padding-10 background-light">
    <div class="container background-light">
        <div class="col-xs-11">
            <div class="bold">
                Website short description:
            </div>
            <div>
                {$shop.description}
            </div>
        </div>
        <div class="col-xs-1 padding-0">
            {if $shop.facebook}
                <div class="pull-left margin-right-10"><a href="{$shop.facebook}" target="_blank" class="fa fa-facebook-square font-size-30"></a></div>
                {/if}
                {if $shop.twitter}
                <div class="pull-left margin-right-10"><a href="{$shop.twitter}" target="_blank" class="fa fa-twitter-square font-size-30"></a></div>
                {/if}
        </div>
    </div>
</div>
<div class="col-xs-12 margin-bottom-10 border-bottom bold">
    <div class="container">
        <div class="col-sm-4 padding-0">
            <div class="thumbnail padding-0 border-none margin-bottom-0">
                <img src="{$base_dir}img/credit-cards.png" alt="payment logo" title="payment logo" />
            </div>
        </div>
        <div class="col-sm-3 text-center padding-top-10">
            <div class="popup-cms-content cursor-pointer" data-page="terms">Terms & Conditions</div>
        </div>
        <div class="col-sm-3 text-center padding-top-10">
            <div class="btn-contact cursor-pointer" data-page="contactus">Contact us</div>
        </div>
        <div class="col-sm-2 text-center">
            <div class="col-xs-6 padding-top-10">Shipping:</div><div class="col-xs-6 thumbnail margin-bottom-0 border-none"><img src="{$base_dir}img/EMS.jpg" alt="EMS - Express mail service" title="EMS - Express mail service" /></div>
        </div>
    </div>
</div>
<div class="footer">
</div>
<script>
    var baseUri = '{$base_uri}';
    var baseDir = '{$content_dir}';
</script>
<script type="text/javascript" src="{$base_dir_ssl}js/jquery/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="{$base_dir_ssl}js/jquery/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="{$js_dir}autoload/10-bootstrap.min.js"></script>
<script type="text/javascript" src="{$js_dir}autoload/jquery.magnific-popup.min.js"></script>
<script type="text/javascript" src="{$base_dir_ssl}js/jquery/plugins/fancybox/jquery.fancybox.js"></script>
<script type="text/javascript" src="{$base_dir_ssl}js/jquery/plugins/jqzoom/jquery.jqzoom.js"></script>
<script src='https://www.google.com/recaptcha/api.js'></script>
<script type="text/javascript" src="{$js_dir}custom-shop.js"></script>
<script type="text/javascript" src="{$js_dir}custom-shop-front.js"></script>
</body>