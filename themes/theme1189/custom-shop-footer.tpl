</div><!-- content-admin -->
</div><!-- container -->
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
<script type="text/javascript" src="{$js_dir}custom-shop-admin.js"></script>
{if in_array($page_name, ['customshopadmincreationpicture'])}
    <script type="text/javascript" src="{$js_dir}fileupload/jquery.ui.widget.js"></script>
    <script type="text/javascript" src="{$js_dir}fileupload/canvas-to-blob.min.js"></script>
    <script type="text/javascript" src="{$js_dir}fileupload/load-image.all.min.js"></script>
    <script type="text/javascript" src="{$js_dir}fileupload/jquery.fileupload.js"></script>
    <script type="text/javascript" src="{$js_dir}fileupload/jquery.iframe-transport.js"></script>
    <script type="text/javascript" src="{$js_dir}fileupload/jquery.fileupload-process.js"></script>
    <script type="text/javascript" src="{$js_dir}fileupload/jquery.fileupload-validate.js"></script>
    <script type="text/javascript" src="{$js_dir}fileupload/jquery.fileupload-image.js"></script>
    <script type="text/javascript" src="{$js_dir}custom-shop-creation-picture.js"></script>
{/if}
{if in_array($page_name, ['customshopadmincreationlayoutmaker'])}
    <script type="text/javascript" src="{$js_dir}slick/slick.min.js"></script>
    <script type="text/javascript" src="{$js_dir}layout_maker/component.js"></script>
    <script type="text/javascript" src="{$js_dir}layout_maker/custom-shop-layout-maker.js"></script>
    <script type="text/javascript" src="{$base_dir_ssl}js/jquery/plugins/fancybox/jquery.fancybox.js"></script>
    <script type="text/javascript" src="{$base_dir_ssl}js/jquery/plugins/jqzoom/jquery.jqzoom.js"></script>
{/if}
{if $page_name == 'customshopregister'}
<script type="text/javascript" src="{$js_dir}custom-shop-register.js"></script>
{/if}
</body>