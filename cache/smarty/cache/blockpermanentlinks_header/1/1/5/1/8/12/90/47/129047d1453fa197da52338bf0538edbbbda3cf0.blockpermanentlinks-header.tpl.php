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
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_579b03d554a046_10156160',
  'has_nocache_code' => false,
  'cache_lifetime' => 31536000,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_579b03d554a046_10156160')) {function content_579b03d554a046_10156160($_smarty_tpl) {?><!-- Block permanent links module HEADER -->
<ul id="header_links">
	<li id="header_link_title">
		<span>Bienvenue sur notre boutique en ligne!</span>
	</li>
	<li id="header_link_account">
    	<a href="index.php?controller=my-account" title="Mon compte">Mon compte</a>
    </li>
	<li id="header_link_wishlist">
		<a href="http://localhost/shop/fr/module/blockwishlist/mywishlist" title="Liste d'envies">Liste d'envies</a>
	</li>
	<li id="header_link_blog">
		<a href="index.php?fc=module&module=smartblog&controller=category" title="Blog">Blog</a>
	</li>
</ul>
<!-- /Block permanent links module HEADER -->
<?php }} ?>
