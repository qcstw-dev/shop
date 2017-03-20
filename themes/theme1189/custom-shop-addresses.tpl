{if isset($footer_mobile)}
    {include file=$header_mobile}
    <div class="col-xs-12">
{/if}
{capture name=path}
    <a href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}" title="{l s='My account'}">{l s='My account'}</a>
    <span class="navigation-pipe">{$navigationPipe}</span>
    <span class="navigation_page">{l s='My addresses'}</span>
{/capture}

<p>{l s='Please configure your default billing and delivery addresses when placing an order. You may also add additional addresses, which can be useful for sending gifts or receiving an order at your office.'}</p>

{if isset($multipleAddresses) && $multipleAddresses}
    <div class="addresses">
        <p><strong class="dark">{l s='Your addresses are listed below.'}</strong></p>
        <p class="p-indent">{l s='Be sure to update your personal information if it has changed.'}</p>
        {assign var="adrs_style" value=$addresses_style}
        <div class="bloc_adresses row">
            {foreach from=$multipleAddresses item=address name=myLoop}
                <div class="col-xs-12 col-sm-6 address margin-bottom-10">
                    <div class="border padding padding-bottom-10 {if $smarty.foreach.myLoop.last}last_item{elseif $smarty.foreach.myLoop.first}first_item{/if}{if $smarty.foreach.myLoop.index % 2} alternate_item{else} item{/if} box">
                        <div class="font-size-15 text-center bold padding-top-10">{$address.object.alias}</div>
                        <hr>
                        {foreach from=$address.ordered name=adr_loop item=pattern}
                            {assign var=addressKey value=" "|explode:$pattern}
                            <div>
                                {foreach from=$addressKey item=key name="word_loop"}
                                    <span {if isset($addresses_style[$key])} class="{$addresses_style[$key]}"{/if}>
                                        {$address.formated[$key|replace:',':'']|escape:'html':'UTF-8'}
                                    </span>
                                {/foreach}
                            </div>
                        {/foreach}
                        <div class="address_update margin-top-10">
                            <a class="btn btn-success" href="{$link->getPageLink('mobile-address', true, null, "id_address={$address.object.id|intval}")|escape:'html':'UTF-8'}" title="{l s='Update'}">
                                <span class="glyphicon glyphicon-refresh"></span> {l s='Update'}
                            </a>
                            <a class="btn btn-danger" href="{$link->getPageLink('mobile-address', true, null, "id_address={$address.object.id|intval}&delete")|escape:'html':'UTF-8'}" onclick="return confirm('{l s='Are you sure?' js=1}');" title="{l s='Delete'}">
                                <span class="glyphicon glyphicon-trash"></span> {l s='Delete'}
                            </a>
                        </div>
                    </div>
                </div>
                {if $smarty.foreach.myLoop.index % 2 && !$smarty.foreach.myLoop.last} 
                </div>
                <div class="bloc_adresses row">
                {/if}
            {/foreach}
        </div>
    </div>
{else}
    <p class="alert alert-warning">{l s='No addresses are available.'}&nbsp;
        <a class="underline" href="{$link->getPageLink('mobile-address', true)|escape:'html':'UTF-8'}" title="{l s='Add a new address'}">{l s='Add a new address'}</a>
    </p>
{/if}

<div class="clearfix">
    <a href="{$link->getPageLink('mobile-address', true)|escape:'html':'UTF-8'}" title="{l s='Add an address'}" class="btn btn-default col-xs-12 col-sm-4 pull-right">
        <span class="glyphicon glyphicon-plus"></span> {l s='Add a new address'}
    </a>
</div>
{if isset($footer_mobile)}
    </div>
    {include file=$footer_mobile}
{/if}