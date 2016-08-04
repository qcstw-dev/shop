<?php /* Smarty version Smarty-3.1.19, created on 2016-08-04 01:41:58
         compiled from "C:\wamp64\www\shop\themes\theme1189\layout.tpl" */ ?>
<?php /*%%SmartyHeaderCode:786557a2d5a64b6236-51287049%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0f79a8c078cb440a74b65ba424f20528d91e4c0c' => 
    array (
      0 => 'C:\\wamp64\\www\\shop\\themes\\theme1189\\layout.tpl',
      1 => 1469775909,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '786557a2d5a64b6236-51287049',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'HOOK_LEFT_COLUMN' => 0,
    'hide_left_column' => 0,
    'HOOK_RIGHT_COLUMN' => 0,
    'hide_right_column' => 0,
    'display_header' => 0,
    'HOOK_HEADER' => 0,
    'template' => 0,
    'display_footer' => 0,
    'live_edit' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_57a2d5a690f872_64455897',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57a2d5a690f872_64455897')) {function content_57a2d5a690f872_64455897($_smarty_tpl) {?><?php if (isset($_smarty_tpl->tpl_vars['left_column_size'])) {$_smarty_tpl->tpl_vars['left_column_size'] = clone $_smarty_tpl->tpl_vars['left_column_size'];
$_smarty_tpl->tpl_vars['left_column_size']->value = 0; $_smarty_tpl->tpl_vars['left_column_size']->nocache = null; $_smarty_tpl->tpl_vars['left_column_size']->scope = 0;
} else $_smarty_tpl->tpl_vars['left_column_size'] = new Smarty_variable(0, null, 0);?><?php if (isset($_smarty_tpl->tpl_vars['right_column_size'])) {$_smarty_tpl->tpl_vars['right_column_size'] = clone $_smarty_tpl->tpl_vars['right_column_size'];
$_smarty_tpl->tpl_vars['right_column_size']->value = 0; $_smarty_tpl->tpl_vars['right_column_size']->nocache = null; $_smarty_tpl->tpl_vars['right_column_size']->scope = 0;
} else $_smarty_tpl->tpl_vars['right_column_size'] = new Smarty_variable(0, null, 0);?>
<?php if (isset($_smarty_tpl->tpl_vars['HOOK_LEFT_COLUMN']->value)&&trim($_smarty_tpl->tpl_vars['HOOK_LEFT_COLUMN']->value)&&!$_smarty_tpl->tpl_vars['hide_left_column']->value) {?>
	<?php if (isset($_smarty_tpl->tpl_vars['left_column_size'])) {$_smarty_tpl->tpl_vars['left_column_size'] = clone $_smarty_tpl->tpl_vars['left_column_size'];
$_smarty_tpl->tpl_vars['left_column_size']->value = 3; $_smarty_tpl->tpl_vars['left_column_size']->nocache = null; $_smarty_tpl->tpl_vars['left_column_size']->scope = 0;
} else $_smarty_tpl->tpl_vars['left_column_size'] = new Smarty_variable(3, null, 0);?>
<?php }?>
<?php if (isset($_smarty_tpl->tpl_vars['HOOK_RIGHT_COLUMN']->value)&&trim($_smarty_tpl->tpl_vars['HOOK_RIGHT_COLUMN']->value)&&!$_smarty_tpl->tpl_vars['hide_right_column']->value) {?>
	<?php if (isset($_smarty_tpl->tpl_vars['right_column_size'])) {$_smarty_tpl->tpl_vars['right_column_size'] = clone $_smarty_tpl->tpl_vars['right_column_size'];
$_smarty_tpl->tpl_vars['right_column_size']->value = 3; $_smarty_tpl->tpl_vars['right_column_size']->nocache = null; $_smarty_tpl->tpl_vars['right_column_size']->scope = 0;
} else $_smarty_tpl->tpl_vars['right_column_size'] = new Smarty_variable(3, null, 0);?>
<?php }?>
<?php if (isset($_smarty_tpl->tpl_vars['HOOK_RIGHT_COLUMN']->value)&&trim($_smarty_tpl->tpl_vars['HOOK_RIGHT_COLUMN']->value)&&!$_smarty_tpl->tpl_vars['hide_right_column']->value&&isset($_smarty_tpl->tpl_vars['HOOK_LEFT_COLUMN']->value)&&trim($_smarty_tpl->tpl_vars['HOOK_LEFT_COLUMN']->value)&&!$_smarty_tpl->tpl_vars['hide_left_column']->value) {?>
	<?php if (isset($_smarty_tpl->tpl_vars['left_column_size'])) {$_smarty_tpl->tpl_vars['left_column_size'] = clone $_smarty_tpl->tpl_vars['left_column_size'];
$_smarty_tpl->tpl_vars['left_column_size']->value = 4; $_smarty_tpl->tpl_vars['left_column_size']->nocache = null; $_smarty_tpl->tpl_vars['left_column_size']->scope = 0;
} else $_smarty_tpl->tpl_vars['left_column_size'] = new Smarty_variable(4, null, 0);?>
<?php }?>
<?php if (!empty($_smarty_tpl->tpl_vars['display_header']->value)) {?>
	<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tpl_dir']->value)."./header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array('HOOK_HEADER'=>$_smarty_tpl->tpl_vars['HOOK_HEADER']->value), 0);?>

<?php }?>
<?php if (!empty($_smarty_tpl->tpl_vars['template']->value)) {?>
	<?php echo $_smarty_tpl->tpl_vars['template']->value;?>

<?php }?>
<?php if (!empty($_smarty_tpl->tpl_vars['display_footer']->value)) {?>
	<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tpl_dir']->value)."./footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<?php }?>
<?php if (!empty($_smarty_tpl->tpl_vars['live_edit']->value)) {?>
	<?php echo $_smarty_tpl->tpl_vars['live_edit']->value;?>

<?php }?><?php }} ?>
