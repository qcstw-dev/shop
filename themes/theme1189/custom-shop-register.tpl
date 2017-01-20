{include file=$header}
<div class="thumbnail border-none margin-auto">
    <img src="{$logo_gift}" title="{$shop_title}" alt="{$shop_title}" />
</div>
<div class="col-sm-5 margin-auto">
    <ul class="nav nav-tabs">
        <li role="presentation" class="col-xs-6 padding-0 text-center cursor-pointer bold btn-switch {if $submit == 'register' || !$submit}active{/if}" data-id="register"><a>Register</a></li>
        <li role="presentation" class="col-xs-6 padding-0 text-center cursor-pointer bold btn-switch {if $submit == 'login'}active{/if}" data-id="login"><a>Login</a></li>
    </ul>
    <div class="col-xs-12 border border-top-0 padding-top-10 padding-bottom-10">
        {if isset($form_error)}
            <div class="alert alert-danger">
                {foreach from=$form_error item=error}
                    <li>{$error}</li>
                {/foreach}
            </div>
        {/if}
        <div class="block-switch register {if $submit != 'register' && $submit}hidden{/if}">
            <form action="" method="post" class="register-form">
                <div class="alert alert-danger error-message error-message-custom"></div>
                <div class="alert alert-danger error-message error-message-password">Confirmation password different</div>
                <div class="alert alert-danger error-message error-message-password-length">Password must be at least 6 characters long</div>
                <div class="alert alert-danger error-message error-message-empty-field">Please fill the required fields</div>
                <div class="alert alert-danger error-message error-message-email">Please enter a valid email address</div>
                <div class="alert alert-danger error-message error-message-shopname">Please do not enter special charateres in shopname</div>
                <input type="hidden" name="type" value="register">
                <div class="form-group margin-bottom-10">
                    <label class="margin-bottom-0">Email*</label>
                    <input type="email" name="email" class="required form-control {if $submit && (!$email || isset($form_error.account_exist))}form-control-danger{/if} email" placeholder="Email" value="{$email}">
                </div>
                <div class="form-group margin-bottom-10">
                    <label class="margin-bottom-0">Password*</label>
                    <input type="password" name="password" class="required form-control {if $submit && !$password}form-control-danger{/if} password" placeholder="Password">
                </div>
                <div class="form-group margin-bottom-10">
                    <label class="margin-bottom-0">Confirm password*</label>
                    <input type="password" name="confirm_password" class="required form-control {if $submit && !$confirm_password}form-control-danger{/if} confirm_password" placeholder="Password">
                </div>
                <div class="form-group margin-bottom-10">
                    <label class="col-xs-4 padding-0 margin-bottom-0 padding-top-5">shop.giftattitude.com/</label>
                    <div class="col-xs-8 input-group-sm">
                        <input type="text" name="shop_name" class="required form-control bold {if $submit && (!$shop_name || isset($form_error.shop_exist))}form-control-danger{/if} shop_name" placeholder="Name of your shop" value="{$shop_name}" autocomplete="off">
                        <div class="font-size-10">(No special charateres allowed)</div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <input type="submit" class="btn btn-primary col-xs-12" value="Register" />
            </form>
        </div>
        <div class="block-switch login {if $submit != 'login'}hidden{/if}">
            <form action="" method="post" class="login-form">
                <div class="alert alert-danger error-message error-message-empty-field">Please fill the required fields</div>
                <div class="alert alert-danger error-message error-message-email">Please enter a valid email address</div>
                <input type="hidden" name="type" value="login">
                <div class="form-group margin-bottom-10">
                    <label class="margin-bottom-0">Email*</label>
                    <input type="email" class="required form-control {if $submit && !$email}form-control-danger{/if} email" name="email" placeholder="Email" value="{$email}">
                </div>
                <div class="form-group margin-bottom-10">
                    <label class="margin-bottom-0">Password*</label>
                    <input type="password" class="required form-control {if $submit && !$password}form-control-danger{/if} password" name="password" placeholder="Password">
                </div>
                <input type="submit" class="btn btn-success col-xs-12" value="Login" />
            </form>
        </div>
    </div>
</div>
<script type="text/javascript" src="{$js_dir}custom-shop-register.js"></script>
{include file=$footer}