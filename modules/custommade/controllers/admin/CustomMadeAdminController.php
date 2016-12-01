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

if (!defined('_PS_VERSION_')) {
    die(header('HTTP/1.0 404 Not Found'));
}
require_once _PS_MODULE_DIR_.'custommade/customMade.php';
require_once _PS_MODULE_DIR_.'custommade/classes/Universe.php';
class CustomMadeAdminController extends ModuleAdminController
{

    var $custommadeObj;
    var $custModuleFolderName;
    public function __construct()
    {
        $this->bootstrap = true;
        $this->context = Context::getContext();
        $this->table = 'universe';
        $this->identifier = 'id_universe';
        $this->className = 'Universe';
        $this->_defaultOrderBy = 'id_universe';
        $this->show_toolbar_options = true;
        $this->lang = FALSE;
        $this->addRowAction('edit');
        //$this->addRowAction('view');
        $this->addRowAction('delete');
        $this->custommadeObj = new Custommade();
        $this->custModuleFolderName = _PS_MODULE_DIR_.$this->custommadeObj->name.'/views/img/';
        $this->bulk_actions = array('delete' => array('text' => $this->l('Delete selected'),
                    'confirm' => $this->l('Delete selected items?')), );
        $this->fields_list['universe_name'] = array(
            'title' => $this->l('Universe Name'),
            'align' => 'center',
            'width' => 40,
        );
        $this->fields_list['active'] = array(
            'title'  => $this->l('Displayed'),
            'align'  => 'center',
            'width'  => 25,
            'active' => 'active',
            'type'   => 'bool',
        );
        parent::__construct();
    }

    public function renderView()
    {
        $html = parent::renderView();
    }

    public function renderForm()
    {
        if (empty($this->toolbar_title)) {
            $this->initToolbarTitle();
        }
        if (!($obj = $this->loadObject(true)))
        return;
        $helper = new HelperForm();
        $this->setHelperDisplay($helper);
        Shop::addTableAssociation($this->table, array('type' => 'shop'));
        $this->fields_form = array(
            'legend' => array(
                'title' => $this->module->l('Add Universe', 'CustomMadeAdmin'),
                'image' => dirname(__FILE__).'/logo.gif'
            ),
            'submit' => array(
                'name' => 'subtmitAddCustommade',
                'title' => $this->module->l('Save', 'CustomMadeAdmin'),
                'class' => (version_compare(_PS_VERSION_, '1.6', '<') ? 'button' : 'btn btn-default pull-right')
            ),
            'input' => array(
                array(
                    'type' => 'text',
                    'label' => $this->module->l('Universe Name:', 'CustomMadeAdmin'),
                    'name' => 'universe_name',
                    'required' => true,
                    'hint' => $this->l('Invalid characters:').' <>;=#{}',
                ),
                array(
                    'type' => 'file',
                    'label' => $this->module->l('Photo:', 'CustomMadeAdmin'),
                    'name' => 'image',
                    'required' => true,
                    'hint' => $this->l('Image format not recognized, allowed formats are: .gif, .jpg, .png'),
                ),
                array(
                    'type' => 'radio',
                    'label' => $this->l('Displayed:'),
                    'name' => 'active',
                    'required' => FALSE,
                    'class' => 't',
                    'is_bool' => FALSE,
                    'values' => array(
                        array(
                            'id' => 'require_on',
                            'value' => 1,
                            'label' => $this->l('Yes')
                        ), 
                        array(
                            'id' => 'require_off',
                            'value' => 0,
                            'label' => $this->l('No')
                        )
                    )
                ),
            )
        );
        return parent::renderForm();
    }

