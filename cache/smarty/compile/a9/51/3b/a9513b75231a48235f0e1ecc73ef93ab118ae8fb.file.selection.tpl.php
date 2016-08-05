<?php /* Smarty version Smarty-3.1.19, created on 2016-08-05 03:04:31
         compiled from "C:\wamp64\www\shop\themes\theme1189\selection.tpl" */ ?>
<?php /*%%SmartyHeaderCode:836457a43a7f1c1740-99260888%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a9513b75231a48235f0e1ecc73ef93ab118ae8fb' => 
    array (
      0 => 'C:\\wamp64\\www\\shop\\themes\\theme1189\\selection.tpl',
      1 => 1470377978,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '836457a43a7f1c1740-99260888',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'selection' => 0,
    'base_dir' => 0,
    'lang_iso' => 0,
    'aSelectedDesigns' => 0,
    'design' => 0,
    'link' => 0,
    'aSelectedProducts' => 0,
    'product' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_57a43a7f2d2c89_07560933',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57a43a7f2d2c89_07560933')) {function content_57a43a7f2d2c89_07560933($_smarty_tpl) {?><div class="block-selection border margin-top-10 margin-bottom-10" <?php if (!$_smarty_tpl->tpl_vars['selection']->value) {?> style="display: none;" <?php }?>>
    <div class="col-xs-12 padding-0">
        <div class="col-xs-10">
            <h4 class="margin-top-20"><?php echo smartyTranslate(array('s'=>'Your selection'),$_smarty_tpl);?>
</h4>
        </div>
        <div class="col-xs-2 margin-top-10 margin-bottom-10">
            <a class="btn btn-warning pull-right" href="<?php echo $_smarty_tpl->tpl_vars['base_dir']->value;?>
<?php echo $_smarty_tpl->tpl_vars['lang_iso']->value;?>
/layout-maker"><span class="glyphicon glyphicon-pencil"></span> Layout maker</a>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="col-xs-6 border-top border-right">
        <h5 class="text-center bold">Designs</h5>
        <ul class="designs-list">
            <?php  $_smarty_tpl->tpl_vars['design'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['design']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['aSelectedDesigns']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['design']->key => $_smarty_tpl->tpl_vars['design']->value) {
$_smarty_tpl->tpl_vars['design']->_loop = true;
?>
                <li class="list-item-<?php echo $_smarty_tpl->tpl_vars['design']->value->id;?>
">
                    <a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['design']->value->getLink(), ENT_QUOTES, 'UTF-8', true);?>
">
                        <img src="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getImageLink($_smarty_tpl->tpl_vars['design']->value->link_rewrite,$_smarty_tpl->tpl_vars['design']->value->image['id_image'],'tm_home_default'), ENT_QUOTES, 'UTF-8', true);?>
" data-toggle="tooltip" data-placement="right" title="<?php echo $_smarty_tpl->tpl_vars['design']->value->name;?>
" />
                    </a>
                    <span class="selection cursor-pointer glyphicon glyphicon-remove" data-id="<?php echo $_smarty_tpl->tpl_vars['design']->value->id;?>
"></span>
                </li>
            <?php } ?>
        </ul>
    </div>
    <div class="col-xs-6 border-top">
        <h5 class="text-center bold">Products</h5>
        <ul class="products-list">
            <?php  $_smarty_tpl->tpl_vars['product'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['product']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['aSelectedProducts']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['product']->key => $_smarty_tpl->tpl_vars['product']->value) {
$_smarty_tpl->tpl_vars['product']->_loop = true;
?>
                <li class="list-item-<?php echo $_smarty_tpl->tpl_vars['product']->value->id;?>
">
                    <a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['product']->value->getLink(), ENT_QUOTES, 'UTF-8', true);?>
">
                        <img src="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getImageLink($_smarty_tpl->tpl_vars['product']->value->link_rewrite,$_smarty_tpl->tpl_vars['product']->value->image['id_image'],'tm_home_default'), ENT_QUOTES, 'UTF-8', true);?>
" data-toggle="tooltip" data-placement="right" title="<?php echo $_smarty_tpl->tpl_vars['product']->value->name;?>
" />
                    </a>
                    <span class="selection cursor-pointer glyphicon glyphicon-remove" data-id="<?php echo $_smarty_tpl->tpl_vars['product']->value->id;?>
"></span>
                </li>
            <?php } ?>
        </ul>
    </div>
    <div class="clearfix"></div>
</div><?php }} ?>
