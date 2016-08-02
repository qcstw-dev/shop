<?php /* Smarty version Smarty-3.1.19, created on 2016-08-02 02:51:40
         compiled from "C:\wamp64\www\shop\themes\theme1189\index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:668457a042fcb4f8d6-21012363%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '4f31e76ce71433e44b954dfd187dcedc8bd43be9' => 
    array (
      0 => 'C:\\wamp64\\www\\shop\\themes\\theme1189\\index.tpl',
      1 => 1470120666,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '668457a042fcb4f8d6-21012363',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'HOOK_HOME_TAB' => 0,
    'HOOK_HOME_TAB_CONTENT' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_57a042fcb7a863_71950100',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57a042fcb7a863_71950100')) {function content_57a042fcb7a863_71950100($_smarty_tpl) {?>
    <?php if (isset($_smarty_tpl->tpl_vars['HOOK_HOME_TAB']->value)&&trim($_smarty_tpl->tpl_vars['HOOK_HOME_TAB']->value)) {?>
        <ul id="home-page-tabs" class="nav nav-tabs clearfix">
            <?php echo $_smarty_tpl->tpl_vars['HOOK_HOME_TAB']->value;?>

        </ul>
    <?php }?>
    <div class="tab-content">
        <?php echo $_smarty_tpl->tpl_vars['HOOK_HOME_TAB_CONTENT']->value;?>



    </div>
<?php }} ?>
