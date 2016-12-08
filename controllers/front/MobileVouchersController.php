<?php

class MobileVouchersControllerCore extends MobileController {

    public function init() {
        parent::init();
    }

    public function initContent() {
        parent::initContent();

        $cart_rules = CartRule::getCustomerCartRules($this->context->language->id, $this->context->customer->id, true, true, true);
        $nb_cart_rules = count($cart_rules);

        foreach ($cart_rules as $key => &$discount) {
            if ($discount['quantity_for_user'] === 0) {
                unset($cart_rules[$key]);
            }

            $discount['value'] = Tools::convertPriceFull(
                            $discount['value'], new Currency((int) $discount['reduction_currency']), new Currency((int) $this->context->cart->id_currency)
            );
            if ($discount['gift_product'] !== 0) {
                $product = new Product((int) $discount['gift_product']);
                if (isset($product->name)) {
                    $discount['gift_product_name'] = current($product->name);
                }
            }
        }

        $this->context->smarty->assign(array(
            'nb_cart_rules' => (int) $nb_cart_rules,
            'cart_rules' => $cart_rules,
            'discount' => $cart_rules,
            'nbDiscounts' => (int) $nb_cart_rules)
        );
        $this->setTemplate(_PS_THEME_DIR_ . 'mobile-discount.tpl');
    }

}
