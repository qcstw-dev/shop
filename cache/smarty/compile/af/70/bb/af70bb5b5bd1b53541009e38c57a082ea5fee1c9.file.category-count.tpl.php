<?php /* Smarty version Smarty-3.1.19, created on 2016-08-04 02:09:28
         compiled from "C:\wamp64\www\shop\themes\theme1189\category-count.tpl" */ ?>
<?php /*%%SmartyHeaderCode:49557a2dc18657848-01837675%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'af70bb5b5bd1b53541009e38c57a082ea5fee1c9' => 
    array (
      0 => 'C:\\wamp64\\www\\shop\\themes\\theme1189\\category-count.tpl',
      1 => 1469775906,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '49557a2dc18657848-01837675',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'category' => 0,
    'nb_products' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_57a2dc186d09f3_22424433',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57a2dc186d09f3_22424433')) {function content_57a2dc186d09f3_22424433($_smarty_tpl) {?><span class="heading-counter"><?php if ((isset($_smarty_tpl->tpl_vars['category']->value)&&$_smarty_tpl->tpl_vars['category']->value->id==1)||(isset($_smarty_tpl->tpl_vars['nb_products']->value)&&$_smarty_tpl->tpl_vars['nb_products']->value==0)) {?><?php echo smartyTranslate(array('s'=>'There are no products in this category.'),$_smarty_tpl);?>
<?php } else { ?><?php if (isset($_smarty_tpl->tpl_vars['nb_products']->value)&&$_smarty_tpl->tpl_vars['nb_products']->value==1) {?><?php echo smartyTranslate(array('s'=>'There is 1 product.'),$_smarty_tpl);?>
<?php } elseif (isset($_smarty_tpl->tpl_vars['nb_products']->value)) {?><?php echo smartyTranslate(array('s'=>'There are %d products.','sprintf'=>$_smarty_tpl->tpl_vars['nb_products']->value),$_smarty_tpl);?>
<?php }?><?php }?></span><?php }} ?>
