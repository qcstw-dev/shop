{include file=$header}
{include file=$menu}
<div class="font-size-20 text-center margin-top-20">User account</div>
<div class="alert alert-warning font-size-13 bold text-center margin-top-10"><span class="glyphicon glyphicon-warning-sign"></span> To be able to pay your commissions, we need you to fill in all the following details</div>
<div class="bold margin-bottom-10">User ID: {$account.id}</div>
{if !$form_errors && $submitted}
    <div class="alert alert-success text-center">
        User account information updated !
    </div>
{/if}
<div class="alert alert-danger error-message error-message-custom text-center" {if $form_errors}style="display: block"{/if}>
    {foreach from=$form_errors item='error'}
        <li>{$error}</li>
        {/foreach}
</div>
<div class="col-xs-12 dropdown-block-title" data-id-dropdown-block="perso">
    <span class="chevron glyphicon glyphicon-{if $forms_status['personal-info-form']}chevron-right{else}chevron-down{/if}"></span> Personal information
    {if $forms_status['personal-info-form']}
        <span class="glyphicon glyphicon-ok-circle font-size-20 pull-right bold color-green"></span>
    {else}
        <span class="glyphicon glyphicon-remove-circle font-size-20 pull-right bold color-red"></span>
    {/if}
</div>
<div class="clearfix"></div>
<div class="col-xs-12 col-lg-6 margin-auto dropdown-block dropdown-block-perso" {if $forms_status['personal-info-form']}style="display: none;"{/if}>
    <form method="post" class="personal-info-form">
        <input type="hidden" name="form_type" value="personal-info-form">
        <div class="alert alert-danger error-message error-message-empty-field">Please fill the required fields</div>
        <div class="form-row">
            <div class="form-label">
                <label>First name*</label>
            </div>
            <div class="form-input">
                <input class="form-control required" type="text" name="firstname" value="{$account.firstname}" autocomplete="off"/>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="form-row">
            <div class="form-label">
                <label>Last name*</label>
            </div>
            <div class="form-input">
                <input class="form-control required" type="text" name="lastname" value="{$account.lastname}" autocomplete="off"/>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="form-row">
            <div class="form-label">
                <label>Company name</label>
            </div>
            <div class="form-input">
                <input class="form-control" type="text" name="company" value="{$account.company}" autocomplete="off"/>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="form-row">
            <div class="form-label">
                <label>Street address*</label>
            </div>
            <div class="form-input">
                <textarea class="form-control required" name="address">{$account.address}</textarea>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="form-row">
            <div class="form-label">
                <label>Zip</label>
            </div>
            <div class="form-input">
                <input class="form-control" type="text" name="zip" value="{$account.zip}" autocomplete="off"/>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="form-row">
            <div class="form-label">
                <label>City*</label>
            </div>
            <div class="form-input">
                <input class="form-control required" type="text" name="city" value="{$account.city}" autocomplete="off"/>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="form-row">
            <div class="form-label">
                <label>Country*</label>
            </div>
            <div class="form-input">
                <select id="id_country" class="form-control required" name="country">{$countries_list}</select>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="form-row">
            <div class="form-label">
                <label>Phone*</label>
            </div>
            <div class="form-input">
                <input class="form-control required" type="text" name="phone" value="{$account.phone}" autocomplete="off"/>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="form-row">
            <div class="form-label">
                <input type="checkbox" name="newsletter" id="newsletter" {if $account.newsletter}checked{/if}/>
            </div>
            <div class="form-input margin-top-10">
                <label class="cursor-pointer" for="newsletter">I accept to receive the newsletter from Gift Attitude</label>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="col-xs-12 margin-bottom-20">
            <input type="submit" class="btn btn-primary pull-right"/>
        </div>
    </form>
</div>
<div class="col-xs-12 dropdown-block-title" data-id-dropdown-block="bank">
    <span class="chevron glyphicon glyphicon-{if $forms_status['bank-detail-form']}chevron-right{else}chevron-down{/if}"></span> Paypal account details
    {if $forms_status['bank-detail-form']}
        <span class="glyphicon glyphicon-ok-circle font-size-20 pull-right bold color-green"></span>
    {else}
        <span class="glyphicon glyphicon-remove-circle font-size-20 pull-right bold color-red"></span>
    {/if}
