<?php /* Smarty version Smarty-3.1.19, created on 2016-07-29 03:26:05
         compiled from "C:\wamp64\www\shop\modules\tmproductvideos\views\templates\hooks\tmproductvideos_tab.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1158579b050dde3471-41411985%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '631ef202f54b714818b957d74bafb904bbcdea49' => 
    array (
      0 => 'C:\\wamp64\\www\\shop\\modules\\tmproductvideos\\views\\templates\\hooks\\tmproductvideos_tab.tpl',
      1 => 1469775911,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1158579b050dde3471-41411985',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'videos' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_579b050de160f0_67277234',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_579b050de160f0_67277234')) {function content_579b050de160f0_67277234($_smarty_tpl) {?><?php if (isset($_smarty_tpl->tpl_vars['videos']->value)&&$_smarty_tpl->tpl_vars['videos']->value) {?>
    <li class="product-video-tab">
        <a href="#product-video-tab-content" data-toggle="tab"><?php if (count($_smarty_tpl->tpl_vars['videos']->value)>1) {?><?php echo smartyTranslate(array('s'=>'Videos','mod'=>'tmproductvideos'),$_smarty_tpl);?>
<?php } else { ?><?php echo smartyTranslate(array('s'=>'Video','mod'=>'tmproductvideos'),$_smarty_tpl);?>
<?php }?></a>
    </li>
<?php }?><?php }} ?>
