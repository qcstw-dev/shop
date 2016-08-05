<?php /* Smarty version Smarty-3.1.19, created on 2016-08-05 03:04:30
         compiled from "C:\wamp64\www\shop\themes\theme1189\modules\blockwishlist\my-account.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2936957a43a7edcbd12-07165110%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2621f19c2b963a68f5564df4e74e07f5f0e4d97a' => 
    array (
      0 => 'C:\\wamp64\\www\\shop\\themes\\theme1189\\modules\\blockwishlist\\my-account.tpl',
      1 => 1469775910,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2936957a43a7edcbd12-07165110',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'link' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_57a43a7ee06633_29716583',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57a43a7ee06633_29716583')) {function content_57a43a7ee06633_29716583($_smarty_tpl) {?><!-- MODULE WishList -->
<li class="lnk_wishlist">
	<a 	href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getModuleLink('blockwishlist','mywishlist',array(),true), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smartyTranslate(array('s'=>'My wishlists','mod'=>'blockwishlist'),$_smarty_tpl);?>
">
		<i class="fa fa-heart"></i>
		<span><?php echo smartyTranslate(array('s'=>'My wishlists','mod'=>'blockwishlist'),$_smarty_tpl);?>
</span>
	</a>
</li>
<!-- END : MODULE WishList --><?php }} ?>
