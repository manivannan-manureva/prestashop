<?php /* Smarty version Smarty-3.1.19, created on 2016-12-01 13:04:27
         compiled from "C:\wamp\www\prestashop\admin\themes\default\template\controllers\modules\warning_module.tpl" */ ?>
<?php /*%%SmartyHeaderCode:21473584011cbcf2001-79491061%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7c5663fb9cc9fed2eb84af44ee500cdb7305088b' => 
    array (
      0 => 'C:\\wamp\\www\\prestashop\\admin\\themes\\default\\template\\controllers\\modules\\warning_module.tpl',
      1 => 1476945584,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '21473584011cbcf2001-79491061',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'module_link' => 0,
    'text' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_584011cbd0cd24_50336239',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_584011cbd0cd24_50336239')) {function content_584011cbd0cd24_50336239($_smarty_tpl) {?>
<a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['module_link']->value, ENT_QUOTES, 'UTF-8', true);?>
"><?php echo $_smarty_tpl->tpl_vars['text']->value;?>
</a><?php }} ?>
