<?php /* Smarty version Smarty-3.1.19, created on 2016-08-05 03:04:31
         compiled from "C:\wamp64\www\shop\themes\theme1189\modules\blockpermanentlinks\blockpermanentlinks-header.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2825557a43a7f15fd63-21982188%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '129047d1453fa197da52338bf0538edbbbda3cf0' => 
    array (
      0 => 'C:\\wamp64\\www\\shop\\themes\\theme1189\\modules\\blockpermanentlinks\\blockpermanentlinks-header.tpl',
      1 => 1470370652,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2825557a43a7f15fd63-21982188',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'link' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_57a43a7f1b1d65_93458550',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57a43a7f1b1d65_93458550')) {function content_57a43a7f1b1d65_93458550($_smarty_tpl) {?><!-- Block permanent links module HEADER -->
<ul id="header_links">
	<li id="header_link_title">
		<span><?php echo smartyTranslate(array('s'=>'Welcome to our online store!','mod'=>'blockpermanentlinks'),$_smarty_tpl);?>
</span>
	</li>
	<li id="header_link_account">
    	<a href="index.php?controller=my-account" title="<?php echo smartyTranslate(array('s'=>'My Account','mod'=>'blockpermanentlinks'),$_smarty_tpl);?>
"><?php echo smartyTranslate(array('s'=>'My Account','mod'=>'blockpermanentlinks'),$_smarty_tpl);?>
</a>
    </li>
	<li id="header_link_wishlist">
		<a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getModuleLink('blockwishlist','mywishlist',array(),true), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smartyTranslate(array('s'=>'My Wishlist','mod'=>'blockpermanentlinks'),$_smarty_tpl);?>
"><?php echo smartyTranslate(array('s'=>'My Wishlist','mod'=>'blockpermanentlinks'),$_smarty_tpl);?>
</a>
	</li>
</ul>
<!-- /Block permanent links module HEADER -->
<?php }} ?>
