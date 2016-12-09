{if !$opc}
    {assign var='current_step' value='address'}
{capture name=path}{l s='Addresses'}{/capture}
{include file="$tpl_dir./errors.tpl"}
<form action="{$base_uri}mobile-checkout?step=4" method="post">
{else}
    <h1 class="page-heading step-num"><span>1</span> {l s='Addresses'}</h1>
    <div id="opc_account" class="opc-main-block">
        <div id="opc_account-overlay" class="opc-overlay" style="display: none;"></div>
    {/if}
    <div class="addresses clearfix">
        <div class="row">
            <div class="col-xs-12 col-sm-6">
                <div class="address_delivery form-group selector1">
                    <label for="id_address_delivery">{if $cart->isVirtualCart()}{l s='Choose a billing address:'}{else}{l s='Choose a delivery address:'}{/if}</label>
                    <select name="id_address_delivery" id="id_address_delivery" class="address_select form-control">
                        {$addresses|@var_dump}
                        {foreach from=$addresses key=k item=address}
                            <option value="{$address.id_address|intval}"{if $address.id_address == $cart->id_address_delivery} selected="selected"{/if}>
                                {$address.alias|escape:'html':'UTF-8'}
                            </option>
                        {/foreach}
                    </select><span class="waitimage"></span>
                </div>
                <p class="checkbox addressesAreEquals"{if $cart->isVirtualCart()} style="display:none;"{/if}>
                    <input type="checkbox" name="same" id="addressesAreEquals" value="1"{if $cart->id_address_invoice == $cart->id_address_delivery || $addresses|@count == 1} checked="checked"{/if} />
                    <label for="addressesAreEquals">{l s='Use the delivery address as the billing address.'}</label>
                </p>
            </div>
            <div class="col-xs-12 col-sm-6">
                <div id="address_invoice_form" class="form-group selector1"{if $cart->id_address_invoice == $cart->id_address_delivery} style="display: none;"{/if}>
                    {if $addresses|@count > 1}
                        <label for="id_address_invoice" class="strong">{l s='Choose a billing address:'}</label>
                        <select name="id_address_invoice" id="id_address_invoice" class="address_select form-control">
                            {section loop=$addresses step=-1 name=address}
                                <option value="{$addresses[address].id_address|intval}"{if $addresses[address].id_address == $cart->id_address_invoice && $cart->id_address_delivery != $cart->id_address_invoice} selected="selected"{/if}>
                                    {$addresses[address].alias|escape:'html':'UTF-8'}
                                </option>
                            {/section}
                        </select><span class="waitimage"></span>
                    {else}
                        <a href="{$link->getPageLink('mobile-address', true, NULL, "back={$base_uri}mobile-checkout?step=3")|escape:'html':'UTF-8'}" title="{l s='Add'}" class="btn-sm btn btn-default icon-right">
                            <span class="glyphicon glyphicon-plus"></span> {l s='Add a new address'}
                        </a>
                    {/if}
                </div>
            </div>
        </div> <!-- end row -->
        <div class="row">
            <div class="col-xs-12 col-sm-6">
                <div class="address item box" id="address_delivery">
                </div>
            </div>
            <div class="col-xs-12 col-sm-6">
                <div class="address alternate_item box" id="address_invoice" style="display:none;">
                </div>
            </div>
        </div> <!-- end row -->
        <p class="address_add submit">
            <a href="{$link->getPageLink('mobile-address', true, NULL, "back={$base_uri}mobile-checkout?step=3")|escape:'html':'UTF-8'}" title="{l s='Add'}" class="btn-sm btn btn-default icon-right">
                <span class="glyphicon glyphicon-plus"></span> {l s='Add a new address'}
            </a>
        </p>
        {if !$opc}
            <div id="ordermsg" class="form-group">
                <label>{l s='If you would like to add a comment about your order, please write it in the field below.'}</label>
                <textarea class="form-control" cols="60" rows="6" name="message">{if isset($oldMessage)}{$oldMessage}{/if}</textarea>
            </div>
        {/if}
    </div> <!-- end addresses -->

    {if !$opc}
        <p class="cart_navigation clearfix">
            <input type="hidden" name="back" value="{$back}" />
            <button type="submit" name="processAddress" class="btn btn-primary col-xs-12 col-sm-4 pull-right">
                {l s='Next'} <span class="glyphicon glyphicon-chevron-right"></span>
            </button>
        </p>
</form>
{else}
</div> <!--  end opc_account -->
{/if}

{strip}
    {if !$opc}
        <script>
            var orderProcess = 'order';
            var currencySign = '{$currencySign|html_entity_decode:2:"UTF-8"}';
            var currencyRate ={$currencyRate|floatval};
            var currencyFormat ={$currencyFormat|intval};
            var currencyBlank ={$currencyBlank|intval};
        </script>
        {addJsDefL name=txtProduct}{l s='product' js=1}{/addJsDefL}
        {addJsDefL name=txtProducts}{l s='products' js=1}{/addJsDefL}
        {addJsDefL name=CloseTxt}{l s='Submit' js=1}{/addJsDefL}

    {/if}

<script>
    {capture}
        {if $back}&mod={$back|urlencode}{/if}
    {/capture}
    {capture name=addressUrl}{$link->getPageLink('mobile-address', true, NULL, 'back='|cat:$base_uri|cat:'mobile-checkout'|cat:'?step=3')|escape:'quotes':'UTF-8'}{/capture}
    var addressUrl='{$smarty.capture.addressUrl}';
    {capture}{'&multi-shipping=1'|urlencode}{/capture}
    var addressMultishippingUrl='{$smarty.capture.addressUrl|cat:$smarty.capture.default}';
    {capture name=addressUrlAdd}{$smarty.capture.addressUrl|cat:'&id_address='}{/capture}
    var addressUrlAdd='{$smarty.capture.addressUrlAdd}';
    var formatedAddressFieldsValuesList={$formatedAddressFieldsValuesList|@json_encode};
    var opc= {($opc|boolval) ? 'true' : 'false'};
    {capture}<div class="font-size-15 text-center bold">{l s='Your billing address' js=1}</div>{/capture}
    var titleInvoice = '{$smarty.capture.default|@addcslashes:'\''}';
    {capture}<div class="font-size-15 text-center bold">{l s='Your delivery address' js=1}</div>{/capture}
    var titleDelivery ='{$smarty.capture.default|@addcslashes:'\''}';
    {capture}
    <a class="btn btn-success margin-top-10 col-xs-12 col-sm-4 pull-right" href="{$smarty.capture.addressUrlAdd}" title="{l s='Update' js=1}">
        <span class="glyphicon glyphicon-refresh"></span> {l s='Update' js=1}
    </a>
    <div class="clearfix"></div>
    {/capture}
    var liUpdate= '{$smarty.capture.default|@addcslashes:'\''}';
</script>
{/strip}