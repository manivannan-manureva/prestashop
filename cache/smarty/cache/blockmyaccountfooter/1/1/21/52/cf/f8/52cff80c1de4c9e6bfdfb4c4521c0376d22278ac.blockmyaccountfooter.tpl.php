<?php /*%%SmartyHeaderCode:21063584015a25d8e30-85187768%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '52cff80c1de4c9e6bfdfb4c4521c0376d22278ac' => 
    array (
      0 => 'C:\\wamp\\www\\prestashop\\themes\\default-bootstrap\\modules\\blockmyaccountfooter\\blockmyaccountfooter.tpl',
      1 => 1476945586,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '21063584015a25d8e30-85187768',
  'variables' => 
  array (
    'link' => 0,
    'returnAllowed' => 0,
    'voucherAllowed' => 0,
    'HOOK_BLOCK_MY_ACCOUNT' => 0,
    'is_logged' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_584015a26f9212_66825835',
  'cache_lifetime' => 31536000,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_584015a26f9212_66825835')) {function content_584015a26f9212_66825835($_smarty_tpl) {?>
<!-- Block myaccount module -->
<section class="footer-block col-xs-12 col-sm-4">
	<h4><a href="http://127.0.0.1/prestashop/index.php?controller=my-account" title="Manage my customer account" rel="nofollow">My account</a></h4>
	<div class="block_content toggle-footer">
		<ul class="bullet">
			<li><a href="http://127.0.0.1/prestashop/index.php?controller=history" title="My orders" rel="nofollow">My orders</a></li>
						<li><a href="http://127.0.0.1/prestashop/index.php?controller=order-slip" title="My credit slips" rel="nofollow">My credit slips</a></li>
			<li><a href="http://127.0.0.1/prestashop/index.php?controller=addresses" title="My addresses" rel="nofollow">My addresses</a></li>
			<li><a href="http://127.0.0.1/prestashop/index.php?controller=identity" title="Manage my personal information" rel="nofollow">My personal info</a></li>
						
            		</ul>
	</div>
</section>
<!-- /Block myaccount module -->
<?php }} ?>
