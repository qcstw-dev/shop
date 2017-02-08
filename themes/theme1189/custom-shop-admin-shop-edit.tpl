{include file=$header}
{include file=$menu}
<div class="font-size-20 bold text-center margin-bottom-10">Your shop Information</div>
<form method="post">
    <div class="form-row">
        <div class="form-label">
            <label>Shop title</label>
        </div>
        <div class="form-input">
            <input class="form-control" type="text" name="title" value="{$shop.title}" placeholder="15 characters max" />
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
            <label>Shop logo</label>
        </div>
        <div class="form-input">
            <div class="col-xs-5">
                <div class="btn btn-warning form-upload-btn" data-type="logo"><span class="glyphicon glyphicon-upload"></span> Upload</div>
            </div>
            <div class="col-xs-7 thumbnail border-none logo-area">
                {if $shop.logo}
                    <img class="logo popup-picture cursor-pointer" src="{$base_dir}img/custom_shop/logo/{$shop.logo}" />
                {/if}
            </div>
            <div class="hidden-uploader">
                <input class="fileupload fileupload-logo" data-type="logo" data-id-shop="{$shop.id}" type="file" name="files[]">
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="form-row">
        <div class="form-label">
            <label>Shop header picture</label>
            <div class="font-size-10">*Perfect match size 900x600</div>
        </div>
        <div class="form-input">
            <div class="col-xs-5">
                <div class="btn btn-warning form-upload-btn" data-type="header"><span class="glyphicon glyphicon-upload"></span> Upload</div>
            </div>
            <div class="col-xs-7 thumbnail border-none header-area">
                {if $shop.header}
                    <img class="header popup-picture cursor-pointer" src="{$base_dir}img/custom_shop/header/{$shop.header}" />
                {/if}
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
            <input type="text" class="form-control" name="facebook" value="{$shop.facebook}" placeholder="" ></textarea>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="form-row">
        <div class="form-label">
            <label>Twitter</label>
        </div>
        <div class="form-input">
            <input type="text" class="form-control" name="twitter" value="{$shop.twitter}" placeholder="" ></textarea>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="form-row">
        <input class="btn btn-primary pull-right" type="submit" value="Save" />
    </div>
</form>
{include file=$footer}