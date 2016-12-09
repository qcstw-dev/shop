<form id="form" action="{$base_uri}mobile-checkout?step=5" method="post" name="carrier_area">
    {foreach $delivery_option_list as $id_address => $option_list}
        {foreach $option_list as $key => $option}
            <div class="col-xs-1 padding-top-40 delivery_option_radio">
                <input id="delivery_option_{$id_address|intval}_{$option@index}" class="delivery_option_radio" type="radio" name="delivery_option[{$id_address|intval}]" data-key="{$key}" data-id_address="{$id_address|intval}" value="{$key}"{if isset($delivery_option[$id_address]) && $delivery_option[$id_address] == $key} checked="checked"{/if} />
            </div>
            <div class="col-xs-4 thumbnail border-none delivery_option_logo">
                {foreach $option.carrier_list as $carrier}
                    {if $carrier.logo}
                        <img src="{$carrier.logo|escape:'htmlall':'UTF-8'}" alt="{$carrier.instance->name|escape:'htmlall':'UTF-8'}"/>
                    {else if !$option.unique_carrier}
                        {$carrier.instance->name|escape:'htmlall':'UTF-8'}
                        {if !$carrier@last} - {/if}
                    {/if}
                {/foreach}
            </div>
            <div class="col-xs-6 padding-top-20">
                {if $option.unique_carrier}
                    {foreach $option.carrier_list as $carrier}
                        <strong>{$carrier.instance->name|escape:'htmlall':'UTF-8'}</strong>
                    {/foreach}
                    {if isset($carrier.instance->delay[$cookie->id_lang])}
                        <br />{l s='Delivery time:'}&nbsp;{$carrier.instance->delay[$cookie->id_lang]|escape:'htmlall':'UTF-8'}
                    {/if}
                {/if}
                {if count($option_list) > 1}
                    <br />
                    {if $option.is_best_grade}
                        {if $option.is_best_price}
                            <span class="best_grade best_grade_price best_grade_speed">{l s='The best price and speed'}</span>
                        {else}
                            <span class="best_grade best_grade_speed">{l s='The fastest'}</span>
                        {/if}
                    {else if $option.is_best_price}
                        <span class="best_grade best_grade_price">{l s='The best price'}</span>
                    {/if}
                {/if}
                <div class="delivery_option_price">
                    <div class="delivery_option_price">
                        {if $option.total_price_with_tax && !$option.is_free && (!isset($free_shipping) || (isset($free_shipping) && !$free_shipping))}
                            {if $use_taxes == 1}
                                {if $priceDisplay == 1}
                                    {convertPrice price=$option.total_price_without_tax}{if $display_tax_label} {l s='(tax excl.)'}{/if}
                                {else}
                                    {convertPrice price=$option.total_price_with_tax}{if $display_tax_label} {l s='(tax incl.)'}{/if}
                                {/if}
                            {else}
                                {convertPrice price=$option.total_price_without_tax}
                            {/if}
                        {else}
                            {l s='Free'}
                        {/if}
                    </div>
                </div>
            </div>
        {/foreach}
    {/foreach}
    <div class="col-xs-12">
        <div class="font-size-15 bold margin-top-10">{l s='Terms of service'}</div>
        <label for="cgv">
            <input type="checkbox" name="cgv" id="cgv" value="1" {if $checkedTOS}checked="checked"{/if} />
            {l s='I agree to the terms of service and will adhere to them unconditionally.'}
            <a href="{$base_uri}mobile-information?select=terms" class="underline" rel="nofollow">{l s='(Read the Terms of Service)'}</a>
        </label>
        {if isset($delivery_option_list) && !empty($delivery_option_list)}
            <button type="submit" name="processCarrier" class="btn btn-primary col-xs-12 col-sm-4 pull-right">
                {l s='Next'} <span class="glyphicon glyphicon-chevron-right"></span>
            </button>
            <div class="clearfix"></div>
        {/if}
    </div>
</form>
<script>
    {strip}
    var orderProcess = 'order';
    var currencySign = '{$currencySign|html_entity_decode:2:"UTF-8"}';
    var currencyRate ={$currencyRate|floatval};
    var currencyFormat ={$currencyFormat|intval};
    var currencyBlank ={$currencyBlank|intval};
        {if isset($virtual_cart) && !$virtual_cart && $giftAllowed && $cart->gift == 1}
    var cart_gift = true;
        {else}
    var cart_gift = false;
        {/if}
    var orderUrl = '{$link->getPageLink("order", true)|escape:'quotes':'UTF-8'}';
    var txtProduct = '{l s='Product'}';
    var txtProducts = '{l s='Products'}';
        {if $conditions}
    var msg_order_carrier = '<strong>{l s='You must agree to the terms of service before continuing.'}</strong>';
        {/if}
    {/strip}
</script>