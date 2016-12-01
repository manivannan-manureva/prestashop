<?php /* Smarty version Smarty-3.1.19, created on 2016-12-01 08:18:41
         compiled from "C:\wamp\www\prestashop\modules\custommade\views\templates\admin\configure.tpl" */ ?>
<?php /*%%SmartyHeaderCode:678258402331b81660-48259326%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0d7c9a8e164f95615b022f2107a3e0fcdfb6867f' => 
    array (
      0 => 'C:\\wamp\\www\\prestashop\\modules\\custommade\\views\\templates\\admin\\configure.tpl',
      1 => 1480069207,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '678258402331b81660-48259326',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_58402331c59a18_22986082',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58402331c59a18_22986082')) {function content_58402331c59a18_22986082($_smarty_tpl) {?>

<div class="panel">
	<h3><i class="icon icon-credit-card"></i> <?php echo smartyTranslate(array('s'=>'Customize Wall Mural','mod'=>'custommade'),$_smarty_tpl);?>
</h3>
	<p>
		<strong><?php echo smartyTranslate(array('s'=>'Here is my new generic module!','mod'=>'custommade'),$_smarty_tpl);?>
</strong><br />
		<?php echo smartyTranslate(array('s'=>'Thanks to PrestaShop, now I have a great module.','mod'=>'custommade'),$_smarty_tpl);?>
<br />
		<?php echo smartyTranslate(array('s'=>'I can configure it using the following configuration form.','mod'=>'custommade'),$_smarty_tpl);?>

	</p>
	<br />
	<p>
		<?php echo smartyTranslate(array('s'=>'This module will boost your sales!','mod'=>'custommade'),$_smarty_tpl);?>

	</p>
</div>

<div class="panel">
	<h3><i class="icon icon-tags"></i> <?php echo smartyTranslate(array('s'=>'Documentation','mod'=>'custommade'),$_smarty_tpl);?>
</h3>
	<p>
		&raquo; <?php echo smartyTranslate(array('s'=>'You can get a PDF documentation to configure this module','mod'=>'custommade'),$_smarty_tpl);?>
 :
		<ul>
			<li><a href="#" target="_blank"><?php echo smartyTranslate(array('s'=>'English','mod'=>'custommade'),$_smarty_tpl);?>
</a></li>
			<li><a href="#" target="_blank"><?php echo smartyTranslate(array('s'=>'French','mod'=>'custommade'),$_smarty_tpl);?>
</a></li>
		</ul>
	</p>
</div>
<?php }} ?>
