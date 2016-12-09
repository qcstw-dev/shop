{include file=$header_mobile}
<div class="col-xs-12">
    {capture name=path}
        <a href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}" title="{l s='My account'}">
            {l s='My account'}
        </a>
        <span class="navigation-pipe">
            {$navigationPipe}
        </span>
        <span class="navigation_page">
            {l s='Your personal information'}
        </span>
    {/capture}

    <div class="box">
        <div class="font-size-20 bold text-center">
            {l s='Your personal information'}
        </div>
        <hr>

        {include file="$tpl_dir./errors.tpl"}

        {if isset($confirmation) && $confirmation}
            <p class="alert alert-success">
                {l s='Your personal information has been successfully updated.'}
                {if isset($pwd_changed)}<br />{l s='Your password has been sent to your email:'} {$email}{/if}
            </p>
        {else}
            <p class="info-title">
                {l s='Please be sure to update your personal information if it has changed.'}
            </p>
            <p class="required">
                <sup>*</sup>{l s='Required field'}
            </p>
            <form action="{$link->getPageLink('mobile-identity', true)|escape:'html':'UTF-8'}" method="post" class="std">
                <fieldset>
                    <div class="clearfix">
                        <label>{l s='Social title'}</label>
                        <br />
                        {foreach from=$genders key=k item=gender}
                            <input type="radio" name="id_gender" id="id_gender{$gender->id}" value="{$gender->id|intval}" {if isset($smarty.post.id_gender) && $smarty.post.id_gender == $gender->id}checked="checked"{/if} disabled/>
                            <div class="radio-inline">
                                <label for="id_gender{$gender->id}" class="top">
                                    {$gender->name}
                                </label>
                            </div>
                        {/foreach}
                    </div>
                    <div class="required form-group">
                        <label for="firstname" class="required">
                            {l s='First name'} 
                        </label>
                        <input class="is_required validate form-control" data-validate="isName" type="text" id="firstname" name="firstname" value="{$smarty.post.firstname}" disabled/>
                    </div>
                    <div class="required form-group">
                        <label for="lastname" class="required">
                            {l s='Last name'} 
                        </label>
                        <input class="is_required validate form-control" data-validate="isName" type="text" name="lastname" id="lastname" value="{$smarty.post.lastname}" disabled/>
                    </div>
                    <div class="required form-group">
                        <label for="email" class="required">
                            {l s='E-mail address'} 
                        </label>
                        <input class="is_required validate form-control" data-validate="isEmail" type="email" name="email" id="email" value="{$smarty.post.email}" disabled/>
                    </div>
                    <div class="form-group">
                        <label>
                            {l s='Date of Birth'}
                        </label>
                        <div class="row">
                            <div class="col-xs-4">
                                <select name="days" id="days" class="form-control" disabled>
                                    <option value="">-</option>
                                    {foreach from=$days item=v}
                                        <option value="{$v}" {if ($sl_day == $v)}selected="selected"{/if}>{$v}&nbsp;&nbsp;</option>
                                    {/foreach}
                                </select>

                            </div>
                            <div class="col-xs-4">
                                {*
                                {l s='January'}
                                {l s='February'}
                                {l s='March'}
                                {l s='April'}
                                {l s='May'}
                                {l s='June'}
                                {l s='July'}
                                {l s='August'}
                                {l s='September'}
                                {l s='October'}
                                {l s='November'}
                                {l s='December'}
                                *}
                                <select id="months" name="months" class="form-control" disabled>
                                    <option value="">-</option>
                                    {foreach from=$months key=k item=v}
                                        <option value="{$k}" {if ($sl_month == $k)}selected="selected"{/if}>{l s=$v}&nbsp;</option>
                                    {/foreach}
                                </select>
                            </div>
                            <div class="col-xs-4">
                                <select id="years" name="years" class="form-control" disabled>
                                    <option value="">-</option>
                                    {foreach from=$years item=v}
                                        <option value="{$v}" {if ($sl_year == $v)}selected="selected"{/if}>{$v}&nbsp;&nbsp;</option>
                                    {/foreach}
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="required form-group">
                        <label for="old_passwd" class="required">
                            {l s='Current Password'} 
                        </label>
                        <input class="is_required validate form-control" type="password" data-validate="isPasswd" name="old_passwd" id="old_passwd" disabled/>
                    </div>
                    <div class="password form-group">
                        <label for="passwd">
                            {l s='New Password'}
                        </label>
                        <input class="is_required validate form-control" type="password" data-validate="isPasswd" name="passwd" id="passwd" disabled/>
                    </div>
                    <div class="password form-group">
                        <label for="confirmation">
                            {l s='Confirmation'}
                        </label>
                        <input class="is_required validate form-control" type="password" data-validate="isPasswd" name="confirmation" id="confirmation" disabled/>
                    </div>
                    {if isset($newsletter) && $newsletter}
                        <div class="checkbox">
                            <input type="checkbox" id="newsletter" name="newsletter" value="1" {if isset($smarty.post.newsletter) && $smarty.post.newsletter == 1} checked="checked"{/if} disabled/>
                            <label for="newsletter">
                                {l s='Sign up for our newsletter!'}
                                {if array_key_exists('newsletter', $field_required)}
                                    <sup> *</sup>
                                {/if}
                            </label>
                        </div>
                    {/if}
                    {if isset($optin) && $optin}
                        <div class="checkbox">
                            <input type="checkbox" name="optin" id="optin" value="1" {if isset($smarty.post.optin) && $smarty.post.optin == 1} checked="checked"{/if} disabled/>
                            <label for="optin">
                                {l s='Receive special offers from our partners!'}
                                {if array_key_exists('optin', $field_required)}
                                    <sup> *</sup>
                                {/if}
                            </label>
                        </div>
                    {/if}
                    {if $b2b_enable}
                        <h1 class="page-subheading">
                            {l s='Your company information'}
                        </h1>
                        <div class="form-group">
                            <label for="">{l s='Company'}</label>
                            <input type="text" class="form-control" id="company" name="company" value="{if isset($smarty.post.company)}{$smarty.post.company}{/if}" disabled/>
                        </div>
                        <div class="form-group">
                            <label for="siret">{l s='SIRET'}</label>
                            <input type="text" class="form-control" id="siret" name="siret" value="{if isset($smarty.post.siret)}{$smarty.post.siret}{/if}" disabled/>
                        </div>
                        <div class="form-group">
                            <label for="ape">{l s='APE'}</label>
                            <input type="text" class="form-control" id="ape" name="ape" value="{if isset($smarty.post.ape)}{$smarty.post.ape}{/if}" disabled/>
                        </div>
                        <div class="form-group">
                            <label for="website">{l s='Website'}</label>
                            <input type="text" class="form-control" id="website" name="website" value="{if isset($smarty.post.website)}{$smarty.post.website}{/if}" disabled/>
                        </div>
                    {/if}

                    {$HOOK_CUSTOMER_IDENTITY_FORM}

                    <div class="btn btn-default modify-form col-xs-12 col-sm-4 pull-right">
                        <span class="glyphicon glyphicon-lock"></span> {l s="Modify"}
                    </div>
                    <button type="submit" name="submitIdentity" class="btn btn-primary col-xs-12 col-sm-4 pull-right hidden">
                        <span class="glyphicon glyphicon-floppy-disk"></span> {l s='Save'}
                    </button>
                </fieldset>
            </form> <!-- .std -->
        {/if}
    </div>

    <div class="footer_links clearfix margin-top-10">
        <a class="btn btn-default" href="{$base_dir}" title="{l s='Home'}">
            <span class="glyphicon glyphicon-chevron-left"></span> {l s='Home'}
        </a>
    </div>
</div>
{include file=$footer_mobile}