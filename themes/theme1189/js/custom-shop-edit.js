$(function () {
    fileuploadListener();
});
function fileuploadListener() {
    $('.form-upload-btn').live('click', function (e) {
        $('.fileupload-'+$(this).data('type')).trigger('click');
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
        saving();
    }).on('fileuploadprocessalways', function (e, data) {
        saving();
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
                        saving_hide();
                        confirm();
                        $('.'+type).remove();
                        $('.' + type +'-area').append(
                            '<img class="'+type+' popup-picture cursor-pointer" src="' + baseUri + 'img/custom_shop/'+type+'/' + json.image_name + '" />'
                        );
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