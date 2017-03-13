<?php

class CustomShopAdminContactControllerCore extends CustomShopAdminControllerCore {

    /**
     * Assign template vars related to page content
     * @see FrontController::initContent()
     */
    public function init() {
        parent::init();
    }

    public function initContent() {
        parent::initContent();
        $aSubmission = [];
        $sMessage = Tools::getValue('message');
        $sSubject = Tools::getValue('subject');
        if (Tools::getValue('subject') && Tools::getValue('message')) {
            // get Prestashop email contact
            $sPrestashopContact = '';
            $aContacts = Contact::getContacts($this->context->language->id);
            foreach ($aContacts as $aContact) {
                $sPrestashopContact = ($aContact['name'] == 'Customer service' ? $aContact['email'] : $aContacts[0]['email']);
            }
            $data = array();
            $data['{shop_name}'] = Tools::safeOutput(Configuration::get('PS_SHOP_NAME', null, null, null));
            $data['{firstname}'] = $this->custom_shop_account['firstname'];
            $data['{lastname}'] = $this->custom_shop_account['lastname'];
            $data['{email}'] = $this->custom_shop_account['email'];
            $data['{message}'] = Tools::getValue('message');
            $data['{shopname}'] = $this->custom_shop['name'];
            $mail = Mail::Send($this->context->language->id, 'custom_shop_admin_contact', 'Message from a shop owner: ' . Tools::getValue('subject'), $data, $sPrestashopContact);
            if ($mail) {
                $aSubmission['success'] = true;
            } else {
                $aSubmission['success'] = false;
                $aSubmission['error'] = 'Email could not be sent successfully';
            }
        } else if ((Tools::getValue('subject') && !Tools::getValue('message')) || (!Tools::getValue('subject') && Tools::getValue('message'))) {
            $aSubmission['success'] = false;
            $aSubmission['error'] = 'Please fill both subject and message';
        }
        $this->context->smarty->assign([
            'submission' => $aSubmission,
            'message' => $sMessage,
            'subject' => $sSubject,
        ]);
        $this->setTemplate(_PS_THEME_DIR_ . 'custom-shop-admin-contact.tpl');
    }

}
