{include file=$header}
<div class="container padding-0">
    <div class="thumbnail border-none margin-auto">
        <img src="{$logo_gift}" title="{$shop_title}" alt="{$shop_title}" />
    </div>
    <div class="col-sm-5 margin-auto">
        <ul class="nav nav-tabs">
            <li role="presentation" class="col-xs-6 padding-0 text-center cursor-pointer bold btn-switch {if $submit == 'register' || (!$submit && !$preselect)}active{/if}" data-id="register">
                <a class="color-danger">
                    <span class="glyphicon glyphicon-edit"></span> Register
                </a>
            </li>
            <li role="presentation" class="col-xs-6 padding-0 text-center cursor-pointer bold btn-switch {if $submit == 'login' || $preselect == 'login'}active{/if}" data-id="login">
                <a class="color-success">
                    <span class="glyphicon glyphicon-user"></span> Login
                </a>
            </li>
        </ul>
        <div class="col-xs-12 border border-top-0 padding-top-10 padding-bottom-10">
            {if isset($form_error)}
                <div class="alert alert-danger">
                    {foreach from=$form_error item=error}
                        <li>{$error}</li>
                        {/foreach}
                </div>
            {/if}
            <div class="block-switch register {if $submit != 'register' && ($submit || $preselect)}hidden{/if}">
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
                        <label class="col-xs-7 col-md-5 padding-0 margin-bottom-0 padding-top-5 font-size-13">www.giftattitude.com/shop/</label>
                        <div class="col-xs-5 col-md-7 padding-0 input-group-sm">
                            <input type="text" name="shop_name" class="required form-control bold {if $submit && (!$shop_name || isset($form_error.shop_exist))}form-control-danger{/if} shop_name" placeholder="Name of your shop" value="{$shop_name}" autocomplete="off">
                            <div class="font-size-10">(No special charateres allowed)</div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <input type="submit" class="btn btn-danger col-xs-12 col-lg-6 pull-right" value="Register" />
                </form>
            </div>
            <div class="block-switch login {if $submit != 'login' && $preselect != 'login'}hidden{/if}">
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
                        <div  class="font-size-10 underline cursor-pointer margin-top-10 forgot-password">Forgot your password?</div>
                    </div>
                    <input type="submit" class="btn btn-success col-xs-12 col-lg-6 pull-right" value="Log in" />
                </form>
            </div>
        </div>
    </div>
</div>
<div class="hidden">
    <div class="forgot-password-form">
        <div class="bold">Enter your account's email</div>
        <div class="font-size-13">We will reset and send you your new password</div>
        <div class="col-xs-12 col-lg-6 margin-auto padding-0 margin-bottom-10 margin-top-10">
            <div class="col-xs-12">
                <div class="alert alert-danger error-message error-message-email">Please enter a valid email address</div>
                <div class="alert alert-danger error-message error-message-custom">Please enter a valid email address</div>
            </div>
            <div class="col-xs-12 col-sm-9 padding-right-0 margin-bottom-10"><input class="form-control textfield-email email" type="email" /></div>
            <div class="col-xs-12 col-sm-3"><button class="btn btn-success send-password col-xs-12">Send</button></div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
{include file=$footer}