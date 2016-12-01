<?php
/**
* NOTICE OF LICENSE
*
* This source file is subject to a commercial license from 202 ecommerce
* Use, copy, modification or distribution of this source file without written
* license agreement from 202 ecommerce is strictly forbidden.
*
* @author    202 ecommerce <contact@202-ecommerce.com>
* @copyright Copyright (c) 202 ecommerce 2014
* @license   Commercial license
*
* Support <support@202-ecommerce.com>
*/

if (!defined('_PS_VERSION_')) { die(header('HTTP/1.0 404 Not Found')); }
require_once dirname(__FILE__).'/models/AuFilDesCoul.php';

class Custommade extends Module
{
    protected $config_form = false;

    public function __construct()
    {
        $this->name = 'custommade';
        $this->default_name = 'aufildescouleurssetting';
        $this->tab = 'pricing_promotion';
        $this->version = '1.0.0';
        $this->author = '202-ecommerce';
        $this->need_instance = 0;
        /**
         * Set $this->bootstrap to true if your module is compliant with bootstrap (PrestaShop 1.6)
         */
        $this->bootstrap = true;
        parent::__construct();
        $this->displayName = $this->l('Customize Wall Mural');
        $this->description = $this->l('Adds an advertisement block to selected sections of your e-commerce website.');
        $this->confirmUninstall = $this->l('Are you sure you want to uninstall my module?');
        $this->ps_versions_compliancy = array('min' => '1.6', 'max' => _PS_VERSION_);
    }

    /**
     * Don't forget to create update methods if needed:
     * http://doc.prestashop.com/display/PS16/Enabling+the+Auto-Update
     */
    public function install()
    {
        Configuration::updateValue('CUSTOMMADE_LIVE_MODE', false);
        // Install Tabs
        $parent_tab = new Tab();
        // Need a foreach for the language
        $parent_tab->id_parent = Tab::getIdFromClassName('AdminControllerParentClassName');
        $parent_tab->class_name = 'CustomMadeAdmin';
        $parent_tab->module = $this->name;

        $languages = Language::getLanguages();
        foreach ($languages as $lang) {
            switch ($lang['iso_code']) {
                case 'fr':
                    $name = 'Afficher la liste des pièces';
                    break;

                default:
                    $name = 'Display by Room List';
                    break;
            }
            $parent_tab->name[$lang['id_lang']] = $name;
        }
        $parent_tab->add();

        return parent::install() && 
            $this->installSQL() &&
            $this->registerHook('header') &&
            $this->registerHook('displayLeftColumn') &&
            $this->registerHook('backOfficeHeader') && 
            $this->registerHook('displayAdminProductsExtra') && 
            $this->registerHook('actionProductSave') && 
            $this->registerHook('displayAdminCustomers') &&
            $this->registerHook('displayRightColumnProduct');
    }

    /**
     * Install SQL
     * @return boolean
     */
    private function installSQL()
    {
        $sql = '
            CREATE TABLE `'._DB_PREFIX_.Tools::strtolower($this->default_name).'` (
                `id_afdc` INT UNSIGNED NOT NULL AUTO_INCREMENT,
                `id_product` INT UNSIGNED NOT NULL DEFAULT 1,
                `prod_customize` INT UNSIGNED NOT NULL DEFAULT 0,
                `date_add` DATETIME NOT NULL,
                `date_upd` DATETIME NOT NULL,
                PRIMARY KEY (`id_afdc`)
            ) DEFAULT CHARSET=utf8 ;';
          
        $return = DB::getInstance()->Execute($sql);
        return $return;
    }

    public function uninstall()
    {
        Configuration::deleteByName('CUSTOMMADE_LIVE_MODE');
        $sql = 'DROP TABLE IF EXISTS `'._DB_PREFIX_.Tools::strtolower($this->default_name).'`';
        if (parent::uninstall() === false || DB::getInstance()->Execute($sql) === false) {
            return false;
        }
        // ID tab
        $id_tab = Tab::getIdFromClassName('AdminControllerParentClassName');
        // Create object
        $tab = new Tab($id_tab);
        // Delete tab
        if (!$tab->delete()) {
            return false;
        }
        return true;
    }

    /**
     * Load the configuration form
     */
    public function getContent()
    {
        /**
         * If values have been submitted in the form, process.
         */
        if (((bool)Tools::isSubmit('submitCustommadeModule')) == true) {
            $this->postProcess();
        }
        $this->context->smarty->assign('module_dir', $this->_path);
        $output = $this->context->smarty->fetch($this->local_path.'views/templates/admin/configure.tpl');
        return $output.$this->renderForm();
    }

    /**
     * Create the form that will be displayed in the configuration of your module.
     */
    protected function renderForm()
    {
        $helper = new HelperForm();
        $helper->show_toolbar = false;
        $helper->table = $this->table;
        $helper->module = $this;
        $helper->default_form_language = $this->context->language->id;
        $helper->allow_employee_form_lang = Configuration::get('PS_BO_ALLOW_EMPLOYEE_FORM_LANG', 0);

        $helper->identifier = $this->identifier;
        $helper->submit_action = 'submitCustommadeModule';
        $helper->currentIndex = $this->context->link->getAdminLink('AdminModules', false)
            .'&configure='.$this->name.'&tab_module='.$this->tab.'&module_name='.$this->name;
        $helper->token = Tools::getAdminTokenLite('AdminModules');
        $helper->tpl_vars = array(
            'fields_value' => $this->getConfigFormValues(), /* Add values for your inputs */
            'languages' => $this->context->controller->getLanguages(),
            'id_language' => $this->context->language->id,
        );
        return $helper->generateForm(array($this->getConfigForm()));
    }

