<?php /* Smarty version Smarty-3.1.19, created on 2016-08-04 01:41:52
         compiled from "C:\wamp64\www\shop\themes\theme1189\modules\socialsharing\views\templates\hook\socialsharing.tpl" */ ?>
<?php /*%%SmartyHeaderCode:3209057a2d5a0d0cb91-46791856%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1381afc77a3e90c95068f43cc9ae6b7fa1f57fa9' => 
    array (
      0 => 'C:\\wamp64\\www\\shop\\themes\\theme1189\\modules\\socialsharing\\views\\templates\\hook\\socialsharing.tpl',
      1 => 1469775910,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3209057a2d5a0d0cb91-46791856',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'PS_SC_TWITTER' => 0,
    'PS_SC_FACEBOOK' => 0,
    'PS_SC_GOOGLE' => 0,
    'PS_SC_PINTEREST' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_57a2d5a0d724c9_62819508',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57a2d5a0d724c9_62819508')) {function content_57a2d5a0d724c9_62819508($_smarty_tpl) {?><?php if ($_smarty_tpl->tpl_vars['PS_SC_TWITTER']->value||$_smarty_tpl->tpl_vars['PS_SC_FACEBOOK']->value||$_smarty_tpl->tpl_vars['PS_SC_GOOGLE']->value||$_smarty_tpl->tpl_vars['PS_SC_PINTEREST']->value) {?>
	<p class="socialsharing_product no-print">
		<?php if ($_smarty_tpl->tpl_vars['PS_SC_TWITTER']->value) {?>
			<button data-type="twitter" type="button" class="btn btn-twitter social-sharing">
				<i class="fa fa-twitter"></i>
			</button>
		<?php }?>
		<?php if ($_smarty_tpl->tpl_vars['PS_SC_FACEBOOK']->value) {?>
			<button data-type="facebook" type="button" class="btn btn-facebook social-sharing">
				<i class="fa fa-facebook"></i>
			</button>
		<?php }?>
		<?php if ($_smarty_tpl->tpl_vars['PS_SC_GOOGLE']->value) {?>
			<button data-type="google-plus" type="button" class="btn btn-google-plus social-sharing">
				<i class="fa fa-google-plus"></i>
			</button>
		<?php }?>
		<?php if ($_smarty_tpl->tpl_vars['PS_SC_PINTEREST']->value) {?>
			<button data-type="pinterest" type="button" class="btn btn-pinterest social-sharing">
				<i class="fa fa-pinterest"></i>
			</button>
		<?php }?>
	</p>
<?php }?><?php }} ?>
