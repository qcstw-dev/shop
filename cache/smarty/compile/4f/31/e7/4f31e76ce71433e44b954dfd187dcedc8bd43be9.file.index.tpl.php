<?php /* Smarty version Smarty-3.1.19, created on 2016-08-03 06:06:49
         compiled from "C:\wamp64\www\shop\themes\theme1189\index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1743457a1c239df3192-01368139%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '4f31e76ce71433e44b954dfd187dcedc8bd43be9' => 
    array (
      0 => 'C:\\wamp64\\www\\shop\\themes\\theme1189\\index.tpl',
      1 => 1470126898,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1743457a1c239df3192-01368139',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'HOOK_HOME_TAB' => 0,
    'HOOK_HOME_TAB_CONTENT' => 0,
    'aDesigns' => 0,
    'aBlankProducts' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_57a1c239e396a0_07147868',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57a1c239e396a0_07147868')) {function content_57a1c239e396a0_07147868($_smarty_tpl) {?>
    <?php if (isset($_smarty_tpl->tpl_vars['HOOK_HOME_TAB']->value)&&trim($_smarty_tpl->tpl_vars['HOOK_HOME_TAB']->value)) {?>
        <ul id="home-page-tabs" class="nav nav-tabs clearfix">
            <?php echo $_smarty_tpl->tpl_vars['HOOK_HOME_TAB']->value;?>

        </ul>
    <?php }?>
    <div class="tab-content">
        <?php echo $_smarty_tpl->tpl_vars['HOOK_HOME_TAB_CONTENT']->value;?>

        <h4>Last Designs</h4>
        <?php echo $_smarty_tpl->getSubTemplate ("./product-list.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array('products'=>$_smarty_tpl->tpl_vars['aDesigns']->value), 0);?>

        <h4>Last Products</h4>
        <?php echo $_smarty_tpl->getSubTemplate ("./product-list.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array('products'=>$_smarty_tpl->tpl_vars['aBlankProducts']->value), 0);?>

    </div>
<?php }} ?>
