<?php /* Smarty version Smarty-3.1.19, created on 2016-08-03 05:18:33
         compiled from "C:\wamp64\www\shop\admin4475uqijs\themes\default\template\helpers\modules_list\modal.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1664357a1b6e9638037-03244573%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2152fdc627a7fcf4e503b64da1db0dda48730045' => 
    array (
      0 => 'C:\\wamp64\\www\\shop\\admin4475uqijs\\themes\\default\\template\\helpers\\modules_list\\modal.tpl',
      1 => 1465974074,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1664357a1b6e9638037-03244573',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_57a1b6e9657440_53380729',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57a1b6e9657440_53380729')) {function content_57a1b6e9657440_53380729($_smarty_tpl) {?><div class="modal fade" id="modules_list_container">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h3 class="modal-title"><?php echo smartyTranslate(array('s'=>'Recommended Modules and Services'),$_smarty_tpl);?>
</h3>
			</div>
			<div class="modal-body">
				<div id="modules_list_container_tab_modal" style="display:none;"></div>
				<div id="modules_list_loader"><i class="icon-refresh icon-spin"></i></div>
			</div>
		</div>
	</div>
</div>
<?php }} ?>
