{include file=$header}
{include file=$menu}
<div class="col-lg-6 margin-auto">
    <div class="font-size-20 bold text-center margin-top-10 margin-bottom-20">Your shop Information</div>
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
                <label>Shop logo*</label>
                <div class="font-size-10">*Perfect match size 100px x 100px</div>
            </div>
            <div class="form-input">
                <div class="col-sm-5 visible-lg">
                    <div class="btn btn-warning form-upload-btn col-xs-12" data-type="logo"><span class="glyphicon glyphicon-upload"></span> Upload</div>
                    <div class="clearfix"></div>
                </div>
                <div class="col-sm-7 thumbnail margin-bottom-0 border-none form-logo-area">
                    {if $shop.logo}
                        <img class="form-preview-logo popup-picture" src="{$base_dir}img/custom_shop/logo/{$shop.logo}" />
                    {/if}
                </div>
                <div class="col-sm-5 hidden-lg">
                    <div class="btn btn-warning form-upload-btn col-xs-12" data-type="logo"><span class="glyphicon glyphicon-upload"></span> Upload</div>
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
                <div class="col-sm-5 margin-bottom-10 visible-lg">
                    <div class="btn btn-warning form-upload-btn col-xs-12" data-type="header"><span class="glyphicon glyphicon-upload"></span> Upload</div>
                    <div class="clearfix"></div>
                </div>
                <div class="col-sm-12 thumbnail margin-bottom-0 border-none form-header-area">
                    {if $shop.header}
                        <img class="form-preview-header popup-picture" src="{$base_dir}img/custom_shop/header/{$shop.header}" />
                    {/if}
                </div>
                <div class="col-sm-12 margin-bottom-10 hidden-lg">
                    <div class="btn btn-warning form-upload-btn col-xs-12" data-type="header"><span class="glyphicon glyphicon-upload"></span> Upload</div>
                    <div class="clearfix"></div>
                </div>
                <div class="hidden-uploader">
                    <input class="fileupload fileupload-header" data-type="header" data-id-shop="{$shop.id}" type="file" name="files[]">
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="form-row bold font-size-15">Social media embed</div>
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
            <label class="cursor-pointer font-size-10 pull-right" for="deactivate">
                <input id="deactivate" name="deactivated" type="checkbox" {if $shop.deactivated}checked{/if}> Shop deactivated
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