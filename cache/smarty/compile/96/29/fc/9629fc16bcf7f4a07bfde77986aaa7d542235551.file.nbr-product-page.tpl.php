<?php /* Smarty version Smarty-3.1.19, created on 2016-08-03 05:36:20
         compiled from "C:\wamp64\www\shop\themes\theme1189\nbr-product-page.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2909257a1bb149e0651-13364245%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9629fc16bcf7f4a07bfde77986aaa7d542235551' => 
    array (
      0 => 'C:\\wamp64\\www\\shop\\themes\\theme1189\\nbr-product-page.tpl',
      1 => 1469775910,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2909257a1bb149e0651-13364245',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'p' => 0,
    'category' => 0,
    'link' => 0,
    'manufacturer' => 0,
    'supplier' => 0,
    'nb_products' => 0,
    'nArray' => 0,
    'requestNb' => 0,
    'search_query' => 0,
    'tag' => 0,
    'paginationId' => 0,
    'requestKey' => 0,
    'requestValue' => 0,
    'lastnValue' => 0,
    'nValue' => 0,
    'n' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_57a1bb14d340a3_26878549',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57a1bb14d340a3_26878549')) {function content_57a1bb14d340a3_26878549($_smarty_tpl) {?><?php if (isset($_smarty_tpl->tpl_vars['p']->value)&&$_smarty_tpl->tpl_vars['p']->value) {?>
	<?php if (isset($_GET['id_category'])&&$_GET['id_category']&&isset($_smarty_tpl->tpl_vars['category']->value)) {?>
		<?php if (isset($_smarty_tpl->tpl_vars['requestPage'])) {$_smarty_tpl->tpl_vars['requestPage'] = clone $_smarty_tpl->tpl_vars['requestPage'];
$_smarty_tpl->tpl_vars['requestPage']->value = $_smarty_tpl->tpl_vars['link']->value->getPaginationLink('category',$_smarty_tpl->tpl_vars['category']->value,false,false,true,false); $_smarty_tpl->tpl_vars['requestPage']->nocache = null; $_smarty_tpl->tpl_vars['requestPage']->scope = 0;
} else $_smarty_tpl->tpl_vars['requestPage'] = new Smarty_variable($_smarty_tpl->tpl_vars['link']->value->getPaginationLink('category',$_smarty_tpl->tpl_vars['category']->value,false,false,true,false), null, 0);?>
		<?php if (isset($_smarty_tpl->tpl_vars['requestNb'])) {$_smarty_tpl->tpl_vars['requestNb'] = clone $_smarty_tpl->tpl_vars['requestNb'];
$_smarty_tpl->tpl_vars['requestNb']->value = $_smarty_tpl->tpl_vars['link']->value->getPaginationLink('category',$_smarty_tpl->tpl_vars['category']->value,true,false,false,true); $_smarty_tpl->tpl_vars['requestNb']->nocache = null; $_smarty_tpl->tpl_vars['requestNb']->scope = 0;
} else $_smarty_tpl->tpl_vars['requestNb'] = new Smarty_variable($_smarty_tpl->tpl_vars['link']->value->getPaginationLink('category',$_smarty_tpl->tpl_vars['category']->value,true,false,false,true), null, 0);?>
	<?php } elseif (isset($_GET['id_manufacturer'])&&$_GET['id_manufacturer']&&isset($_smarty_tpl->tpl_vars['manufacturer']->value)) {?>
		<?php if (isset($_smarty_tpl->tpl_vars['requestPage'])) {$_smarty_tpl->tpl_vars['requestPage'] = clone $_smarty_tpl->tpl_vars['requestPage'];
$_smarty_tpl->tpl_vars['requestPage']->value = $_smarty_tpl->tpl_vars['link']->value->getPaginationLink('manufacturer',$_smarty_tpl->tpl_vars['manufacturer']->value,false,false,true,false); $_smarty_tpl->tpl_vars['requestPage']->nocache = null; $_smarty_tpl->tpl_vars['requestPage']->scope = 0;
} else $_smarty_tpl->tpl_vars['requestPage'] = new Smarty_variable($_smarty_tpl->tpl_vars['link']->value->getPaginationLink('manufacturer',$_smarty_tpl->tpl_vars['manufacturer']->value,false,false,true,false), null, 0);?>
		<?php if (isset($_smarty_tpl->tpl_vars['requestNb'])) {$_smarty_tpl->tpl_vars['requestNb'] = clone $_smarty_tpl->tpl_vars['requestNb'];
$_smarty_tpl->tpl_vars['requestNb']->value = $_smarty_tpl->tpl_vars['link']->value->getPaginationLink('manufacturer',$_smarty_tpl->tpl_vars['manufacturer']->value,true,false,false,true); $_smarty_tpl->tpl_vars['requestNb']->nocache = null; $_smarty_tpl->tpl_vars['requestNb']->scope = 0;
} else $_smarty_tpl->tpl_vars['requestNb'] = new Smarty_variable($_smarty_tpl->tpl_vars['link']->value->getPaginationLink('manufacturer',$_smarty_tpl->tpl_vars['manufacturer']->value,true,false,false,true), null, 0);?>
	<?php } elseif (isset($_GET['id_supplier'])&&$_GET['id_supplier']&&isset($_smarty_tpl->tpl_vars['supplier']->value)) {?>
		<?php if (isset($_smarty_tpl->tpl_vars['requestPage'])) {$_smarty_tpl->tpl_vars['requestPage'] = clone $_smarty_tpl->tpl_vars['requestPage'];
$_smarty_tpl->tpl_vars['requestPage']->value = $_smarty_tpl->tpl_vars['link']->value->getPaginationLink('supplier',$_smarty_tpl->tpl_vars['supplier']->value,false,false,true,false); $_smarty_tpl->tpl_vars['requestPage']->nocache = null; $_smarty_tpl->tpl_vars['requestPage']->scope = 0;
} else $_smarty_tpl->tpl_vars['requestPage'] = new Smarty_variable($_smarty_tpl->tpl_vars['link']->value->getPaginationLink('supplier',$_smarty_tpl->tpl_vars['supplier']->value,false,false,true,false), null, 0);?>
		<?php if (isset($_smarty_tpl->tpl_vars['requestNb'])) {$_smarty_tpl->tpl_vars['requestNb'] = clone $_smarty_tpl->tpl_vars['requestNb'];
$_smarty_tpl->tpl_vars['requestNb']->value = $_smarty_tpl->tpl_vars['link']->value->getPaginationLink('supplier',$_smarty_tpl->tpl_vars['supplier']->value,true,false,false,true); $_smarty_tpl->tpl_vars['requestNb']->nocache = null; $_smarty_tpl->tpl_vars['requestNb']->scope = 0;
} else $_smarty_tpl->tpl_vars['requestNb'] = new Smarty_variable($_smarty_tpl->tpl_vars['link']->value->getPaginationLink('supplier',$_smarty_tpl->tpl_vars['supplier']->value,true,false,false,true), null, 0);?>
	<?php } else { ?>
		<?php if (isset($_smarty_tpl->tpl_vars['requestPage'])) {$_smarty_tpl->tpl_vars['requestPage'] = clone $_smarty_tpl->tpl_vars['requestPage'];
$_smarty_tpl->tpl_vars['requestPage']->value = $_smarty_tpl->tpl_vars['link']->value->getPaginationLink(false,false,false,false,true,false); $_smarty_tpl->tpl_vars['requestPage']->nocache = null; $_smarty_tpl->tpl_vars['requestPage']->scope = 0;
} else $_smarty_tpl->tpl_vars['requestPage'] = new Smarty_variable($_smarty_tpl->tpl_vars['link']->value->getPaginationLink(false,false,false,false,true,false), null, 0);?>
		<?php if (isset($_smarty_tpl->tpl_vars['requestNb'])) {$_smarty_tpl->tpl_vars['requestNb'] = clone $_smarty_tpl->tpl_vars['requestNb'];
$_smarty_tpl->tpl_vars['requestNb']->value = $_smarty_tpl->tpl_vars['link']->value->getPaginationLink(false,false,true,false,false,true); $_smarty_tpl->tpl_vars['requestNb']->nocache = null; $_smarty_tpl->tpl_vars['requestNb']->scope = 0;
} else $_smarty_tpl->tpl_vars['requestNb'] = new Smarty_variable($_smarty_tpl->tpl_vars['link']->value->getPaginationLink(false,false,true,false,false,true), null, 0);?>
	<?php }?>
	<!-- nbr product/page -->
	<?php if ($_smarty_tpl->tpl_vars['nb_products']->value>$_smarty_tpl->tpl_vars['nArray']->value[0]) {?>
		<form action="<?php if (!is_array($_smarty_tpl->tpl_vars['requestNb']->value)) {?><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['requestNb']->value, ENT_QUOTES, 'UTF-8', true);?>
<?php } else { ?><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['requestNb']->value['requestUrl'], ENT_QUOTES, 'UTF-8', true);?>
<?php }?>" method="get" class="nbrItemPage">
			<div class="clearfix selector1">
				<?php if (isset($_smarty_tpl->tpl_vars['search_query']->value)&&$_smarty_tpl->tpl_vars['search_query']->value) {?>
					<input type="hidden" name="search_query" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['search_query']->value, ENT_QUOTES, 'UTF-8', true);?>
" />
				<?php }?>
				<?php if (isset($_smarty_tpl->tpl_vars['tag']->value)&&$_smarty_tpl->tpl_vars['tag']->value&&!is_array($_smarty_tpl->tpl_vars['tag']->value)) {?>
					<input type="hidden" name="tag" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['tag']->value, ENT_QUOTES, 'UTF-8', true);?>
" />
				<?php }?>
				<label for="nb_item<?php if (isset($_smarty_tpl->tpl_vars['paginationId']->value)) {?>_<?php echo $_smarty_tpl->tpl_vars['paginationId']->value;?>
<?php }?>">
					<?php echo smartyTranslate(array('s'=>'Show'),$_smarty_tpl);?>

				</label>
				<?php if (is_array($_smarty_tpl->tpl_vars['requestNb']->value)) {?>
					<?php  $_smarty_tpl->tpl_vars['requestValue'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['requestValue']->_loop = false;
 $_smarty_tpl->tpl_vars['requestKey'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['requestNb']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['requestValue']->key => $_smarty_tpl->tpl_vars['requestValue']->value) {
$_smarty_tpl->tpl_vars['requestValue']->_loop = true;
 $_smarty_tpl->tpl_vars['requestKey']->value = $_smarty_tpl->tpl_vars['requestValue']->key;
?>
						<?php if ($_smarty_tpl->tpl_vars['requestKey']->value!='requestUrl') {?>
							<input type="hidden" name="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['requestKey']->value, ENT_QUOTES, 'UTF-8', true);?>
" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['requestValue']->value, ENT_QUOTES, 'UTF-8', true);?>
" />
						<?php }?>
					<?php } ?>
				<?php }?>
				<select name="n" id="nb_item<?php if (isset($_smarty_tpl->tpl_vars['paginationId']->value)) {?>_<?php echo $_smarty_tpl->tpl_vars['paginationId']->value;?>
<?php }?>" class="form-control">
					<?php if (isset($_smarty_tpl->tpl_vars["lastnValue"])) {$_smarty_tpl->tpl_vars["lastnValue"] = clone $_smarty_tpl->tpl_vars["lastnValue"];
$_smarty_tpl->tpl_vars["lastnValue"]->value = "0"; $_smarty_tpl->tpl_vars["lastnValue"]->nocache = null; $_smarty_tpl->tpl_vars["lastnValue"]->scope = 0;
} else $_smarty_tpl->tpl_vars["lastnValue"] = new Smarty_variable("0", null, 0);?>
					<?php  $_smarty_tpl->tpl_vars['nValue'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['nValue']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['nArray']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['nValue']->key => $_smarty_tpl->tpl_vars['nValue']->value) {
$_smarty_tpl->tpl_vars['nValue']->_loop = true;
?>
						<?php if ($_smarty_tpl->tpl_vars['lastnValue']->value<=$_smarty_tpl->tpl_vars['nb_products']->value) {?>
							<option value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['nValue']->value, ENT_QUOTES, 'UTF-8', true);?>
" <?php if ($_smarty_tpl->tpl_vars['n']->value==$_smarty_tpl->tpl_vars['nValue']->value) {?>selected="selected"<?php }?>><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['nValue']->value, ENT_QUOTES, 'UTF-8', true);?>
</option>
						<?php }?>
						<?php if (isset($_smarty_tpl->tpl_vars["lastnValue"])) {$_smarty_tpl->tpl_vars["lastnValue"] = clone $_smarty_tpl->tpl_vars["lastnValue"];
$_smarty_tpl->tpl_vars["lastnValue"]->value = $_smarty_tpl->tpl_vars['nValue']->value; $_smarty_tpl->tpl_vars["lastnValue"]->nocache = null; $_smarty_tpl->tpl_vars["lastnValue"]->scope = 0;
} else $_smarty_tpl->tpl_vars["lastnValue"] = new Smarty_variable($_smarty_tpl->tpl_vars['nValue']->value, null, 0);?>
					<?php } ?>
				</select>
				<span><?php echo smartyTranslate(array('s'=>'per page'),$_smarty_tpl);?>
</span>
			</div>
		</form>
	<?php }?>
	<!-- /nbr product/page -->
<?php }?><?php }} ?>
