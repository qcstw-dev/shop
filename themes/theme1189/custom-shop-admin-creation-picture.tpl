{include file=$header}
{include file=$menu}
{include file=$menu_creation}
<div class="pictures-list"></div>
{for $counter=1 to 8}
    <div class="col-xs-6 col-sm-4 col-md-4 col-lg-3 margin-bottom-10 block-picture-container">
        <div class="trash" data-id="{$counter}"><span class="glyphicon glyphicon-trash"></span></div>
        <div class="border block-picture" data-id="{$counter}">
            <div class="col-xs-12 padding-0 margin-top-5 margin-bottom-5 text-center bold file-name file-name-{$counter}">File name</div>
            <div class="col-xs-12 thumbnail border-none margin-bottom-0 padding-0 cursor-pointer upload-btn" data-id="{$counter}">
                <img class="upload-picture upload-picture-{$counter}" src="{$base_uri}img/upload-icon.jpg" title="upload" alt="upload" />
                <div class="hidden-uploader">
                    <input class="fileupload hidden-fileupload-{$counter}" data-id-upload="{$counter}" type="file" name="files[]">
                </div>
            </div>
            <div class="col-xs-12 margin-top-5 margin-bottom-5">
                <label class="col-xs-6 margin-top-10">Price:</label>
                <input class="col-xs-6 margin-top-5 price" data-id="{$counter}" type="number" min="1" max="1" />
                {*<div class="col-xs-2">
                    <button class="btn btn-primary">Ok</button>
                </div>*}
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
{/for}
<div class="clearfix"></div>
<div class="col-xs-12">
    <div class="panel panel-default text-center font-size-20 cursor-pointer btn-add-more-pictures">
        <span class="glyphicon glyphicon-plus"></span>
    </div>
</div>
{*<div class="col-xs-6 col-sm-4 col-md-4 col-lg-2 margin-bottom-10">
<div class="cursor-pointer block-picture block-picture-add">
<div class="dashed thumbnail margin-0 padding-0 vertical-center">
<img src="{$base_uri}img/plus-icon.jpg" title="upload" alt="upload" />
</div>
</div>
</div>*}
{include file=$footer}