<div class="col-xs-12 block-checkout block-login font-size-13">
    <div class="col-xs-12 border padding-bottom-10">
        <div class="font-size-15 text-center padding-top-10 bold"><span class="glyphicon glyphicon-user"></span> {l s="Create an account"}</div>
        <hr>
        <form action="{$base_uri}mobile-checkout" method="post" id="create-account_form">
            <div id="create_account_error" class="alert alert-danger" style="display:none;"></div>
            <div class="col-xs-12 padding-left-0 bold">
                {l s="Email"}:
            </div>
            <div class="col-xs-12 input-group">
                <div class="form-group">
                    <input type="email" class="is_required validate form-control" id="email_create" data-validate="isEmail" name="email_create" required/>
                    <input type="hidden" class="is_required" name="back" value="{$base_uri}mobile-checkout?step=3" required/>
                    <input type="hidden" class="is_required" name="mobile" value="true" required/>
                    <input type="hidden" class="is_required" name="checkout" value="true" required/>
                </div>
            </div>
            <button class="btn btn-default col-xs-12 col-sm-4 pull-right margin-top-10" type="submit" id="SubmitCreate" name="SubmitCreate">{l s='Ok'}</button>
        </form>
    </div>
    <div class="col-xs-12 border margin-top-10 padding-bottom-10">
        <div class="font-size-15 text-center margin-top-10 bold"><span class="glyphicon glyphicon-lock"></span> {l s="Already registered"}</div>
        <hr>
        <form action="{$base_dir}login" method="post">
            <div id="create_header_account_error" class="alert alert-danger" style="display:none;"></div>
            <div class="col-xs-12 padding-left-0 bold">
                {l s="Email"}:
            </div>
            <div class="col-xs-12 input-group">
                <div class="form-group">
                    <input type="email" class="is_required validate form-control" data-validate="isEmail" id="email" name="email" required/>
                </div>
            </div>
            <div class="col-xs-12 padding-left-0 bold margin-top-10">
                {l s="Password"}:
            </div>
            <div class="col-xs-12 input-group">
                <div class="form-group">
                    <input type="password" class="is_required validate form-control" data-validate="isPasswd" id="passwd" name="passwd" required/>
                </div>
            </div>
            <button type="submit" name="SubmitLogin" id="SubmitLogin" class="btn btn-default col-xs-12 col-sm-4 pull-right margin-top-10">{l s='sign in'}</button>
        </form>
    </div>
</div>