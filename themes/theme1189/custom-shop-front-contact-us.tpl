{capture name=path}{l s='Contact'}{/capture}
{if $smarty.server.HTTP_HOST != 'localhost'}
    <script src='https://www.google.com/recaptcha/api.js'></script>
{/if}
<div class="contact-form {if isset($show_contact_popup)}auto-display{/if}">
    <div class="col-xs-12 font-size-20 bold text-center">
    {l s='Customer service'} - {if isset($customerThread) && $customerThread}{l s='Your reply'}{else}{l s='Contact us'}{/if}
    <hr>
    </div>
    <div class="col-xs-12 padding-0">
        {if isset($confirmation)}
            <p class="alert alert-success bold text-center">{l s='Your message has been successfully sent to our team.'}</p>
        {elseif isset($alreadySent)}
            <p class="alert alert-warning">{l s='Your message has already been sent.'}</p>
            <div class="footer_links clearfix">
                <a class="btn btn-default" href="{$base_dir}" title="{l s='Home'}">
                    <span class="glyphicon glyphicon-chevron-left"></span> {l s='Home'}
                </a>
            </div>
        {else}
            {include file="$tpl_dir./errors.tpl"}
            <form action="{$request_uri}" method="post" class="contact-form-box" enctype="multipart/form-data">
                <input type="hidden" name="custom_shop_id" value="{$custom_shop_id}" />
                <fieldset>
                    <div class="clearfix">
                        <div class="col-xs-12 col-md-6">
                            <div class="form-group selector1">
                                <label for="id_contact">{l s='Subject Heading'}</label>
                                {if isset($customerThread.id_contact) && $customerThread.id_contact}
                                    {foreach from=$contacts item=contact}
                                        {if $contact.id_contact == $customerThread.id_contact}
                                            <input type="text" class="form-control" id="contact_name" name="contact_name" value="{$contact.name|escape:'html':'UTF-8'}" readonly="readonly" />
                                            <input type="hidden" name="id_contact" value="{$contact.id_contact}" />
                                        {/if}
                                    {/foreach}
                                {else}
                                    <select id="id_contact" class="form-control" name="id_contact">
                                        <option value="0">{l s='-- Choose --'}</option>
                                        {foreach from=$contacts item=contact}
                                            <option value="{$contact.id_contact|intval}"{if isset($smarty.request.id_contact) && $smarty.request.id_contact == $contact.id_contact} selected="selected"{/if}>{$contact.name|escape:'html':'UTF-8'}</option>
                                        {/foreach}
                                    </select>
                                </div>
                                <p id="desc_contact0" class="desc_contact{if isset($smarty.request.id_contact)} unvisible{/if}"></p>
                                {foreach from=$contacts item=contact}
                                    <p id="desc_contact{$contact.id_contact|intval}" class="desc_contact contact-title{if !isset($smarty.request.id_contact) || $smarty.request.id_contact|intval != $contact.id_contact|intval} unvisible{/if}">
                                        <i class="fa fa-comment-alt"></i>
                                        {$contact.description|escape:'html':'UTF-8'}
                                    </p>
                                {/foreach}
                            {/if}
                            <p class="form-group">
                                <label for="email">{l s='Email address'}</label>
                                {if isset($customerThread.email)}
                                    <input class="form-control grey" type="text" id="email" name="from" value="{$customerThread.email|escape:'html':'UTF-8'}" readonly="readonly" />
                                {else}
                                    <input class="form-control grey validate" type="text" id="email" name="from" data-validate="isEmail" value="{$email|escape:'html':'UTF-8'}" />
                                {/if}
                            </p>
                            {if !$PS_CATALOG_MODE}
                                {if (!isset($customerThread.id_order) || $customerThread.id_order > 0)}
                                    <div class="form-group selector1">
                                        <label>{l s='Order reference'}</label>
                                        {if !isset($customerThread.id_order) && isset($is_logged) && $is_logged}
                                            <select name="id_order" class="form-control">
                                                <option value="0">{l s='-- Choose --'}</option>
                                                {foreach from=$orderList item=order}
                                                    <option value="{$order.value|intval}"{if $order.selected|intval} selected="selected"{/if}>{$order.label|escape:'html':'UTF-8'}</option>
                                                {/foreach}
                                            </select>
                                        {elseif !isset($customerThread.id_order) && empty($is_logged)}
                                            <input class="form-control grey" type="text" name="id_order" id="id_order" value="{if isset($customerThread.id_order) && $customerThread.id_order|intval > 0}{$customerThread.id_order|intval}{else}{if isset($smarty.post.id_order) && !empty($smarty.post.id_order)}{$smarty.post.id_order|escape:'html':'UTF-8'}{/if}{/if}" />
                                        {elseif $customerThread.id_order|intval > 0}
                                            <input class="form-control grey" type="text" name="id_order" id="id_order" value="{if isset($customerThread.reference) && $customerThread.reference}{$customerThread.reference|escape:'html':'UTF-8'}{else}{$customerThread.id_order|intval}{/if}" readonly="readonly" />
                                        {/if}
                                    </div>
                                {/if}
                                {if isset($is_logged) && $is_logged}
                                    <div class="form-group selector1">
                                        <label class="unvisible">{l s='Product'}</label>
                                        {if !isset($customerThread.id_product)}
                                            {foreach from=$orderedProductList key=id_order item=products name=products}
                                                <select name="id_product" id="{$id_order}_order_products" class="unvisible product_select form-control"{if !$smarty.foreach.products.first} style="display:none;"{/if}{if !$smarty.foreach.products.first} disabled="disabled"{/if}>
                                                    <option value="0">{l s='-- Choose --'}</option>
                                                    {foreach from=$products item=product}
                                                        <option value="{$product.value|intval}">{$product.label|escape:'html':'UTF-8'}</option>
                                                    {/foreach}
                                                </select>
                                            {/foreach}
                                        {elseif $customerThread.id_product > 0}
                                            <input  type="hidden" name="id_product" id="id_product" value="{$customerThread.id_product|intval}" readonly="readonly" />
                                        {/if}
                                    </div>
                                {/if}
                            {/if}
                        </div>
                        <div class="col-xs-12 col-md-6">
                            {if $fileupload == 1}
                                <p class="form-group">
                                    <label for="fileUpload">{l s='Attach File'}</label>
                                    <input type="hidden" name="MAX_FILE_SIZE" value="{if isset($max_upload_size) && $max_upload_size}{$max_upload_size|intval}{else}2000000{/if}" />
                                    <input type="file" name="fileUpload" id="fileUpload" class="form-control" />
                                </p>
                            {/if}
                            <div class="form-group">
                                <label for="message">{l s='Message'}</label>
                                <textarea class="form-control" id="message" name="message">{if isset($message)}{$message|escape:'html':'UTF-8'|stripslashes}{/if}</textarea>
                            </div>
                            {if $smarty.server.HTTP_HOST != 'localhost'}
                                {if $smarty.server.HTTP_HOST == 'pimpyourkeys.com'}
                                    <div class="g-recaptcha" data-sitekey="6LecpxwUAAAAAG7ZSDy38lhkFMOZmHUrG3bHpKHH"></div>
                                {else}
                                    <div class="g-recaptcha" data-sitekey="6LdWFwwUAAAAABxzvt7l89l6Wm_ZH_aGGI1t8ru9"></div>
                                {/if}
                            {/if}
                            <div class="submit margin-top-10">
                                <button type="submit" name="submitMessage" id="submitMessage" class="btn btn-primary col-xs-12 col-sm-4 pull-right">
                                    <span class="glyphicon glyphicon-envelope"></span> {l s='Send'}
                                </button>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </form>
        {/if}
    </div>
    <script>
        var contact_fileDefaultHtml = '{l s='No file selected' js=1}';
        var contact_fileButtonHtml = '{l s='Choose File' js=1}';
    </script>
    <div class="clearfix"></div>
</div>