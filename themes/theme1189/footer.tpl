{if !isset($content_only) || !$content_only}
</div><!-- #center_column -->
{if isset($left_column_size) && !empty($left_column_size)}
    <div id="left_column" class="column col-xs-12 col-sm-{$left_column_size|intval}">{$HOOK_LEFT_COLUMN}</div>
{/if}
</div><!--.large-left-->
</div><!--.row-->
{if isset($right_column_size) && !empty($right_column_size)}
    <div id="right_column" class="col-xs-12 col-sm-{$right_column_size|intval} column">{$HOOK_RIGHT_COLUMN}</div>
{/if}
</div><!-- .row -->
</div><!-- #columns -->
</div><!-- .columns-container -->
{if isset($HOOK_HOME) && $HOOK_HOME|trim}
    <div class="home-column">
        {$HOOK_HOME}
    </div>
{/if}
{if isset($HOOK_FOOTER)}
    <!-- Footer -->
    <div class="footer-container">
        <footer id="footer"  class="container">
            <div class="row">
                <div id="fb-root"></div>
                <script>(function (d, s, id) {
                        var js, fjs = d.getElementsByTagName(s)[0];
                        if (d.getElementById(id))
                            return;
                        js = d.createElement(s);
                        js.id = id;
                        js.src = "//connect.facebook.net/fr_FR/sdk.js#xfbml=1&version=v2.8";
                        fjs.parentNode.insertBefore(js, fjs);
                    }(document, 'script', 'facebook-jssdk'));</script>
                    <div class="fb-page pull-right margin-top-70 margin-top-xs-10 col-xs-12 padding-0 col-md-3 fb_iframe_widget" data-href="https://www.facebook.com/giftattitude" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/giftattitude" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/giftattitude">Gift Attitude</a></blockquote></div>
                {$HOOK_FOOTER}
            </div>
        </footer>
    </div><!-- #footer -->
{/if}
</div><!-- #page -->
{/if}
{if isset($smarty.get.product) && $smarty.get.product && !isset($smarty.get.design)}
    <script>
        $(function () {
            quick_view_event('{$base_dir_ssl}?controller=productpopup&id_product={$smarty.get.product}');
                });
    </script>
{/if}
{include file="$tpl_dir./global.tpl"}
</body>
</html>