    /**
     * Create the structure of your form.
     */
    protected function getConfigForm()
    {
        return array(
            'form' => array(
                'legend' => array(
                'title' => $this->l('Settings'),
                'icon' => 'icon-cogs',
                ),
                'input' => array(
                    array(
                        'type' => 'switch',
                        'label' => $this->l('Live mode'),
                        'name' => 'CUSTOMMADE_LIVE_MODE',
                        'is_bool' => true,
                        'desc' => $this->l('Use this module in live mode'),
                        'values' => array(
                            array(
                                'id' => 'active_on',
                                'value' => true,
                                'label' => $this->l('Enabled')
                            ),
                            array(
                                'id' => 'active_off',
                                'value' => false,
                                'label' => $this->l('Disabled')
                            )
                        ),
                    ),
                    array(
                        'col' => 3,
                        'type' => 'text',
                        'prefix' => '<i class="icon icon-envelope"></i>',
                        'desc' => $this->l('Enter a valid email address'),
                        'name' => 'CUSTOMMADE_ACCOUNT_EMAIL',
                        'label' => $this->l('Email'),
                    ),
                    array(
                        'type' => 'password',
                        'name' => 'CUSTOMMADE_ACCOUNT_PASSWORD',
                        'label' => $this->l('Password'),
                    ),
                ),
                'submit' => array(
                    'title' => $this->l('Save'),
                ),
            ),
        );
    }

    /**
     * Set values for the inputs.
     */
    protected function getConfigFormValues()
    {
        return array(
            'CUSTOMMADE_LIVE_MODE' => Configuration::get('CUSTOMMADE_LIVE_MODE', true),
            'CUSTOMMADE_ACCOUNT_EMAIL' => Configuration::get('CUSTOMMADE_ACCOUNT_EMAIL', 'contact@prestashop.com'),
            'CUSTOMMADE_ACCOUNT_PASSWORD' => Configuration::get('CUSTOMMADE_ACCOUNT_PASSWORD', null),
        );
    }

    /**
     * Save form data.
     */
    protected function postProcess()
    {
        $form_values = $this->getConfigFormValues();

        foreach (array_keys($form_values) as $key) {
            Configuration::updateValue($key, Tools::getValue($key));
        }
    }

    public function hookdisplayAdminProductsExtra($params)
    {
        $ver= _PS_VERSION_;
        $datas = array(
            'name'    => $this->displayName,
            'getCustomize' => AuFilDesCoul::getAuFilDesByIDProduct((int)Tools::getValue('id_product'))
        );
        $this->context->smarty->assign($datas);
        return $this->display(__FILE__, 'AdminProduct.tpl');
    }

   

    /**
     * displayRightColumnProduct
     * @param array params
     * @return boolean
     */
    public function hookdisplayRightColumnProduct($params)
    {
        $product = new Product((int)Tools::getValue('id_product'));
        $prod_det = AuFilDesCoul::getAuFilDesByIDProduct((int)$product->id, true);
        if (Validate::isLoadedObject($product)) {
            $customize = ($prod_det->prod_customize !='' || $prod_det->prod_customize !='0')?(int)$prod_det->prod_customize : '0';
            if ($customize != '' || $customize != '0') {
                $this->smarty->assign(
                    array(
                        'prodCustomizeStatus' => (int)$customize
                    ));
                return $this->display(__FILE__, 'product.tpl');
            }
        }
        return false;
    }

    /**
    * Add the CSS & JavaScript files you want to be loaded in the BO.
    */
    public function hookBackOfficeHeader()
    {
        if (Tools::getValue('module_name') == $this->name) {
            $this->context->controller->addJS($this->_path.'views/js/back.js');
            $this->context->controller->addCSS($this->_path.'views/css/back.css');
        }
    }

    /**
     * Add the CSS & JavaScript files you want to be added on the FO.
     */
    public function hookHeader()
    {
        $this->context->controller->addJS($this->_path.'/views/js/front.js');
        $this->context->controller->addCSS($this->_path.'/views/css/front.css');
    }

    /**
     * Save Product
     * @param array
     * @return boolean
     */
    public function hookactionProductSave($product)
    {
        return $this->saveAndUpdate($_POST);
    }

    /**
     * Add or Update product
     * @param array
     * @return boolean
     */
    private function saveAndUpdate($product)
    {
        $prod_save = AuFilDesCoul::getAuFilDesByIDProduct($product['id_product']);
        $customize = ($prod_save->id_product)?$prod_save->id_product:'';
        if ($customize == '') {
            $prod_save->id_product = (int)$product['id_product'];
            $prod_save->prod_customize = ($product['prod_customize']!='')?(int)$product['prod_customize']:'0';
            return $prod_save->save();
        } else {
            $prod_customize = ($product['prod_customize'] != '' || $product['prod_customize'] != '0')?(int)$product['prod_customize'] : '0';
            $sql = 'UPDATE '._DB_PREFIX_."aufildescouleurssetting SET prod_customize =". $prod_customize." WHERE id_product =". $product['id_product'];
            if (!Db::getInstance()->execute($sql)) {
                die('error!');
            }
        }
    }
}
