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


class CustomMadeDefaultModuleFrontController extends ModuleFrontController
{

    public function __construct()
    {
        $this->auth = true;
        parent::__construct();
        $this->context = Context::getContext();
        // Declare smarty function to render pagination link
        smartyRegisterFunction(
            $this->context->smarty,
            'function',
            'summarypaginationlink',
            array('CustomMadeDefaultModuleFrontController', 'getSummaryPaginationLink')
        );
    }

    /**
     * @see FrontController::postProcess()
     */
    public function postProcess()
    {
        if (Tools::getValue('process') == 'transformpoints') {
            $this->processTransformPoints();
        }
    }

    /**
     * Transform loyalty point to a voucher
     */
    public function processTransformPoints()
    {
        LoyaltyModuleAdvanced::TransformPoints();
    }

    /**
     * @see FrontController::initContent()
     */
    public function initContent()
    {
        $this->display_column_left = false;
        parent::initContent();

        //$this->context->controller->addJqueryPlugin(array('dimensions', 'cluetip'));
        $this->context->controller->addCSS(_MODULE_DIR_.'custommade/views/css/font-awesome/font-awesome.css');
        $this->context->controller->addCSS(_MODULE_DIR_.'custommade/views/css/bootstrap.css');
        /* $this->context->controller->addCSS(_MODULE_DIR_.'custommade/views/css/style.css'); */
        $this->context->controller->addCSS(_MODULE_DIR_.'custommade/views/css/cropper.css');
        $this->context->controller->addCSS(_MODULE_DIR_.'custommade/views/css/fixedsticky.css');
        $this->context->controller->addCSS(_MODULE_DIR_.'custommade/views/css/custom.css');

        $this->context->controller->addJS(_MODULE_DIR_.'custommade/views/js/jquery.js');
        $this->context->controller->addJS(_MODULE_DIR_.'custommade/views/js/bootstrap.js');
        $this->context->controller->addJS(_MODULE_DIR_.'custommade/views/js/cropper.js');
        $this->context->controller->addJS(_MODULE_DIR_.'custommade/views/js/script.js');
        /* $this->context->controller->addJS(_MODULE_DIR_.'custommade/views/js/custom.js'); */
        $this->context->controller->addJS(_MODULE_DIR_.'custommade/views/js/fixedsticky.js');
        if (Tools::getValue('process') == 'summary') {
            $this->assignSummaryExecution();
        }
    }

    /**
     * Render pagination link for summary
     *
     * @param (array) $params Array with to parameters p (for page number) and n (for nb of items per page)
     * @return string link
     */
    public static function getSummaryPaginationLink($params)
    {
        return Context::getContext()->link->getModuleLink(
            'custommade',
            'default',
            array(
                'process' => 'summary',
            )
        );
    }

    /**
     * Assign summary template
     */
    public function assignSummaryExecution()
    {
        $getUnivers = AuFilDesCoul::getUniversImage();
        $this->context->smarty->assign(array(
            'getUnivers1' => $getUnivers
        ));
	    $this->setTemplate('layoutcustom.tpl');
    }
}