</div>
<div class="clearfix"></div>
<div class="col-xs-12 col-lg-6 margin-auto dropdown-block dropdown-block-bank" {if $forms_status['bank-detail-form']}style="display: none;"{/if}>
    <form method="post" class="bank-detail-form">
        <input type="hidden" name="form_type" value="bank-detail-form">
        <div class="alert alert-danger error-message error-message-email  text-center">Please enter a valid email address</div>
        {*<div class="border padding-10">
            <label for="bank" class="cursor-pointer padding-10 col-xs-11">Credit card</label> <div class="col-xs-1 padding-10"><input type="radio" id="bank" name="payment" value="bank" class="payment" data-payment="bank" {if $account.account_number}checked{/if}/></div>
            <div class="payment-block payment-bank" {if $account.account_number}style="display:block"{/if}>
                <div class="form-row">
                    <div class="form-label">
                        <label>Account holder</label>
                    </div>
                    <div class="form-input">
                        <input class="form-control" type="text" name="bank_account_holder" value="{$account.account_holder}" autocomplete="off"/>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="form-row">
                    <div class="form-label">
                        <label>Account number</label>
                    </div>
                    <div class="form-input">
                        <input class="form-control" type="text" name="account_number" value="{$account.account_number}" autocomplete="off"/>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="form-row">
                    <div class="form-label">
                        <label>Name of bank</label>
                    </div>
                    <div class="form-input">
                        <input class="form-control" type="text" name="bank_name" value="{$account.bank_name}" autocomplete="off"/>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="form-row">
                    <div class="form-label">
                        <label>Bank full address</label>
                    </div>
                    <div class="form-input">
                        <textarea class="form-control" name="bank_address">{$account.bank_address}</textarea>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="form-row">
                    <div class="form-label">
                        <label>SWIFT code</label>
                    </div>
                    <div class="form-input">
                        <input class="form-control" type="text" name="swift" value="{$account.swift}" autocomplete="off"/>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>*}
        <div class="{*border*} padding-10 margin-top-20">
{*            <label for="paypal" class="cursor-pointer padding-10 col-xs-11">Paypal account details</label> <div class="col-xs-1 padding-10"><input type="radio" id="paypal" name="payment" value="paypal" class="payment" data-payment="paypal" {if $account.paypal_email}checked{/if}/></div>*}
            <div class="payment-block payment-paypal" {*{if $account.paypal_email}*}style="display:block"{*{/if}*}>
                <div class="form-row">
                    <div class="form-label">
                        <label>Account holder</label>
                    </div>
                    <div class="form-input">
                        <input class="form-control" type="text" name="paypal_account_holder" value="{$account.account_holder}" autocomplete="off"/>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="form-row">
                    <div class="form-label">
                        <label>E-mail</label>
                    </div>
                    <div class="form-input">
                        <input class="form-control email" type="email" name="paypal_email" value="{$account.paypal_email}" autocomplete="off"/>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="col-xs-12 margin-bottom-20">
            <input type="submit" class="btn btn-primary pull-right"/>
        </div>
    </form>
</div>
<div class="col-xs-12 dropdown-block-title" data-id-dropdown-block="payment">
    <span class="chevron glyphicon glyphicon-{if $forms_status['minimum-to-reach-form']}chevron-right{else}chevron-down{/if}"></span> Payment settings
    {if $forms_status['minimum-to-reach-form']}
        <span class="glyphicon glyphicon-ok-circle font-size-20 pull-right bold color-green"></span>
    {else}
        <span class="glyphicon glyphicon-remove-circle font-size-20 pull-right bold color-red"></span>
    {/if}
</div>
<div class="clearfix"></div>
<div class="col-xs-12 padding-bottom-10 margin-auto dropdown-block dropdown-block-payment" {if $forms_status['minimum-to-reach-form']}style="display: none;"{/if}>
    <form method="post" class="minimum-to-reach-form">
        <div class="alert alert-danger error-message error-message-minimum text-center">Minimum amount to reach cannot be below $20</div>
        <input type="hidden" name="form_type" value="minimum-to-reach-form">
        <p>
            - Payment release level minimum: <span class="input-group-sm btn-group-sm bold">$<input type="number" class="minimum" name="minimum" min="20" value="{if $shop.minimum_to_reach}{$shop.minimum_to_reach}{/if}"/><input type="submit" class="btn btn-primary margin-left-10"/></span><br />
            <span class="font-size-10 bold">*Minimum and default amount is $20</span>
        </p>
        <p>- Commission payment will be done on 15th every month as far as Payment release level is met</p>
    </form>
</div>
<div class="col-xs-12 dropdown-block-title" data-id-dropdown-block="record">
    <span class="chevron glyphicon glyphicon-chevron-right"></span> Payment records
</div>
<div class="clearfix"></div>
<div class="col-xs-12 padding-bottom-10 margin-auto dropdown-block dropdown-block-record"style="display: none;">
    {if $bills}
        <div class="col-xs-12 margin-bottom-10">
            {foreach from=$bills item='bill'}
                <li>{$bill.date} - 
                    <a href="{$base_dir}index.php?controller=customshoppdfbill&id_bill={$bill.id}&shop_name={$custom_shop_name}" target="_blank" title="Download bill">
                        <span class="fa fa-file-pdf-o"></span> Download
                    </a>
                </li>
            {/foreach}
        </div>
    {else}
        <div class="alert alert-info margin-bottom-0">No records available yet</div>
    {/if}
</div>
<div class="clearfix"></div>
<div class="col-xs-12 dropdown-block-title" data-id-dropdown-block="password">
    <span class="chevron glyphicon glyphicon-{if !isset($form_errors['password'])}chevron-right{else}chevron-down{/if}"></span> Password change
</div>
<div class="clearfix"></div>
<div class="col-xs-12 col-lg-6 margin-auto dropdown-block dropdown-block-password" {if !isset($form_errors['password'])}style="display: none;"{/if}>
    <form method="post" class="password-change-form">
        <input type="hidden" name="form_type" value="password-change-form">
        <div class="alert alert-danger error-message error-message-password text-center">Confirmation password different</div>
        <div class="alert alert-danger error-message error-message-password-length text-center">Password must be at least 6 characters long</div>
        <div class="form-row">
            <div class="form-label">
                <label>Current password</label>
            </div>
            <div class="form-input">
                <input class="form-control {if isset($form_errors['password'])}form-control-danger{/if}" type="password" name="current_password" value="" autocomplete="off"/>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="form-row">
            <div class="form-label">
                <label>New password</label>
            </div>
            <div class="form-input">
                <input class="form-control password {if isset($form_errors['password'])}form-control-danger{/if}" type="password" name="new_password" value="" autocomplete="off"/>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="form-row">
            <div class="form-label">
                <label>Confirm new password</label>
            </div>
            <div class="form-input">
                <input class="form-control confirm_password {if isset($form_errors['password'])}form-control-danger{/if}" type="password" name="confirm_new_password" value="" autocomplete="off"/>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="col-xs-12 margin-bottom-20">
            <input type="submit" class="btn btn-primary pull-right"/>
        </div>
    </form>
</div>
{include file=$footer}