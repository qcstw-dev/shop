<?php /* Smarty version Smarty-3.1.19, created on 2016-08-04 01:41:59
         compiled from "C:\wamp64\www\shop\themes\theme1189\breadcrumb.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2393157a2d5a7aa6367-95683139%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '20c3b7bba0c881e8d9b946580015e2e7200580c3' => 
    array (
      0 => 'C:\\wamp64\\www\\shop\\themes\\theme1189\\breadcrumb.tpl',
      1 => 1469775906,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2393157a2d5a7aa6367-95683139',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'base_dir' => 0,
    'path' => 0,
    'category' => 0,
    'navigationPipe' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_57a2d5a7c67791_92358463',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57a2d5a7c67791_92358463')) {function content_57a2d5a7c67791_92358463($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_replace')) include 'C:\\wamp64\\www\\shop\\tools\\smarty\\plugins\\modifier.replace.php';
if (!is_callable('smarty_modifier_regex_replace')) include 'C:\\wamp64\\www\\shop\\tools\\smarty\\plugins\\modifier.regex_replace.php';
?><!-- Breadcrumb -->
<?php if (isset(Smarty::$_smarty_vars['capture']['path'])) {?>
	<?php if (isset($_smarty_tpl->tpl_vars['path'])) {$_smarty_tpl->tpl_vars['path'] = clone $_smarty_tpl->tpl_vars['path'];
$_smarty_tpl->tpl_vars['path']->value = Smarty::$_smarty_vars['capture']['path']; $_smarty_tpl->tpl_vars['path']->nocache = null; $_smarty_tpl->tpl_vars['path']->scope = 0;
} else $_smarty_tpl->tpl_vars['path'] = new Smarty_variable(Smarty::$_smarty_vars['capture']['path'], null, 0);?>
<?php }?>

<div class="breadcrumb clearfix">
	<a class="home" href="<?php echo $_smarty_tpl->tpl_vars['base_dir']->value;?>
" title="<?php echo smartyTranslate(array('s'=>'Return to Home'),$_smarty_tpl);?>
">
    	<i class="fa fa-home"></i>
    </a>
	<?php if (isset($_smarty_tpl->tpl_vars['path']->value)&&$_smarty_tpl->tpl_vars['path']->value) {?>
		<span class="navigation-pipe"<?php if (isset($_smarty_tpl->tpl_vars['category']->value)&&isset($_smarty_tpl->tpl_vars['category']->value->id_category)&&$_smarty_tpl->tpl_vars['category']->value->id_category==1) {?> style="display:none;"<?php }?>><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['navigationPipe']->value, ENT_QUOTES, 'UTF-8', true);?>
</span>
		<?php if (strpos($_smarty_tpl->tpl_vars['path']->value,'span')!==false) {?>
			<span class="navigation_page"><?php echo smarty_modifier_replace(smarty_modifier_replace(smarty_modifier_replace($_smarty_tpl->tpl_vars['path']->value,'<a ','<span itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a itemprop="url" '),'data-gg="">','><span itemprop="title">'),'</a>','</span></a></span>');?>
</span>
		<?php } else { ?>
			<?php echo $_smarty_tpl->tpl_vars['path']->value;?>

		<?php }?>
	<?php }?>
</div>

<?php if (isset($_GET['search_query'])&&isset($_GET['results'])&&$_GET['results']>1&&isset($_SERVER['HTTP_REFERER'])) {?>
    <div class="pull-right">
        <strong>
        	<?php $_smarty_tpl->_capture_stack[0][] = array('default', null, null); ob_start(); ?><?php if (isset($_GET['HTTP_REFERER'])&&$_GET['HTTP_REFERER']) {?><?php echo $_GET['HTTP_REFERER'];?>
<?php } elseif (isset($_SERVER['HTTP_REFERER'])&&$_SERVER['HTTP_REFERER']) {?><?php echo $_SERVER['HTTP_REFERER'];?>
<?php }?><?php list($_capture_buffer, $_capture_assign, $_capture_append) = array_pop($_smarty_tpl->_capture_stack[0]);
if (!empty($_capture_buffer)) {
 if (isset($_capture_assign)) $_smarty_tpl->assign($_capture_assign, ob_get_contents());
 if (isset( $_capture_append)) $_smarty_tpl->append( $_capture_append, ob_get_contents());
 Smarty::$_smarty_vars['capture'][$_capture_buffer]=ob_get_clean();
} else $_smarty_tpl->capture_error();?>
            <a href="<?php echo smarty_modifier_regex_replace($_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_MODIFIER]['secureReferrer'][0][0]->secureReferrer(htmlspecialchars(Smarty::$_smarty_vars['capture']['default'], ENT_QUOTES, 'UTF-8', true)),'/[\?|&]content_only=1/','');?>
" name="back">
                <i class="fa fa-chevron-left left"></i> 
                <?php echo smartyTranslate(array('s'=>'Back to Search results for "%s" (%d other results)','sprintf'=>array($_GET['search_query'],$_GET['results'])),$_smarty_tpl);?>

            </a>
        </strong>
    </div>
<?php }?>
<!-- /Breadcrumb --><?php }} ?>
