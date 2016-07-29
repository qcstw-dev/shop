<?php /* Smarty version Smarty-3.1.19, created on 2016-07-29 09:09:50
         compiled from "C:\wamp64\www\shop\themes\theme1189\modules\blockpermanentlinks\blockpermanentlinks-header.tpl" */ ?>
<?php /*%%SmartyHeaderCode:7939579b013e43c639-20184235%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '129047d1453fa197da52338bf0538edbbbda3cf0' => 
    array (
      0 => 'C:\\wamp64\\www\\shop\\themes\\theme1189\\modules\\blockpermanentlinks\\blockpermanentlinks-header.tpl',
      1 => 1469775909,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '7939579b013e43c639-20184235',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'link' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_579b013e4b57e8_92653905',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_579b013e4b57e8_92653905')) {function content_579b013e4b57e8_92653905($_smarty_tpl) {?><!-- Block permanent links module HEADER -->
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
	<li id="header_link_blog">
		<a href="index.php?fc=module&module=smartblog&controller=category" title="<?php echo smartyTranslate(array('s'=>'Blog','mod'=>'blockpermanentlinks'),$_smarty_tpl);?>
"><?php echo smartyTranslate(array('s'=>'Blog','mod'=>'blockpermanentlinks'),$_smarty_tpl);?>
</a>
	</li>
</ul>
<!-- /Block permanent links module HEADER -->
<?php }} ?>
