<!-- Block currencies module -->
<div class="icons">
    {if count($currencies) > 1}
        <div id="currencies-block-top" class="icon icon-currency current" data-id="currency">
            {foreach from=$currencies key=k item=f_currency}
                {if $cookie->id_currency == $f_currency.id_currency}
                    <span class="icon-sign icon-sign-{$f_currency.sign|count_characters}">
                        {if $cookie->id_currency == $f_currency.id_currency}<strong>{$f_currency.sign}</strong>{/if}
                    </span>
                {/if}
            {/foreach}
            <form id="setCurrency" action="{$request_uri}" method="post">
                <div class="current">
                    <input type="hidden" name="id_currency" id="id_currency" value=""/>
                    <input type="hidden" name="SubmitCurrency" value="" />
                </div>
                <ul id="first-currencies" class="currencies_ul icon-content-currency">
                    {foreach from=$currencies key=k item=f_currency}
                        {if strpos($f_currency.name, '('|cat:$f_currency.iso_code:')') === false}
                            {assign var="currency_name" value={l s='%s (%s)' sprintf=[$f_currency.name, $f_currency.sign]}}
                        {else}
                            {assign var="currency_name" value=$f_currency.name}
                        {/if}
                        <li {if $cookie->id_currency == $f_currency.id_currency}class="selected"{/if}>
                            <a href="javascript:setCurrency({$f_currency.id_currency});" rel="nofollow" title="{$currency_name}">
                                {$currency_name}
                            </a>
                        </li>
                    {/foreach}
                </ul>
            </form>
        </div>
    {/if}
    <!-- /Block currencies module -->