<?php /* Smarty version Smarty-3.1.19, created on 2016-08-02 02:46:33
         compiled from "C:\wamp64\www\shop\modules\tmproductlistgallery\views\templates\hooks\tmproductlistgallery.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1369757a041c9ec32d0-51758734%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '776cb487f6ea427f4ec3da17429c96a49c252fb2' => 
    array (
      0 => 'C:\\wamp64\\www\\shop\\modules\\tmproductlistgallery\\views\\templates\\hooks\\tmproductlistgallery.tpl',
      1 => 1469775911,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1369757a041c9ec32d0-51758734',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'product_images' => 0,
    'product' => 0,
    'image' => 0,
    'imageTitle' => 0,
    'imageId' => 0,
    'link' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_57a041ca07af49_17039059',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57a041ca07af49_17039059')) {function content_57a041ca07af49_17039059($_smarty_tpl) {?><?php if (count($_smarty_tpl->tpl_vars['product_images']->value)>1) {?>
    <ul class="gallery-thumb-list">
        <?php  $_smarty_tpl->tpl_vars['image'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['image']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['product_images']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['image']->key => $_smarty_tpl->tpl_vars['image']->value) {
$_smarty_tpl->tpl_vars['image']->_loop = true;
?>
            <?php $_smarty_tpl->tpl_vars['imageId'] = new Smarty_variable(((string)$_smarty_tpl->tpl_vars['product']->value['id_product'])."-".((string)$_smarty_tpl->tpl_vars['image']->value['id_image']), null, 0);?>
            <?php if (!empty($_smarty_tpl->tpl_vars['image']->value['legend'])) {?>
                <?php $_smarty_tpl->tpl_vars['imageTitle'] = new Smarty_variable(htmlspecialchars($_smarty_tpl->tpl_vars['image']->value['legend'], ENT_QUOTES, 'UTF-8', true), null, 0);?>
            <?php } else { ?>
                <?php $_smarty_tpl->tpl_vars['imageTitle'] = new Smarty_variable($_smarty_tpl->tpl_vars['product']->value['name'], null, 0);?>
            <?php }?>
            <li id="thumb-<?php echo $_smarty_tpl->tpl_vars['product']->value['id_product'];?>
-<?php echo $_smarty_tpl->tpl_vars['image']->value['id_image'];?>
" class="gallery-image-thumb<?php if ($_smarty_tpl->tpl_vars['image']->value['cover']==1) {?> active<?php }?>">
                <a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['product']->value['link'], ENT_QUOTES, 'UTF-8', true);?>
" title="<?php echo $_smarty_tpl->tpl_vars['imageTitle']->value;?>
" data-href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getImageLink($_smarty_tpl->tpl_vars['product']->value['link_rewrite'],$_smarty_tpl->tpl_vars['imageId']->value,'tm_home_default'), ENT_QUOTES, 'UTF-8', true);?>
">
                    <img class="img-responsive" id="thumb-<?php echo $_smarty_tpl->tpl_vars['image']->value['id_image'];?>
" src="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['link']->value->getImageLink($_smarty_tpl->tpl_vars['product']->value['link_rewrite'],$_smarty_tpl->tpl_vars['imageId']->value,'tm_cart_default'), ENT_QUOTES, 'UTF-8', true);?>
" alt="<?php echo $_smarty_tpl->tpl_vars['imageTitle']->value;?>
" title="<?php echo $_smarty_tpl->tpl_vars['imageTitle']->value;?>
" itemprop="image" />
                </a>
            </li>
        <?php } ?>
    </ul>
<?php }?><?php }} ?>
