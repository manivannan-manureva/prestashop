<?php /* Smarty version Smarty-3.1.19, created on 2016-12-01 08:24:27
         compiled from "C:\wamp\www\prestashop\modules\custommade\views\templates\hook\AdminProduct.tpl" */ ?>
<?php /*%%SmartyHeaderCode:76315840248b1162e9-64940643%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7d8dbe2db10a3adb4749bfcb21b640cf72825861' => 
    array (
      0 => 'C:\\wamp\\www\\prestashop\\modules\\custommade\\views\\templates\\hook\\AdminProduct.tpl',
      1 => 1480075230,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '76315840248b1162e9-64940643',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'name' => 0,
    'getCustomize' => 0,
    'token' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_5840248b1cd652_80502510',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5840248b1cd652_80502510')) {function content_5840248b1cd652_80502510($_smarty_tpl) {?>
<div class="panel product-tab">
	<h4><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['name']->value, ENT_QUOTES, 'UTF-8', true);?>
</h4>
	<div class="separation"></div>
	<table>
		<tbody>
			<tr>
				<td valign="top"><label for="prod_customize" style="width:300px;"><?php echo smartyTranslate(array('s'=>'Do you want to customize this product :','mod'=>'custommade'),$_smarty_tpl);?>
</label></td>
				<td>
					<p class="preference_description"><input type="radio" name="prod_customize" id="prod_customize" value="1" <?php if ($_smarty_tpl->tpl_vars['getCustomize']->value->prod_customize==1) {?>checked="checked"<?php }?>/><?php echo smartyTranslate(array('s'=>'Yes','mod'=>'custommade'),$_smarty_tpl);?>
.</p>
				</td>
				<td>					
					<p class="preference_description"><input type="radio" name="prod_customize" id="prod_customize" value="0" <?php if ($_smarty_tpl->tpl_vars['getCustomize']->value->prod_customize!=1) {?>checked="checked"<?php }?>/><?php echo smartyTranslate(array('s'=>'No','mod'=>'custommade'),$_smarty_tpl);?>
.</p>
				</td>
			</tr>
		</tbody>
	</table>
	<div class="panel-footer">
		<a href="index.php?controller=AdminProducts&amp;token=<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['token']->value, ENT_QUOTES, 'UTF-8', true);?>
" class="btn btn-default"><i class="process-icon-cancel"></i><?php echo smartyTranslate(array('s'=>'Cancel','mod'=>'custommade'),$_smarty_tpl);?>
</a>
		<button type="submit" name="submitAddproduct" class="btn btn-default pull-right"><i class="process-icon-save"></i><?php echo smartyTranslate(array('s'=>'Save','mod'=>'custommade'),$_smarty_tpl);?>
</button>
	</div>
</div>
<?php }} ?>
