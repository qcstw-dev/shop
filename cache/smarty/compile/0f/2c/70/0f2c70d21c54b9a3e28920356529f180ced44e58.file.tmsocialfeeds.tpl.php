<?php /* Smarty version Smarty-3.1.19, created on 2016-07-29 09:09:42
         compiled from "C:\wamp64\www\shop\themes\theme1189\modules\tmsocialfeeds\views\templates\hook\tmsocialfeeds.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2166579b01369000b6-69846246%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0f2c70d21c54b9a3e28920356529f180ced44e58' => 
    array (
      0 => 'C:\\wamp64\\www\\shop\\themes\\theme1189\\modules\\tmsocialfeeds\\views\\templates\\hook\\tmsocialfeeds.tpl',
      1 => 1469775910,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2166579b01369000b6-69846246',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'hook_content' => 0,
    'hook_name' => 0,
    'content' => 0,
    'global_twitter' => 0,
    'module_dir' => 0,
    'global_twitter_id' => 0,
    'global_facebook' => 0,
    'global_facebook_id' => 0,
    'global_pinterest' => 0,
    'global_pinterest_id' => 0,
    'global_instagram' => 0,
    'global_instagram_type' => 0,
    'global_instagram_tag' => 0,
    'global_instagram_id' => 0,
    'limit' => 0,
    'global_instagram_userid' => 0,
    'global_instagram_token' => 0,
    'global_instagram_username' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_579b0136e66fe1_10699525',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_579b0136e66fe1_10699525')) {function content_579b0136e66fe1_10699525($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_escape')) include 'C:\\wamp64\\www\\shop\\tools\\smarty\\plugins\\modifier.escape.php';
?><?php if ($_smarty_tpl->tpl_vars['hook_content']->value) {?>
	
    <div class="socialfeedblock <?php echo $_smarty_tpl->tpl_vars['hook_name']->value;?>
 <?php if ($_smarty_tpl->tpl_vars['hook_name']->value=='footer') {?>col-sm-5 col-md-4 col-lg-3<?php }?>">
    	<?php if ($_smarty_tpl->tpl_vars['hook_name']->value=='home') {?>
        	<h4 class="title_block"><a href="#" class="tmsocials_button active"><?php echo smartyTranslate(array('s'=>'Folow Us','mod'=>'tmsocialfeeds'),$_smarty_tpl);?>
</a></h4>
		<?php } elseif ($_smarty_tpl->tpl_vars['hook_name']->value=='left_column'||$_smarty_tpl->tpl_vars['hook_name']->value=='right_column') {?>
        	<h4 class="title_block"><?php echo smartyTranslate(array('s'=>'Folow Us','mod'=>'tmsocialfeeds'),$_smarty_tpl);?>
</h4>
        <?php }?>
    	<div class="row hook_<?php echo $_smarty_tpl->tpl_vars['hook_name']->value;?>
<?php if ($_smarty_tpl->tpl_vars['hook_name']->value=='left_column'||$_smarty_tpl->tpl_vars['hook_name']->value=='right_column') {?> block_content<?php }?>">
            <?php  $_smarty_tpl->tpl_vars['content'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['content']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['hook_content']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']['myLoop']['iteration']=0;
foreach ($_from as $_smarty_tpl->tpl_vars['content']->key => $_smarty_tpl->tpl_vars['content']->value) {
$_smarty_tpl->tpl_vars['content']->_loop = true;
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']['myLoop']['iteration']++;
?>
            	<div class="item_<?php echo $_smarty_tpl->getVariable('smarty')->value['foreach']['myLoop']['iteration'];?>
<?php if ($_smarty_tpl->tpl_vars['content']->value['hook']=='home') {?> col-md-6 col-lg-3 col-xs-12<?php } else { ?> col-xs-12<?php }?>">
                    <?php if ($_smarty_tpl->tpl_vars['content']->value['item_type']=='twitter'&&$_smarty_tpl->tpl_vars['global_twitter']->value) {?>
                        <div class="twitter-socialfeed">
                            <script type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['module_dir']->value;?>
js/widget.js"></script>
                        <a class="twitter-timeline"
                            href="https://twitter.com/twitterapi"
                            data-widget-id="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['global_twitter_id']->value, ENT_QUOTES, 'UTF-8', true);?>
"
                              
                            <?php if (isset($_smarty_tpl->tpl_vars['content']->value['item_theme'])&&$_smarty_tpl->tpl_vars['content']->value['item_theme']) {?>
                                data-theme="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['content']->value['item_theme'], ENT_QUOTES, 'UTF-8', true);?>
"
                            <?php }?>
                              
                            <?php if (isset($_smarty_tpl->tpl_vars['content']->value['item_width'])&&$_smarty_tpl->tpl_vars['content']->value['item_width']) {?>
                                width="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['content']->value['item_width'], 'intval');?>
"
                            <?php }?>
                              
                            <?php if (isset($_smarty_tpl->tpl_vars['content']->value['item_height'])&&$_smarty_tpl->tpl_vars['content']->value['item_height']) {?>
                                height="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['content']->value['item_height'], 'intval');?>
"
                            <?php }?>
                              
                            data-chrome="<?php if (!$_smarty_tpl->tpl_vars['content']->value['item_header']) {?>noheader<?php }?> <?php if (!$_smarty_tpl->tpl_vars['content']->value['item_footer']) {?>nofooter<?php }?> <?php if (!$_smarty_tpl->tpl_vars['content']->value['item_border']) {?>noborder<?php }?> <?php if (!$_smarty_tpl->tpl_vars['content']->value['item_scroll']) {?>noscrollbar<?php }?> <?php if (!$_smarty_tpl->tpl_vars['content']->value['item_background']) {?>transparent<?php }?>"
                            
                            
                            data-show-replies="<?php if ($_smarty_tpl->tpl_vars['content']->value['item_replies']==1) {?>true<?php } else { ?>false<?php }?>"
                              
                            <?php if (isset($_smarty_tpl->tpl_vars['content']->value['item_limit'])&&$_smarty_tpl->tpl_vars['content']->value['item_limit']) {?>
                                data-tweet-limit="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['content']->value['item_limit'], 'intval');?>
"
                            <?php }?>> </a>
                        </div>
                    <?php } elseif ($_smarty_tpl->tpl_vars['content']->value['item_type']=='facebook'&&$_smarty_tpl->tpl_vars['global_facebook']->value) {?>
                        <div class="facebook-socialfeed">
                            <script type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['module_dir']->value;?>
js/facebook.js"></script>
                            <div id="fb-root"></div>
                            <div class="fb-like-box"
                                
                                data-href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['global_facebook_id']->value, ENT_QUOTES, 'UTF-8', true);?>
"
                                
                                <?php if (isset($_smarty_tpl->tpl_vars['content']->value['item_width'])&&$_smarty_tpl->tpl_vars['content']->value['item_width']) {?>
                                    data-width="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['content']->value['item_width'], 'intval');?>
"
                                <?php }?>
                                
                                <?php if (isset($_smarty_tpl->tpl_vars['content']->value['item_height'])&&$_smarty_tpl->tpl_vars['content']->value['item_height']) {?>
                                    data-height="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['content']->value['item_height'], 'intval');?>
"
                                <?php }?>
                                
                                <?php if (isset($_smarty_tpl->tpl_vars['content']->value['item_theme'])&&$_smarty_tpl->tpl_vars['content']->value['item_theme']) {?> 
                                    data-colorscheme="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['content']->value['item_theme'], ENT_QUOTES, 'UTF-8', true);?>
"
                                <?php }?>
                                
                                data-show-faces="<?php if ($_smarty_tpl->tpl_vars['content']->value['item_replies']==1) {?>true<?php } else { ?>false<?php }?>"
                                
                                data-header="<?php if ($_smarty_tpl->tpl_vars['content']->value['item_header']) {?>true<?php } else { ?>false<?php }?>"
                                
                                data-stream="<?php if ($_smarty_tpl->tpl_vars['content']->value['item_scroll']) {?>true<?php } else { ?>false<?php }?>"
                                
                                data-show-border="<?php if ($_smarty_tpl->tpl_vars['content']->value['item_border']) {?>true<?php } else { ?>false<?php }?>"
                            ></div>
                         </div>
                    <?php } elseif ($_smarty_tpl->tpl_vars['content']->value['item_type']=='pinterest'&&$_smarty_tpl->tpl_vars['global_pinterest']->value) {?>
                        <div class="pinterest-socialfeed">
                            <script type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['module_dir']->value;?>
js/pinterest.js"></script>
                            <a 
                                data-pin-do="embedUser"
                               
                                href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['global_pinterest_id']->value, ENT_QUOTES, 'UTF-8', true);?>
"
                               
                                <?php if (isset($_smarty_tpl->tpl_vars['content']->value['item_col_width'])&&$_smarty_tpl->tpl_vars['content']->value['item_col_width']) {?> 
                                    data-pin-scale-width="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['content']->value['item_col_width'], 'intval');?>
"
                                <?php }?>
                                
                                <?php if (isset($_smarty_tpl->tpl_vars['content']->value['item_height'])&&$_smarty_tpl->tpl_vars['content']->value['item_height']) {?>
                                    data-pin-scale-height="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['content']->value['item_height'], 'intval');?>
"
                                <?php }?>
                                
                                <?php if (isset($_smarty_tpl->tpl_vars['content']->value['item_width'])&&$_smarty_tpl->tpl_vars['content']->value['item_width']) {?>
                                    data-pin-board-width ="<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['content']->value['item_width'], 'intval');?>
"
                                <?php }?>
                            ></a>
                         </div>
                    <?php } elseif ($_smarty_tpl->tpl_vars['content']->value['item_type']=='instagram'&&$_smarty_tpl->tpl_vars['global_instagram']->value) {?>
                        <?php if ($_smarty_tpl->tpl_vars['content']->value['item_limit']&&$_smarty_tpl->tpl_vars['content']->value['item_limit']!='') {?><?php $_smarty_tpl->tpl_vars["limit"] = new Smarty_variable($_smarty_tpl->tpl_vars['content']->value['item_limit'], null, 0);?><?php } else { ?><?php $_smarty_tpl->tpl_vars["limit"] = new Smarty_variable(20, null, 0);?><?php }?>
                        
                        <script type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['module_dir']->value;?>
js/instafeed.js"></script>
                        <?php if ($_smarty_tpl->tpl_vars['global_instagram_type']->value=='tagged') {?>
                            <script type="text/javascript">
                                var feed = new Instafeed({
                                    get: 'tagged',
                                    target: 'instafeed_<?php echo $_smarty_tpl->tpl_vars['content']->value['hook'];?>
',
                                    tagName: '<?php echo $_smarty_tpl->tpl_vars['global_instagram_tag']->value;?>
',
                                    clientId: '<?php echo $_smarty_tpl->tpl_vars['global_instagram_id']->value;?>
',
                                    limit:<?php echo $_smarty_tpl->tpl_vars['limit']->value;?>
,
                                    sortBy: 'most-recent'
                                });
                                feed.run();
                            </script>
                        <?php } else { ?>
                            <script type="text/javascript">
                                var feed = new Instafeed({
                                    userId:<?php echo $_smarty_tpl->tpl_vars['global_instagram_userid']->value;?>
,
                                    get: 'user',
                                    target: 'instafeed_<?php echo $_smarty_tpl->tpl_vars['content']->value['hook'];?>
',
                                    clientId: '<?php echo $_smarty_tpl->tpl_vars['global_instagram_id']->value;?>
',
                                    accessToken: '<?php echo $_smarty_tpl->tpl_vars['global_instagram_token']->value;?>
',
                                    limit:<?php echo $_smarty_tpl->tpl_vars['limit']->value;?>
,
                                    sortBy: 'most-recent'
                                });
                                feed.run();
                            </script>
                       <?php }?>
                        <div class="instagram-widget">
                            <a href="http://instagram.com/<?php if (isset($_smarty_tpl->tpl_vars['global_instagram_username']->value)&&$_smarty_tpl->tpl_vars['global_instagram_username']->value) {?><?php echo $_smarty_tpl->tpl_vars['global_instagram_username']->value;?>
<?php }?>" target="_blank" class="title">
                                <img 
                            src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABkAAAAZCAYAAADE6YVjAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA+dpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlUmVmIyIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ1M2IChXaW5kb3dzKSIgeG1wOkNyZWF0ZURhdGU9IjIwMTQtMDEtMjhUMjA6MDA6NTcrMDc6MDAiIHhtcDpNb2RpZnlEYXRlPSIyMDE0LTAxLTI4VDIwOjAxOjEyKzA3OjAwIiB4bXA6TWV0YWRhdGFEYXRlPSIyMDE0LTAxLTI4VDIwOjAxOjEyKzA3OjAwIiBkYzpmb3JtYXQ9ImltYWdlL3BuZyIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDo0MzQ2MTUyRDg4MUMxMUUzOTlEODlEQUE1ODlCOUIyRSIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDo0MzQ2MTUyRTg4MUMxMUUzOTlEODlEQUE1ODlCOUIyRSI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjpp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" 
                            class="icon" />
                                    <div class="text"><?php echo smartyTranslate(array('s'=>'Instagram','mod'=>'tmsocialfeed'),$_smarty_tpl);?>
</div>
                            </a>
                            <div id="instafeed_<?php echo $_smarty_tpl->tpl_vars['content']->value['hook'];?>
" class="data"></div>
                        </div>
                    <?php }?>
            	</div>
            <?php } ?>
        </div>
    </div>
<?php }?><?php }} ?>
