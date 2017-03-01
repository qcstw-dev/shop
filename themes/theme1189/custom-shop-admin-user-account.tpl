{include file=$header}
{include file=$menu}
<div class="font-size-20 text-center margin-top-20">User account</div>
<div class="bold margin-bottom-10">User ID: {$account.id}</div>
<form method="post" class="user-account-form">
    {$errors|@var_dump}
    <div class="alert alert-danger error-message error-message-custom" {if $errors}style="display"{/if}>
        {foreach from=$errors item='error'}
            <li>{$error}</li>
            {/foreach}
    </div>
    <div class="alert alert-danger error-message error-message-email">Please enter a valid email address</div>
    <div class="alert alert-danger error-message error-message-shopname">Please do not enter special charateres in shopname</div>
    <div class="col-xs-12 dropdown-block-title" data-id-dropdown-block="perso">
        <span class="glyphicon glyphicon-chevron-down"></span> Personal information
    </div>
    <div class="clearfix"></div>
    <div class="col-xs-12 col-lg-6 margin-auto dropdown-block dropdown-block-perso">
        <div class="form-row">
            <div class="form-label">
                <label>First name</label>
            </div>
            <div class="form-input">
                <input class="form-control" type="text" name="firstname" value="{$account.firstname}" autocomplete="off"/>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="form-row">
            <div class="form-label">
                <label>Last name</label>
            </div>
            <div class="form-input">
                <input class="form-control" type="text" name="lastname" value="{$account.lastname}" autocomplete="off"/>
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
                <label>Street address</label>
            </div>
            <div class="form-input">
                <textarea class="form-control" name="address">{$account.address}</textarea>
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
                <label>City</label>
            </div>
            <div class="form-input">
                <input class="form-control" type="text" name="city" value="{$account.city}" autocomplete="off"/>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="form-row">
            <div class="form-label">
                <label>Country</label>
            </div>
            <div class="form-input">
                <select id="id_country" class="form-control" name="country">{$countries_list}</select>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="form-row">
            <div class="form-label">
                <label>Phone</label>
            </div>
            <div class="form-input">
                <input class="form-control" type="text" name="phone" value="" autocomplete="off"/>
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
    </div>
    <div class="col-xs-12 dropdown-block-title" data-id-dropdown-block="public">
        <span class="glyphicon glyphicon-chevron-down"></span> Public information
    </div>
    <div class="clearfix"></div>
    <div class="col-xs-12 col-lg-6 margin-auto dropdown-block dropdown-block-public">
        <div class="form-row">
            <div class="form-label">
                <label>Website</label>
            </div>
            <div class="form-input">
                <input class="form-control" type="text" name="website" value="" autocomplete="off"/>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="form-row">
            <div class="form-label">
                <label>Shop description</label>
            </div>
            <div class="form-input">
                <textarea class="form-control" name="description" placeholder="" >{$shop.description}</textarea>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <div class="col-xs-12 dropdown-block-title" data-id-dropdown-block="password">
        <span class="glyphicon glyphicon-chevron-down"></span> Password change
    </div>
    <div class="clearfix"></div>
    <div class="col-xs-12 col-lg-6 margin-auto dropdown-block dropdown-block-password">
        <div class="alert alert-danger error-message error-message-password">Confirmation password different</div>
        <div class="alert alert-danger error-message error-message-password-length">Password must be at least 6 characters long</div>
        <div class="form-row">
            <div class="form-label">
                <label>Current password</label>
            </div>
            <div class="form-input">
                <input class="form-control" type="text" name="current_password" value="" autocomplete="off"/>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="form-row">
            <div class="form-label">
                <label>New password</label>
            </div>
            <div class="form-input">
                <input class="form-control password" type="text" name="new_password" value="" autocomplete="off"/>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="form-row">
            <div class="form-label">
                <label>Confirm new password</label>
            </div>
            <div class="form-input">
                <input class="form-control confirm_password" type="text" name="confirm_new_password" value="" autocomplete="off"/>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <div class="col-xs-12 dropdown-block-title" data-id-dropdown-block="bank">
        <span class="glyphicon glyphicon-chevron-down"></span> Bank detail
    </div>
    <div class="clearfix"></div>
    <div class="col-xs-12 col-lg-6 margin-auto dropdown-block dropdown-block-bank">
        <p class="bold">Needed to pay your comission</p>
        <div class="border padding-10">
            <label for="bank" class="cursor-pointer padding-10 col-xs-11">Credit card</label> <div class="col-xs-1 padding-10"><input type="radio" id="bank" name="payment" class="payment" data-payment="bank" {if $account.account_number}checked{/if}/></div>
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
        </div>
        <div class="border padding-10 margin-top-20">
            <label for="paypal" class="cursor-pointer padding-10 col-xs-11">Paypal</label> <div class="col-xs-1 padding-10"><input type="radio" id="paypal" name="payment" class="payment" data-payment="paypal" {if $account.paypal_email}checked{/if}/></div>
            <div class="payment-block payment-paypal" {if $account.paypal_email}style="display:block"{/if}>
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
    </div>
    <div class="col-xs-12 col-lg-6 margin-auto margin-top-20">
        <input type="submit" class="btn btn-primary pull-right" />
    </div>
</form>
{include file=$footer}