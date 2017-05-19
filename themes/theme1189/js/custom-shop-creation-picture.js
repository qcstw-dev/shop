$(document).ready(function () {
    fileuploadListener();
    $('.design-category').live('change', function () {
        $.ajax({
            type: 'POST',
            dataType: 'json',
            url: baseDir + 'index.php?controller=ajaxcustomshop&action=savedesigncategory&ajax=true&category='+ this.value + '&id_design='+ $(this).data('db-id'),
            beforeSend: function () {
                loading('Saving...');
            },
            success: function (json) {
                loading_hide();
                if (json.success) {
                    confirm('Saved!');
                } else {
                    popupError(json.error);
                }
            }
        });
    });
    $('.upload-btn').live('click', function (e) {
        $('.hidden-fileupload').data('db-id', $(this).data('db-id'));
        $('.hidden-fileupload').data('id-upload', $(this).data('id'));
        $('.hidden-fileupload').trigger('click');
    });
    $("input[type=file]").live("click", function (e) {
        e.stopPropagation();
    });
    $('.btn-add-more-pictures').on('click', function () {
        loadPictureBlocks($('.block-picture:last').data('id'), 8);
    });
    $('.trash').live('click', function () {
        if ($(this).data('db-id')) {
            var db_id = $(this).data('db-id');
            var id = $(this).data('id');
            popupChoice('Every products with this picture will be also deleted', {
                'function_name': 'deletePicture',
                'arguments': {
                    'db_id': db_id,
                    'id': id
                }
            });
        }
    });
    $('.block-picture-add').on('click', function () {
        $.ajax({
            type: 'POST',
            url: baseDir + 'index.php?controller=ajaxcustomshop&action=loadpictureblocks&ajax=true&offset=' + $('.block-picture-container:last').find('.block-picture').data('id'),
            cache: false,
            dataType: 'html',
            processData: false,
            contentType: false,
            async: true,
            success: function (html) {
                if (html) {
                    $('.block-picture-container:last').after(html);
                }
            }
        });
    });
    var globalTimeout = null;
    $('.price').live('click', function () {
        $(this).select();
    });
    $('.price').live('change', function () {
        var element = $(this);
        if (globalTimeout !== null) {
            clearTimeout(globalTimeout);
        }
        globalTimeout = setTimeout(function () {
            globalTimeout = null;
            if (element.val()) {
                if (element.val() > 5) {
                    popupError('Cannot be more than $5');
                    element.val('1');
                } else {
                    saveField(element, 'price');
                }
            }
        }, 500);
    });
    function saveField(element, name) {
        saving();
        $.ajax({
            type: 'POST',
            url: baseDir + 'index.php?controller=ajaxcustomshop&action=' + (name === 'price' ? 'saveprice' : 'savepicturename') + '&ajax=true&' + name + '='
                    + element.val() + (element.data('db-id') ? '&db_id=' + element.data('db-id') : ''),
            cache: false,
            dataType: 'json',
            async: true,
            beforeSend: function () {
                loading('Saving...');
            },
            success: function (json) {
                loading_hide();
                if (json.success) {
                    confirm('Saved!');
                } else {
                    popupError(json.error);
                }
            }
        });
    }
    $('.picture-name').live('keyup', function () {
        var element = $(this);
        if (globalTimeout !== null) {
            clearTimeout(globalTimeout);
        }
        globalTimeout = setTimeout(function () {
            globalTimeout = null;
            if (element.val()) {
                saveField(element, 'picture_name');
            }
        }, 5000);
    });
    $('.picture-name').live('focusout', function () {
        if (globalTimeout !== null) {
            clearTimeout(globalTimeout);
        }
        var element = $(this);
        if (element.val()) {
            saveField(element, 'picture_name');
        }
    });
});
function deletePicture(aArg) {
    $.ajax({
        type: 'POST',
        url: baseDir + 'index.php?controller=ajaxcustomshop&action=deletePicture&ajax=true' + '&shop=' + id_shop + '&id_design=' + aArg['db_id'],
        cache: false,
        dataType: 'json',
        processData: false, // Don't process the files
        contentType: false,
        async: true,
        beforeSend: function () {
            loading('Deleting...');
        },
        success: function (json) {
            loading_hide();
            if (json.success) {
                $('.block-picture-container-' + aArg['id']).fadeOut(300, function () {
                    $(this).remove();
                    if (json.count === 0) {
                        $('.menu-item-picture').addClass('disabled');
                    }
                });
            } else {
                popupError(json.error);
            }
        }
    });
}
function fileuploadListener() {
    limit = 1;
    $('.fileupload').fileupload({
        dataType: 'json',
        autoUpload: false,
        acceptFileTypes: /(\.|\/)(gif|jpe?g|png)$/i,
        previewMinWidth: 300,
        previewMinHeight: 300,
        previewMaxWidth: 100000,
        previewMaxHeight: 100000,
        previewThumbnail: false,
        previewCrop: false,
        imageCrop: false,
        singleFileUploads: false,
        limitMultiFileUploads: limit,
        dropZone: false
    }).on('fileuploadadd', function (e, data) {
        // loading GIF
        loading('Uploading...');
    }).on('fileuploadprocessalways', function (e, data) {
        var index = data.index,
                file = data.files[index],
                node = $(data.context);
        var error = [];

        if (file.preview && !file.error) {
            if ((file.preview.attributes.width.value <= 500 && file.preview.attributes.height.value <= 700)
                    ||
                    (file.preview.attributes.width.value <= 700 && file.preview.attributes.height.value <= 500)
                    ) {
                loading_hide();
                $.magnificPopup.open({
                    items: [{
                            src: $('\
                                <div class="white-popup">' +
                                    '<div class="text-center">The size of the file you uploaded will be too small for us to prepare your customized product, please upload a higher quality picture</div>' +
                                    '<div class="text-center color-red margin-top-10"><span class="underline">Minimum size</span>: 700 pixels minimum width or 500 pixels minimum height, <span class="underline">Format accepted</span>: .jpg, .png. .gif</div>' +
                                    '</div>'),
                            type: 'inline'
                        }]
                });
            } else {
                var dataURL = file.preview.toDataURL();

                var formData = new FormData();
                formData.append(file.name, file);
                formData.append('controller', 'ajaxcustomshop');
                formData.append('action', 'savepicture');
                formData.append('shop', id_shop);
                if ($(this).data('db-id')) {
                    formData.append('db_id', $(this).data('db-id'));
                }
                formData.append('ajax', true);
                $.ajax({
                    type: 'POST',
                    url: baseDir + 'index.php',
                    data: formData,
                    cache: false,
                    dataType: 'json',
                    processData: false, // Don't process the files
                    contentType: false,
                    success: function (json) {
                        if (json.success === true) {
                            // append PICTURE
                            if (!$('.block-picture-container-' + $('.fileupload').data('id-upload')).find('.trash').data('db-id')) {
                                $('.block-picture-container-' + $('.fileupload').data('id-upload')).find('.trash, .price, .picture-name, .upload-btn, .design-category').data('db-id', json.id);
                            }
                            $('.picture-name-' + $('.fileupload').data('id-upload')).val(json.image_title);
                            $('.upload-picture-' + $('.fileupload').data('id-upload')).replaceWith(
                                    '<img class="upload-picture upload-picture-' + $('.fileupload').data('id-upload') + '" src="' + baseUri + 'img/custom_shop/picture/' + json.image_name + '" />'
                                    );
                            loading_hide();
                            confirm('Uploaded!');
                            $('.block-picture-container-' + $('.fileupload').data('id-upload')).find('.price, .picture-name, .design-category').prop('disabled', false);
                            $('.block-picture-container-' + $('.fileupload').data('id-upload')).find('.price').val(json.price);
                            $('.menu-item-picture').removeClass('disabled');
                        } else {
                            if (json.error) {
                                popupError(json.error);
                            }
                        }
                    }
                });
            }
        }
        if (file.error) {
            error.push(file.error);
        }
        if (error.length) {
            var popup_content = '\
                    <div class="white-popup">' +
                    '<div class="text-center">File error:</div>';
            $.each(error, function (index, message) {
                popup_content += '<li>' + message + '</li>';
            });
            popup_content += '</div>';

            popupError(popup_content);
        }
    });
}