<?php /* Smarty version Smarty-3.1.19, created on 2016-07-29 09:09:47
         compiled from "C:\wamp64\www\shop\themes\theme1189\modules\blockspecials\blockspecials-home.tpl" */ ?>
<?php /*%%SmartyHeaderCode:12366579b013b160ad1-36030956%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '61968ee0f1cd8da9e762a92145c0745916aa9ed0' => 
    array (
      0 => 'C:\\wamp64\\www\\shop\\themes\\theme1189\\modules\\blockspecials\\blockspecials-home.tpl',
      1 => 1469775909,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '12366579b013b160ad1-36030956',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'specials' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_579b013b1aae79_71516659',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_579b013b1aae79_71516659')) {function content_579b013b1aae79_71516659($_smarty_tpl) {?><?php if (isset($_smarty_tpl->tpl_vars['specials']->value)&&$_smarty_tpl->tpl_vars['specials']->value) {?>
	<?php echo $_smarty_tpl->getSubTemplate (((string)$_smarty_tpl->tpl_vars['tpl_dir']->value)."./product-list.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array('products'=>$_smarty_tpl->tpl_vars['specials']->value,'class'=>'blockspecials tab-pane','id'=>'blockspecials'), 0);?>

<?php } else { ?>
<ul id="blockspecials" class="blockspecials tab-pane">
	<li class="alert alert-info"><?php echo smartyTranslate(array('s'=>'No special products at this time.','mod'=>'blockspecials'),$_smarty_tpl);?>
</li>
</ul>
<?php }?>
<?php }} ?>
