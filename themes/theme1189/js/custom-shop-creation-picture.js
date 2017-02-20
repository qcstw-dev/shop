$(document).ready(function () {
    fileuploadListener();
    $('.upload-btn').live('click', function (e) {
        $('.hidden-fileupload-' + $(this).data('id')).trigger('click');
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
            popupChoice('<div>Every products with this picture will be also deleted</div>', {
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
                    fileuploadListener();
                }
            }
        });
    });
    var globalTimeout = null;
    $('.price').live('click', function () {
        $(this).select();
    });
    $('.price').live('keyup', function () {
        var element = $(this);
        if (globalTimeout !== null) {
            clearTimeout(globalTimeout);
        }
        globalTimeout = setTimeout(function () {
            globalTimeout = null;
            if (element.val()) {
                if (element.val() > 5) {
                    popupError('Cannot be more than $5');
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
            success: function (json) {
                if (json.success) {
                    element.blur();
                    saving_hide();
                    confirm();
                } else {
                    saving_hide();
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
        }, 1000);
    });
});
function deletePicture(aArg) {
    $.ajax({
        type: 'POST',
        url: baseDir + 'index.php?controller=ajaxcustomshop&action=deletePicture&ajax=true&id_design=' + aArg['db_id'],
        cache: false,
        dataType: 'json',
        processData: false, // Don't process the files
        contentType: false,
        async: true,
        beforeSend: function () {
            loading_popup('Deleting...');
        },
        success: function (json) {
            loading_popup_hide();
            if (json.success) {
                $('.block-picture-container-' + aArg['id']).fadeOut(300, function () {
                    $(this).remove();
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
        limitMultiFileUploads: limit
    }).on('fileuploadadd', function (e, data) {
        // loading GIF
        loading('Uploading...');
    }).on('fileuploadprocessalways', function (e, data) {
        var index = data.index,
                file = data.files[index],
                node = $(data.context);
        var error = [];

        if (file.preview && !file.error) {
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
                        if (!$('.block-picture-container-' + data.idUpload).find('.trash').data('db-id')) {
                            $('.block-picture-container-' + data.idUpload).find('.trash, .fileupload, .price, .picture-name').data('db-id', json.id);
                        }
                        $('.picture-name-' + data.idUpload).val(json.image_title);
                        $('.upload-picture-' + data.idUpload).replaceWith(
                                '<img class="upload-picture upload-picture-' + data.idUpload + '" src="' + baseUri + 'img/custom_shop/picture/' + json.image_name + '" />'
                                );
                        loading_hide();
                        confirm();
                        $('.block-picture-container-' + data.idUpload).find('.price, .picture-name').prop('disabled', false);
                        $('.block-picture-container-' + data.idUpload).find('.price').val(json.price);
                    } else {
                        if (json.error) {
                            popupError(json.error);
                        }
                    }
                }
            });

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