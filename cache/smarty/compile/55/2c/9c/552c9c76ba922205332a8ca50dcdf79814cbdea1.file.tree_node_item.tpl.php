<?php /* Smarty version Smarty-3.1.19, created on 2016-07-29 06:39:49
         compiled from "C:\wamp64\www\shop\admin\themes\default\template\helpers\tree\tree_node_item.tpl" */ ?>
<?php /*%%SmartyHeaderCode:6577579afa35ed3473-00889460%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '552c9c76ba922205332a8ca50dcdf79814cbdea1' => 
    array (
      0 => 'C:\\wamp64\\www\\shop\\admin\\themes\\default\\template\\helpers\\tree\\tree_node_item.tpl',
      1 => 1465974074,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '6577579afa35ed3473-00889460',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'node' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_579afa35ee2e74_80962120',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_579afa35ee2e74_80962120')) {function content_579afa35ee2e74_80962120($_smarty_tpl) {?>

<li class="tree-item">
	<span class="tree-item-name">
		<i class="tree-dot"></i>
		<label class="tree-toggler"><?php echo $_smarty_tpl->tpl_vars['node']->value['name'];?>
</label>
	</span>
</li><?php }} ?>
