</div>
<!-- id mobile-content-->
<div id="mobile-footer">
    footer
</div>
<script>
    var baseDir = '{$content_dir}';
    var baseUri = '{$base_uri}';
    var token = '{$token}';
    var static_token = '{$token}';
</script>
<script type="text/javascript" src="{$base_dir_ssl}js/jquery/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="{$base_dir_ssl}js/jquery/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="{$js_dir}autoload/10-bootstrap.min.js"></script>
<script type="text/javascript" src="{$js_dir}autoload/jquery.magnific-popup.min.js"></script>
<script type="text/javascript" src="{$js_dir}slick/slick.min.js"></script>

<script type="text/javascript" src="{$base_dir_ssl}js/tools.js"></script>
<script type="text/javascript" src="{$base_dir_ssl}modules/tmheaderaccount/js/front.js"></script>
<script type="text/javascript" src="{$js_dir}modules/blockcart/ajax-cart.js"></script>

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
</div>
<!-- id mobile-->
</body>