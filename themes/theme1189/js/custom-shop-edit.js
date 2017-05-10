$(function () {
    fileuploadListener();
    $('.deactivated').on('change', function (e) {
        var deactivated = $(this).is(":checked") ? 1 : 0;
        if (deactivated) {
            popupChoice('Are you sure to deactivate your shop?',
                    {
                        'function_name': 'checkDeactivate',
                        'arguments': true
                    },
                    {
                        'function_name': 'checkDeactivate',
                        'arguments': false
                    });
        } else {
            $(this).prop('checked', false);
        }
    });
    $('.form-remove-btn').live('click', function () {
        var type = $(this).data('type');
        var img_name = $('.form-preview-' + type).data('img-name');
        $.ajax({
            type: 'POST',
            url: baseDir + 'index.php?controller=ajaxcustomshop&action=removeLogoOrHeader&ajax=true&type=' + type + '&img_name=' + img_name + '&shop=' + id_shop,
            cache: false,
            dataType: 'json',
            async: true,
            beforeSend: function () {
                loading('Please wait...');
            },
            success: function (json) {
                if (json.success) {
                    loading_hide();
                    $('.form-preview-' + type).remove();
                    $('.default-' + type).removeClass('hidden');
                    $('.form-remove-btn[data-type="' + type + '"]').addClass('hidden');
                } else {
                    popupError(json.error);
                }
            }
        });
    });
});

function checkDeactivate(value) {
    $('.deactivated').prop('checked', value);
}
function fileuploadListener() {
    $('.form-upload-btn').live('click', function (e) {
        $('.fileupload-' + $(this).data('type')).trigger('click');
    });
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
        loading_popup('Uploading...');
    }).on('fileuploadprocessalways', function (e, data) {
        var index = data.index,
                file = data.files[index],
                node = $(data.context);
        var error = [];

        if (file.preview && !file.error) {
            var dataURL = file.preview.toDataURL();
            var type = $(this).data('type');
            var formData = new FormData();
            formData.append(file.name, file);
            formData.append('controller', 'ajaxcustomshop');
            formData.append('action', 'saveshopimage');
            formData.append('type', type);
            formData.append('shop', id_shop);
            formData.append('ajax', true);
            $.ajax({
                type: 'POST',
                url: baseDir + 'index.php',
                data: formData,
                cache: false,
                dataType: 'json',
                processData: false, // Don't process the files
                contentType: false,
                async: false,
                success: function (json) {
                    if (json.success === true) {
                        // append PICTURE
                        loading_popup_hide();
                        confirm('Uploaded!');
                        $('.form-preview-' + type).remove();
                        $('.form-' + type + '-area').append('<img class="form-preview-' + type + ' popup-picture" data-img-name="' + json.image_name + '" src="' + baseUri + 'img/custom_shop/' + type + '/' + json.image_name + '" />');
                        $('.form-remove-btn[data-type="' + type + '"]').removeClass('hidden');
                        $('.default-' + type).addClass('hidden');
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