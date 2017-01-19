{include file=$header}
<div class="thumbnail border-none margin-auto">
    <img src="{$logo_gift}" title="{$shop_title}" alt="{$shop_title}" />
</div>
<div class="col-sm-6 margin-auto">
    {*<div class="btn-group col-xs-12 padding-0" role="group" aria-label="...">
    <button type="button" class="btn btn-default btn-lg col-xs-6 btn-switch active" data-id="register">Register</button>
    <button type="button" class="btn btn-default btn-lg col-xs-6 btn-switch" data-id="login">Login</button>
    </div>*}
    <ul class="nav nav-tabs">
        <li role="presentation" class="col-xs-6 padding-0 text-center cursor-pointer btn-switch active" data-id="register"><a>Register</a></li>
        <li role="presentation" class="col-xs-6 padding-0 text-center cursor-pointer btn-switch" data-id="login"><a>Login</a></li>
    </ul>
    <div class="col-xs-12 border border-top-0 padding-top-10 padding-bottom-10">
        {if isset($form_error)}
            <div class="alert alert-danger">
                {foreach from=$form_error item=error}
                    <li>{$error}</li>
                    {/foreach}
            </div>
        {/if}
        <div class="block-switch register">
            <form action="" method="post" class="register-form">
                <div class="alert alert-danger error-message error-message-custom"></div>
                <div class="alert alert-danger error-message error-message-password">Confirmation password different</div>
                <div class="alert alert-danger error-message error-message-password-length">Password must be at least 6 characters long</div>
                <div class="alert alert-danger error-message error-message-empty-field">Please fill the required fields</div>
                <div class="alert alert-danger error-message error-message-email">Please enter a valid email address</div>
                <div class="alert alert-danger error-message error-message-shopname">Please do not enter special charateres in shopname</div>
                <input type="hidden" name="type" value="register">
                <div class="form-group margin-bottom-10">
                    <label class="margin-bottom-0">Shop name*</label>
                    <input type="text" name="shop_name" class="required form-control shop_name" placeholder="Shop name">
                    <div class="font-size-10">(No special charateres allowed)</div>
                </div>
                <div class="form-group margin-bottom-10">
                    <label class="margin-bottom-0">Email*</label>
                    <input type="email" name="email" class="required form-control email" placeholder="Email">
                </div>
                <div class="form-group margin-bottom-10">
                    <label class="margin-bottom-0">Password*</label>
                    <input type="password" name="password" class="required form-control password" placeholder="Password">
                </div>
                <div class="form-group margin-bottom-10">
                    <label class="margin-bottom-0">Confirm password*</label>
                    <input type="password" name="confirm_password" class="required form-control confirm_password" placeholder="Password">
                </div>
                <input type="submit" class="btn btn-primary col-xs-12" value="Register" />
            </form>
        </div>
        <div class="block-switch login hidden">
            <form action="" method="post" class="login-form">
                <div class="alert alert-danger error-message error-message-empty-field">Please fill the required fields</div>
                <div class="alert alert-danger error-message error-message-email">Please enter a valid email address</div>
                <input type="hidden" name="type" value="login">
                <div class="form-group margin-bottom-10">
                    <label class="margin-bottom-0">Email*</label>
                    <input type="email" class="required form-control email" placeholder="Email">
                </div>
                <div class="form-group margin-bottom-10">
                    <label class="margin-bottom-0">Password*</label>
                    <input type="password" class="required form-control password" placeholder="Password">
                </div>
                <input type="submit" class="btn btn-success col-xs-12" value="Login" />
            </form>
        </div>
    </div>
</div>
<script type="text/javascript" src="{$js_dir}custom-shop-register.js"></script>
{include file=$footer}