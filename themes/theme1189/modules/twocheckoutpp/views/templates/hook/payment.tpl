<div class="payment_module margin-top-10">
    <div class="font-size-20 bold">
        <input type="radio" id="payment-pp" name="radio-payment" class="radio-payment"/> <label for="payment-pp" class="cursor-pointer">{l s='PayPal'}</label>
        <div class="pull-right">
            <img src="{$module_dir}paypal.png" alt="{l s='Pay with PayPal' mod='twocheckoutpp'}" />
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="hidden hidden-payment hidden-payment-pp">
        <a class="btn btn-primary" href="{$link->getModuleLink('twocheckoutpp', 'payment', [], true)}" title="{l s='Pay with PayPal' mod='twocheckoutpp'}">
            {l s='Pay with PayPal' mod='twocheckoutpp'}
        </a>
    </div>
</div>
