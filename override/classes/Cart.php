<?php

class Cart extends CartCore {

    public function init() {

        parent::init();
    }

    /**
     * Return shipping total for the cart
     *
     * @param array|null $delivery_option Array of the delivery option for each address
     * @param bool $use_tax
     * @param Country|null $default_country
     * @return float Shipping total
     */

    public function getTotalShippingCost($delivery_option = null, $use_tax = true, Country $default_country = null) {
        static $_total_shipping;

        if (null === $_total_shipping) {
            if (!$default_country) {
                if (isset(Context::getContext()->cookie->id_country)) {
                    $default_country = new Country(Context::getContext()->cookie->id_country);
                }
            }
            if (is_null($delivery_option)) {
                $delivery_option = $this->getDeliveryOption($default_country, false, false);
            }

            $_total_shipping = array(
                'with_tax' => 0,
                'without_tax' => 0,
            );
            $delivery_option_list = $this->getDeliveryOptionList($default_country);
            foreach ($delivery_option as $id_address => $key) {
                if (!isset($delivery_option_list[$id_address]) || !isset($delivery_option_list[$id_address][$key])) {
                    continue;
                }

                $_total_shipping['with_tax'] += $delivery_option_list[$id_address][$key]['total_price_with_tax'];
                $_total_shipping['without_tax'] += $delivery_option_list[$id_address][$key]['total_price_without_tax'];
            }
        }

        return ($use_tax) ? $_total_shipping['with_tax'] : $_total_shipping['without_tax'];
    }

}
