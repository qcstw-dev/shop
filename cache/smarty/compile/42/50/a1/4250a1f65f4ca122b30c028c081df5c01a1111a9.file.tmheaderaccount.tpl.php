<?php /* Smarty version Smarty-3.1.19, created on 2016-07-29 09:09:50
         compiled from "C:\wamp64\www\shop\modules\tmheaderaccount\views\templates\hook\tmheaderaccount.tpl" */ ?>
<?php /*%%SmartyHeaderCode:9138579b013e09e841-11016431%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '4250a1f65f4ca122b30c028c081df5c01a1111a9' => 
    array (
      0 => 'C:\\wamp64\\www\\shop\\modules\\tmheaderaccount\\views\\templates\\hook\\tmheaderaccount.tpl',
      1 => 1469775911,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '9138579b013e09e841-11016431',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'is_logged' => 0,
    'link' => 0,
    'returnAllowed' => 0,
    'voucherAllowed' => 0,
    'HOOK_BLOCK_MY_ACCOUNT' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_579b013e3619e0_23141715',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_579b013e3619e0_23141715')) {function content_579b013e3619e0_23141715($_smarty_tpl) {?><div id="header-login">
    <div class="current header_user_info"><a href="#" onclick="return false;"><?php if ($_smarty_tpl->tpl_vars['is_logged']->value) {?><?php echo smartyTranslate(array('s'=>'Your Account','mod'=>'tmheaderaccount'),$_smarty_tpl);?>
<?php } else { ?><?php echo smartyTranslate(array('s'=>'Sign in','mod'=>'tmheaderaccount'),$_smarty_tpl);?>
<?php }?></a></div>
    <ul id="header-login-content" class="toogle_content">
        <?php if ($_smarty_tpl->tpl_vars['is_logged']->value) {?>
            <li>
            	<ul>
                	<li><a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('history',true), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smartyTranslate(array('s'=>'My orders','mod'=>'tmheaderaccount'),$_smarty_tpl);?>
" rel="nofollow"><?php echo smartyTranslate(array('s'=>'My orders','mod'=>'tmheaderaccount'),$_smarty_tpl);?>
</a></li>
                    <?php if ($_smarty_tpl->tpl_vars['returnAllowed']->value) {?><li><a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('order-follow',true), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smartyTranslate(array('s'=>'My returns','mod'=>'tmheaderaccount'),$_smarty_tpl);?>
" rel="nofollow"><?php echo smartyTranslate(array('s'=>'My merchandise returns','mod'=>'tmheaderaccount'),$_smarty_tpl);?>
</a></li><?php }?>
                    <li><a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('order-slip',true), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smartyTranslate(array('s'=>'My credit slips','mod'=>'tmheaderaccount'),$_smarty_tpl);?>
" rel="nofollow"><?php echo smartyTranslate(array('s'=>'My credit slips','mod'=>'tmheaderaccount'),$_smarty_tpl);?>
</a></li>
                    <li><a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('addresses',true), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smartyTranslate(array('s'=>'My addresses','mod'=>'tmheaderaccount'),$_smarty_tpl);?>
" rel="nofollow"><?php echo smartyTranslate(array('s'=>'My addresses','mod'=>'tmheaderaccount'),$_smarty_tpl);?>
</a></li>
                    <li><a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('identity',true), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smartyTranslate(array('s'=>'Manage my personal information','mod'=>'tmheaderaccount'),$_smarty_tpl);?>
" rel="nofollow"><?php echo smartyTranslate(array('s'=>'My personal info','mod'=>'tmheaderaccount'),$_smarty_tpl);?>
</a></li>
                    <?php if ($_smarty_tpl->tpl_vars['voucherAllowed']->value) {?><li><a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('discount',true), ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo smartyTranslate(array('s'=>'My vouchers','mod'=>'tmheaderaccount'),$_smarty_tpl);?>
" rel="nofollow"><?php echo smartyTranslate(array('s'=>'My vouchers','mod'=>'tmheaderaccount'),$_smarty_tpl);?>
</a></li><?php }?>
                    <?php if (isset($_smarty_tpl->tpl_vars['HOOK_BLOCK_MY_ACCOUNT']->value)&&$_smarty_tpl->tpl_vars['HOOK_BLOCK_MY_ACCOUNT']->value!='') {?>
                        <?php echo $_smarty_tpl->tpl_vars['HOOK_BLOCK_MY_ACCOUNT']->value;?>

                    <?php }?>
                </ul>
                <p class="logout">
                	<a class="pull-right btn btn-default btn-sm" href="<?php echo $_smarty_tpl->tpl_vars['link']->value->getPageLink('index');?>
?mylogout" title="<?php echo smartyTranslate(array('s'=>'Sign out','mod'=>'tmheaderaccount'),$_smarty_tpl);?>
" rel="nofollow">
                    	<i class="fa fa-unlock left"></i> 
                        	<?php echo smartyTranslate(array('s'=>'Sign out','mod'=>'tmheaderaccount'),$_smarty_tpl);?>

                    </a>
                </p>
            </li>
        <?php } else { ?>
            <li>
                <form action="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('authentication',true), ENT_QUOTES, 'UTF-8', true);?>
" method="post" id="header_login_form">
                    <div id="create_header_account_error" class="alert alert-danger" style="display:none;"></div>
                    <div class="form_content clearfix">
                        <div class="form-group">
                            <label for="email"><?php echo smartyTranslate(array('s'=>'Email address','mod'=>'tmheaderaccount'),$_smarty_tpl);?>
</label>
                            <input class="is_required validate account_input form-control" data-validate="isEmail" type="text" id="header-email" name="header-email" value="<?php if (isset($_POST['email'])) {?><?php echo stripslashes($_POST['email']);?>
<?php }?>" />
                        </div>
                        <div class="form-group">
                            <label for="passwd"><?php echo smartyTranslate(array('s'=>'Password','mod'=>'tmheaderaccount'),$_smarty_tpl);?>
</label>
                            <span><input class="is_required validate account_input form-control" type="password" data-validate="isPasswd" id="header-passwd" name="header-passwd" value="<?php if (isset($_POST['passwd'])) {?><?php echo stripslashes($_POST['passwd']);?>
<?php }?>" autocomplete="off" /></span>
                        </div>
                        <p class="submit">
                            <button type="button" id="HeaderSubmitLogin" name="HeaderSubmitLogin" class="btn btn-default btn-sm">
                                <i class="fa fa-lock left"></i> 
                                    <?php echo smartyTranslate(array('s'=>'Sign in','mod'=>'tmheaderaccount'),$_smarty_tpl);?>

                            </button>
                        </p>
                        <p>
                        	<a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getPageLink('my-account',true), ENT_QUOTES, 'UTF-8', true);?>
" class="create"><?php echo smartyTranslate(array('s'=>'Create an account','mod'=>'tmheaderaccount'),$_smarty_tpl);?>
</a>
                        </p>
                        <div class="clearfix">
                        	<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['hook'][0][0]->smartyHook(array('h'=>"displayHeaderLoginButtons"),$_smarty_tpl);?>

                        </div>
                    </div>
                </form>
            </li>
        <?php }?>
    </ul>
</div><?php }} ?>