    public function postProcess()
    {
        $obj = $this->loadObject(true);
        if (!($obj = $this->loadObject(true))) {
            return;
        }
        if (Tools::getIsset('cancel')) {
            Tools::redirectAdmin(self::$currentIndex.'&token='.Tools::getAdminTokenLite('CustomMadeAdmin'));
        }
        if (Tools::isSubmit('submitAdduniverse') || @$_FILES[$name]['name'] != null && @$_FILES['image']['size'] > 0) {
            $name = 'image';
            $tmpName = tempnam(_PS_TMP_IMG_DIR_, 'PS');
            $images_types = array(array('id_image_type' => 1,
                                        'name'          => 'medium_default',
                                        'width'         => 1600,
                                        'height'        => 1300
                                        )
                                );
            $formated_medium = ImageType::getFormatedName('medium');
            foreach ($images_types as $k => $image_type) {
                if ($formated_medium == $image_type['name']) {

                    if ($error = ImageManager::validateUpload($_FILES[$name], Tools::getMaxUploadSize())) {
                        $this->errors[] = $error;
                    } elseif (!($tmpName = tempnam(_PS_TMP_IMG_DIR_, 'PS')) || !move_uploaded_file($_FILES[$name]['tmp_name'], $tmpName)) {
                        $ret = false;
                    } else {
                        $type = $_FILES[$name]['type'];
                        $imgName = $_FILES[$name]['name'];
                        $imageName = explode('.', $imgName);
                        $imageType = explode('/', $type);
                        $id_universe = (int)Tools::getValue('id_universe');
                        if (!ImageManager::resize(
                            $tmpName,
                            $this->custModuleFolderName.'universe'.'-'.stripslashes($imageName[0]).'.'.$imageType[1],
                            (int)$image_type['width'],
                            (int)$image_type['height']
                        )) {
                            $this->errors = Tools::displayError('An error occurred while uploading thumbnail image.');
                        } elseif (($infos = getimagesize($tmpName)) && is_array($infos)) {
                            ImageManager::resize(
                                $tmpName,
                                $this->custModuleFolderName.'univ_thump'.'_'.stripslashes($imageName[0]).'.'.$imageType[1],
                                (int)$infos[0],
                                (int)$infos[1]
                            );                            
                            if (isset($id_universe) && !empty($id_universe) && $id_universe != 0) {

                                $count_cover_image = Db::getInstance()->getValue('
                                    SELECT `image` FROM '._DB_PREFIX_.'universe u WHERE u.`id_universe` = '.(int)$id_universe);

                                $count_cover_thump = Db::getInstance()->getValue('
                                    SELECT `thump` FROM '._DB_PREFIX_.'universe u WHERE u.`id_universe` = '.(int)$id_universe);

                                if (file_exists($this->custModuleFolderName.$count_cover_image)) {
                                    @unlink($this->custModuleFolderName.$count_cover_image);
                                }
                                if (file_exists($this->custModuleFolderName.$count_cover_thump)) {
                                    @unlink($this->custModuleFolderName.$count_cover_thump);
                                }
                            }
                        }
                        if (count($this->errors)) {
                            $ret = false;
                        }
                        unlink($tmpName);
                        
                        $universe_name = (string)Tools::getValue('universe_name');
                        $image = 'universe-'.stripslashes($imageName[0]).'.'.$imageType[1];
                        $thump = 'univ_thump_'.stripslashes($imageName[0]).'.'.$imageType[1];
                        $active = (int)Tools::getValue('active');
                        $this->imageupload($id_universe,$universe_name,$image,$thump,$active);
                        $ret = true;
                    }
                }
            }
        }
        return parent::postProcess();
    }

    private function imageupload($id_universe=false,$universe_name,$image,$thump,$active)
    {
        if (isset($id_universe) && !empty($id_universe) && $id_universe != 0) {
            $sql = "UPDATE "._DB_PREFIX_."universe SET 
                                                    universe_name = '".$universe_name."',
                                                    image = '".$image."',
                                                    thump = '".$thump."',
                                                    active = '".$active."'
                                                WHERE id_universe = ".$id_universe;
            if (Db::getInstance()->execute($sql)) {
                Tools::redirectAdmin(self::$currentIndex.'&token='.Tools::getAdminTokenLite('CustomMadeAdmin'));
            } else {
                return false;
            }            
        } else {            
            $sql =' INSERT INTO `'._DB_PREFIX_.'universe` (`universe_name`, `image`, `thump`, `active`) VALUES ("'.$universe_name.'", "'.$image.'","'.$thump.'", "'.$active.'")';
            if (Db::getInstance()->execute($sql)) {
                Tools::redirectAdmin(self::$currentIndex.'&token='.Tools::getAdminTokenLite('CustomMadeAdmin'));
            } else {
                return false;
            }
        }
    }

    protected function processBulkDelete()
    {
        if ($this->tabAccess['delete'] === '1') {
            foreach (Tools::getValue($this->table.'Box') as $id_universe) {
                $uniDelete = new Universe((int)$id_universe);
                if (file_exists($this->custModuleFolderName.$uniDelete->image)) {
                    @unlink($this->custModuleFolderName.$uniDelete->image);
                }
                if (file_exists($this->custModuleFolderName.$uniDelete->thump)) {
                    @unlink($this->custModuleFolderName.$uniDelete->thump);
                }
            }
            parent::processBulkDelete();
            return true;
        } else {
            $this->errors[] = Tools::displayError('You do not have permission to delete this.');
        }
        return false;
    }

    public function processDelete()
    {
        if ($this->tabAccess['delete'] === '1') {
            $uniDelete = $this->loadObject();
            if (file_exists($this->custModuleFolderName.$uniDelete->image)) {
                @unlink($this->custModuleFolderName.$uniDelete->image);
            }
            if (file_exists($this->custModuleFolderName.$uniDelete->thump)) {
                @unlink($this->custModuleFolderName.$uniDelete->thump);
            }
            parent::processDelete();
            return true;
        } else {
            $this->errors[] = Tools::displayError('You do not have permission to delete this.');
        }
        return false;
    }
}