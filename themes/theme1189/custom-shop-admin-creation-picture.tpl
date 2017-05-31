{include file=$header}
{include file=$menu}
{include file=$menu_creation}
{*<div class="col-xs-12 margin-bottom-10 visible-xs visible-sm">
    <a href="{$base_uri}{$custom_shop_name}/admin/creation/layout-maker" class="btn btn-info pull-right {if !$pictures}disabled{/if} menu-item-picture">Place picture on products <span class="glyphicon glyphicon-chevron-right"></span></a>
</div>
<div class="clearfix"></div>*}
<div class="pictures-list"></div>
{assign var='nbr_pic' value=6}
{if count($pictures) >= 7}
    {assign var='nbr_pic' value=count($pictures)-1}
{/if}
{for $counter=0 to $nbr_pic}
    {assign var='db_id' value=''}
    {if isset($pictures.$counter.id)}
        {assign var='db_id' value=$pictures.$counter.id}
    {/if}
    <div class="col-sm-4 col-md-4 col-lg-3 margin-bottom-10 block-picture-container block-picture-container-{$counter}">
        <div class="border shadow" data-id="{$counter}">
            <div class="trash" data-id="{$counter}" data-db-id="{$db_id}"><span class="glyphicon glyphicon-trash"></span></div>
            <div class="col-xs-10 margin-auto input-group-sm">
                <input class="form-control margin-top-5 margin-bottom-5 text-center picture-name picture-name-{$counter}" data-db-id="{$db_id}" placeholder="Picture name" value="{if $db_id}{$pictures.$counter.name}{/if}" {if !$db_id}disabled{/if}/>
            </div>
            <div class="col-xs-12 thumbnail border-none margin-bottom-0 margin-auto block-picture {if !$db_id}cursor-pointer{/if} {if !isset($pictures.$counter)}upload-btn{/if}" data-db-id="{$db_id}" data-id="{$counter}">
                {if isset($pictures.$counter)}
                    <img class="upload-picture upload-picture-{$counter}" src="{$base_uri}{$picture_dir}{$pictures.$counter.picture}" title="upload" alt="upload" />
                {else}
                    <img class="upload-picture upload-picture-{$counter}" src="{$base_uri}img/upload-icon.jpg" title="upload" alt="upload" />
                {/if}
            </div>
            {if $is_super_admin && $db_id}
                <div class="col-xs-12">
                    {*<div id="list" class="dropdown-check-list" tabindex="100">
                        <div class="anchor">Select category <span class="glyphicon glyphicon-chevron-down"></span></div>*}
                        <ul id="items" class="items {*hidden*}" style="list-style:none; padding: 0;">
                            {foreach from=$design_categories key=k item=design_category}
                                <li>
                                    <label class="cursor-pointer" for="{$db_id}_{$design_category.id}">
                                        <input type="checkbox" id="{$db_id}_{$design_category.id}" data-id-cat="{$design_category.id}" class="item margin-right-5" {if isset($pictures[$counter]['categories']) && in_array($design_category['id'], $pictures[$counter]['categories'])}checked{/if}/> {$design_category.name}
                                    </label>
                                </li>
                            {/foreach}
                            <div class="col-xs-12 btn btn-primary btn-sm save-categories" data-id-design="{$db_id}"><span class="glyphicon glyphicon-floppy-disk"></span> Save</div>
                        </ul>
                    {*</div>*}
                </div>
            {/if}
            <div class="col-xs-12 padding-0 margin-top-5 margin-bottom-5">
                <div class="col-xs-6 padding-right-0 padding-left-0 font-size-13 margin-top-10 text-right">Commission price:</div>
                <div class="col-xs-2 padding-left-0 margin-left-5 padding-top-10">USD</div>
                <div class="col-xs-3 input-group-sm padding-0">
                    <input class="form-control margin-0 margin-top-5 price" 
                           data-db-id="{$db_id}" 
                           data-id="{$counter}" 
                           type="number" min="0.00" max="5" 
                           placeholder="0.00"
                           {if !$db_id}disabled{/if}
                           {if $db_id && $pictures.$counter.price != null}value="{$pictures.$counter.price}"{/if} />
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
{/for}
    <div class="hidden-uploader">
        <input class="fileupload hidden-fileupload" data-id-upload="" type="file" name="files[]">
    </div>
<div class="col-sm-4 col-lg-3 margin-bottom-10">
    <div class="cursor-pointer dashed block-picture block-picture-add">
        <div class="thumbnail border-none margin-0 padding-0 margin-top-lg-30 margin-bottom-lg-30">
            <img src="{$base_uri}img/plus-icon.jpg" title="upload" alt="upload" />
        </div>
    </div>
</div>
<div class="clearfix"></div>
{*
<div class="col-xs-12">
<div class="panel panel-default shadow text-center font-size-20 cursor-pointer btn-add-more-pictures">
<span class="glyphicon glyphicon-plus"></span>
</div>
</div>*}
<div class="col-xs-12">
    <a href="{$base_uri}{$custom_shop_name}/admin/creation/layout-maker" class="btn btn-info pull-right {if !$pictures}disabled{/if} menu-item-picture">Place picture on products <span class="glyphicon glyphicon-chevron-right"></span></a>
</div>
{include file=$footer}