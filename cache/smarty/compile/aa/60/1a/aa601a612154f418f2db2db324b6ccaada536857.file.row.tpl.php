<?php /* Smarty version Smarty-3.1.19, created on 2016-08-04 01:46:26
         compiled from "C:\wamp64\www\shop\admin4475uqijs\themes\default\template\helpers\kpi\row.tpl" */ ?>
<?php /*%%SmartyHeaderCode:894557a2d6b2190220-58916045%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'aa601a612154f418f2db2db324b6ccaada536857' => 
    array (
      0 => 'C:\\wamp64\\www\\shop\\admin4475uqijs\\themes\\default\\template\\helpers\\kpi\\row.tpl',
      1 => 1465974074,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '894557a2d6b2190220-58916045',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'kpis' => 0,
    'col' => 0,
    'i' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_57a2d6b21ede54_57882964',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57a2d6b21ede54_57882964')) {function content_57a2d6b21ede54_57882964($_smarty_tpl) {?>
<div class="panel kpi-container">
	<div class="kpi-refresh"><button class="close refresh" type="button" onclick="refresh_kpis();"><i class="process-icon-refresh" style="font-size:1em"></i></button></div>
	<div class="row">
		<?php if (isset($_smarty_tpl->tpl_vars['col'])) {$_smarty_tpl->tpl_vars['col'] = clone $_smarty_tpl->tpl_vars['col'];
$_smarty_tpl->tpl_vars['col']->value = (int)(12/count($_smarty_tpl->tpl_vars['kpis']->value)); $_smarty_tpl->tpl_vars['col']->nocache = null; $_smarty_tpl->tpl_vars['col']->scope = 0;
} else $_smarty_tpl->tpl_vars['col'] = new Smarty_variable((int)(12/count($_smarty_tpl->tpl_vars['kpis']->value)), null, 0);?>
		<?php  $_smarty_tpl->tpl_vars['i'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['i']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['kpis']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']['kpi']['iteration']=0;
foreach ($_from as $_smarty_tpl->tpl_vars['i']->key => $_smarty_tpl->tpl_vars['i']->value) {
$_smarty_tpl->tpl_vars['i']->_loop = true;
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']['kpi']['iteration']++;
?>
			<?php if ($_smarty_tpl->getVariable('smarty')->value['foreach']['kpi']['iteration']>$_smarty_tpl->tpl_vars['col']->value+1) {?>
				</div>
				<div class="row">
			<?php }?>
			<div class="col-sm-6 col-lg-<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['i']->value;?>
</div>
		<?php } ?>
	</div>
</div>
<?php }} ?>
