<?php /* Smarty version Smarty-3.1.19, created on 2016-07-29 03:25:28
         compiled from "C:\wamp64\www\shop\themes\theme1189\modules\blockcategories\category-tree-branch.tpl" */ ?>
<?php /*%%SmartyHeaderCode:9769579b04e857aef5-25046747%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '4d708ebc6a2caa58a01949e2ee6f981d4e330d34' => 
    array (
      0 => 'C:\\wamp64\\www\\shop\\themes\\theme1189\\modules\\blockcategories\\category-tree-branch.tpl',
      1 => 1469775909,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '9769579b04e857aef5-25046747',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'currentCategoryId' => 0,
    'node' => 0,
    'child' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_579b04e864ddf4_47826103',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_579b04e864ddf4_47826103')) {function content_579b04e864ddf4_47826103($_smarty_tpl) {?><li <?php if (isset($_smarty_tpl->tpl_vars['currentCategoryId']->value)&&$_smarty_tpl->tpl_vars['node']->value['id']==$_smarty_tpl->tpl_vars['currentCategoryId']->value) {?>class="selected_li"<?php }?>>
	<a 	href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['node']->value['link'], ENT_QUOTES, 'UTF-8', true);?>
"<?php if (isset($_smarty_tpl->tpl_vars['currentCategoryId']->value)&&$_smarty_tpl->tpl_vars['node']->value['id']==$_smarty_tpl->tpl_vars['currentCategoryId']->value) {?> class="selected"<?php }?> title="<?php echo htmlspecialchars(trim(preg_replace('!<[^>]*?>!', ' ', $_smarty_tpl->tpl_vars['node']->value['desc'])), ENT_QUOTES, 'UTF-8', true);?>
">
		<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['node']->value['name'], ENT_QUOTES, 'UTF-8', true);?>

	</a>
	<?php if (count($_smarty_tpl->tpl_vars['node']->value['children'])>0) {?>
		<ul>
			<?php  $_smarty_tpl->tpl_vars['child'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['child']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['node']->value['children']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
 $_smarty_tpl->tpl_vars['child']->total= $_smarty_tpl->_count($_from);
 $_smarty_tpl->tpl_vars['child']->iteration=0;
foreach ($_from as $_smarty_tpl->tpl_vars['child']->key => $_smarty_tpl->tpl_vars['child']->value) {
$_smarty_tpl->tpl_vars['child']->_loop = true;
 $_smarty_tpl->tpl_vars['child']->iteration++;
 $_smarty_tpl->tpl_vars['child']->last = $_smarty_tpl->tpl_vars['child']->iteration === $_smarty_tpl->tpl_vars['child']->total;
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']['categoryTreeBranch']['last'] = $_smarty_tpl->tpl_vars['child']->last;
?>
				<?php if ($_smarty_tpl->getVariable('smarty')->value['foreach']['categoryTreeBranch']['last']) {?>
					<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['branche_tpl_path']->value), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array('node'=>$_smarty_tpl->tpl_vars['child']->value,'last'=>'true'), 0);?>

				<?php } else { ?>
					<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['branche_tpl_path']->value), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array('node'=>$_smarty_tpl->tpl_vars['child']->value,'last'=>'false'), 0);?>

				<?php }?>
			<?php } ?>
		</ul>
	<?php }?>
</li>
<?php }} ?>
