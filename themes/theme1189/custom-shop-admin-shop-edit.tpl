{include file=$header}
{include file=$menu}
<div class="col-lg-6 margin-auto">
    <div class="font-size-20 bold text-center margin-top-10 margin-bottom-20">My shop Information</div>
    <form method="post">
        <div class="form-row">
            <div class="form-label">
                <label>Shop title</label>
            </div>
            <div class="form-input">
                <input class="form-control" type="text" name="title" value="{$shop.title}" placeholder="15 characters max" autocomplete="off"/>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="form-row">
            <div class="form-label">
                <label>Shop motto</label>
            </div>
            <div class="form-input">
                <textarea class="form-control" name="motto" placeholder="30 characters max" >{$shop.motto}</textarea>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="form-row">
            <div class="form-label">
                <label>Default currency</label>
            </div>
            <div class="form-input">
                <select class="form-control" name="currency">
                    <option value="0">Choose default currency</option>
                    {foreach from=$currencies key=k item=f_currency}
                        {if strpos($f_currency.name, '('|cat:$f_currency.iso_code:')') === false}
                            {assign var="currency_name" value={l s='%s (%s)' sprintf=[$f_currency.name, $f_currency.sign]}}
                        {else}
                            {assign var="currency_name" value=$f_currency.name}
                        {/if}
                        <option value="{$f_currency.id_currency}" {if $shop.currency == $f_currency.id_currency}selected{/if}>
                            {$currency_name}
                        </option>
                    {/foreach}
                </select>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="form-row">
            <div class="form-label">
                <label>Website</label>
            </div>
            <div class="form-input">
                <input class="form-control" type="text" name="website" value="{$shop.website}" autocomplete="off"/>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="form-row">
            <div class="form-label">
                <label>Shop description</label>
                <div class="font-size-10">This description will show in the footer of your shop. We will also use this desription as your shop "description" snippet for search engines.</div>
            </div>
            <div class="form-input">
                <textarea class="form-control height-150" name="description" placeholder="" >{$shop.description}</textarea>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="form-row">
            <div class="form-label">
                <label>Shop logo*</label>
                <div class="font-size-10">*Perfect match size 150px x 150px</div>
            </div>
            <div class="form-input">
                <div class="col-sm-5 visible-lg">
                    <div class="btn btn-warning form-upload-btn col-xs-12" data-type="logo"><span class="glyphicon glyphicon-upload"></span> Upload</div>
                    <div class="btn btn-danger form-remove-btn col-xs-12 margin-top-10 {if !$shop.logo}hidden{/if}" data-type="logo"><span class="glyphicon glyphicon-remove"></span> Remove</div>
                    <div class="clearfix"></div>
                </div>
                <div class="col-sm-7 thumbnail margin-bottom-0 border-none form-logo-area">
                    {if $shop.logo}
                        <img class="form-preview-logo popup-picture" data-img-name="{$shop.logo}" src="{$base_dir_ssl}img/custom_shop/logo/{$shop.logo}" />
                    {/if}
                    <img class="default-logo {if $shop.logo}hidden{/if}" src="{$logo_default}"/>
                </div>
                <div class="col-sm-5 hidden-lg">
                    <div class="btn btn-warning form-upload-btn col-xs-12" data-type="logo"><span class="glyphicon glyphicon-upload"></span> Upload</div>
                    <div class="btn btn-danger form-remove-btn col-xs-12 margin-top-10 {if !$shop.logo}hidden{/if}" data-type="logo"><span class="glyphicon glyphicon-remove"></span> Remove</div>
                    <div class="clearfix"></div>
                </div>
                <div class="hidden-uploader">
                    <input class="fileupload fileupload-logo" data-type="logo" data-id-shop="{$shop.id}" type="file" name="files[]">
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="form-row">
            <div class="form-label">
                <label>Shop header picture*</label>
                <div class="font-size-10">*Perfect match size 1110px x 300px</div>
            </div>
            <div class="form-input">
                <div class="col-sm-12 thumbnail margin-bottom-0 border-none form-header-area">
                    {if $shop.header}
                        <img class="form-preview-header popup-picture" data-img-name="{$shop.header}" src="{$base_dir_ssl}img/custom_shop/header/{$shop.header}" />
                    {/if}
                    <img class="default-header {if $shop.header}hidden{/if}" src="{$header_default}"/>
                </div>
                <div class="col-xs-12 margin-bottom-10 visible-lg">
                    <div class="col-xs-6">
                        <div class="btn btn-warning form-upload-btn col-xs-12" data-type="header"><span class="glyphicon glyphicon-upload"></span> Upload</div>
                    </div>
                    <div class="col-xs-6">
                        <div class="btn btn-danger form-remove-btn col-xs-12 {if !$shop.header}hidden{/if}" data-type="header"><span class="glyphicon glyphicon-remove"></span> Remove</div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="col-sm-12 margin-bottom-10 hidden-lg">
                    <div class="btn btn-warning form-upload-btn col-xs-12" data-type="header"><span class="glyphicon glyphicon-upload"></span> Upload</div>
                    <div class="btn btn-danger form-remove-btn col-xs-12 margin-top-10 {if !$shop.header}hidden{/if}" data-type="header"><span class="glyphicon glyphicon-remove"></span> Remove</div>
                    <div class="clearfix"></div>
                </div>
                <div class="hidden-uploader">
                    <input class="fileupload fileupload-header" data-type="header" data-id-shop="{$shop.id}" type="file" name="files[]">
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="form-row bold font-size-15">Social media link</div>
        <div class="form-row">
            <div class="form-label">
                <label>Facebook</label>
            </div>
            <div class="form-input">
                <input type="text" class="form-control" name="facebook" value="{$shop.facebook}" placeholder="" autocomplete="off">
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="form-row">
            <div class="form-label">
                <label>Twitter</label>
            </div>
            <div class="form-input">
                <input type="text" class="form-control" name="twitter" value="{$shop.twitter}" placeholder="" autocomplete="off">
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="form-row">
            <div class="form-label">
                <label>Google+</label>
            </div>
            <div class="form-input">
                <input type="text" class="form-control" name="googleplus" value="{$shop.googleplus}" placeholder="" autocomplete="off">
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="form-row">
            <div class="form-label">
                <label>Instagram</label>
            </div>
            <div class="form-input">
                <input type="text" class="form-control" name="instagram" value="{$shop.instagram}" placeholder="" autocomplete="off">
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="form-row">
            <div class="form-label">
                <label>Linkedin</label>
            </div>
            <div class="form-input">
                <input type="text" class="form-control" name="linkedin" value="{$shop.linkedin}" placeholder="" autocomplete="off">
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="form-row">
            <div class="form-label">
                <label>Pinterest</label>
            </div>
            <div class="form-input">
                <input type="text" class="form-control" name="pinterest" value="{$shop.pinterest}" placeholder="" autocomplete="off">
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="form-row">
            <label class="cursor-pointer font-size-10 pull-right" for="deactivate-shop">
                <input id="deactivate-shop" name="deactivated" class="deactivated" type="checkbox" {if $shop.deactivated}checked{/if}> I want to deactivate my shop
            </label>
            <div class="clearfix"></div>
        </div>
        <div class="form-row">
            <input class="btn btn-primary pull-right col-xs-12 col-lg-4" type="submit" value="Save" />
        </div>
    </form>
    <div class="clearfix"></div>
</div>
{include file=$footer}