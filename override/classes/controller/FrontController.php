<?php

class FrontController extends FrontControllerCore {
    public function initHeader()
    {
        self::$smarty->assign('currentController', get_class($this));
        return parent::initHeader();
    }
    public function init() {
        
        parent::init();
        
        $useSSL = ((isset($this->ssl) && $this->ssl && Configuration::get('PS_SSL_ENABLED')) || Tools::usingSecureMode()) ? true : false;
        $protocol_content = ($useSSL) ? 'https://' : 'http://';
        $base_uri = $protocol_content.Tools::getHttpHost().__PS_BASE_URI__.(!Configuration::get('PS_REWRITING_SETTINGS') ? 'index.php' : '');

        $this->context->smarty->assign(array(
            'custom_picture_path' => 'img/layout_maker/custom_pictures/',
            'original_picture_path'=> 'img/layout_maker/original_picture/',
            'custom_picture_uri'    => $base_uri.'img/layout_maker/custom_pictures/',
            'original_picture_uri'=> $base_uri.'img/layout_maker/original_picture/'));
    }
}