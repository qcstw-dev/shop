var limit = 10;
$(function () {
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
        $.fancybox.showLoading();
        data.context = $('#files');
    }).on('fileuploadprocessalways', function (e, data) {
        var index = data.index,
                file = data.files[index],
                node = $(data.context);
        if (index + 1 > limit || $('.list-item-custom-image').length === limit) {
            $.fancybox.hideLoading();
            $.magnificPopup.open({
                items: [{
                        src: $('<div class="white-popup">' +
                                '<div><span class="glyphicon glyphicon-warning-sign font-size-20"></span> Upload is limited to 10 pictures</div>' +
                                '</div>'),
                        type: 'inline'
                    }]
            });
        } else {
            var isLayoutMaker = $('.resize-image').length;
            var error = [];

            if (file.preview && !file.error) {
                var dataURL = file.preview.toDataURL();

                var formData = new FormData();
                formData.append(file.name, file);
                formData.append('controller', 'ajax');
                formData.append('action', 'storecustomimage');
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
                            $('.list-item-custom').after('\
                                <div class="col-xs-4 col-sm-3 thumbnail border-none margin-bottom-10 margin-top-10 list-item list-item-design list-item-custom-image cursor-pointer ">\n\
                                    <img class="' + (isLayoutMaker ? 'img-product' : 'popup') + ' border" src="' + dataURL + '" />\n\
                                    <span class="delete_cutom_picture cursor-pointer glyphicon glyphicon-remove" data-file-name="' + json.image_name + '" title="Remove from selection"></span>\n\
                                </div>');
                            // if it's layout maker page
                            if (isLayoutMaker && data.files.length === index + 1) {
                                $('.list-item-custom-image').trigger('click');
                                if (file.preview.attributes.width.value <= 500 || file.preview.attributes.height.value <= 500) {
                                    $.magnificPopup.open({
                                        items: [{
                                                src: $('\
                                                <div class="white-popup">' +
                                                        '<div class="text-center">The size of the file you uploaded will be too small for us to prepare your customized product, please upload a higher quality picture</div>' +
                                                        '<div class="text-center color-red margin-top-10"><span class="underline">Minimum size</span>: 600*600px, <span class="underline">Format accepted</span>: .jpg, .png. .gif</div>' +
                                                        '</div>'),
                                                type: 'inline'
                                            }]
                                    });
                                }
                            }
                        }
                    }
                });

            }
            if (data.files.length === index + 1) {
                $.fancybox.hideLoading();
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

                $.magnificPopup.open({
                    items: [{
                            src: $(popup_content),
                            type: 'inline'
                        }]
                });
            }
        }
    });
});
function resizePreviewPicture(file) {
    if (file.preview.attributes.width.value > 600 || file.preview.attributes.height.value > 600) {
        if (file.preview.attributes.width.value > 600) {
            var newWidth = 600;
            var ratio = newWidth / parseInt(file.preview.attributes.width.value);
            var newHeight = parseInt(file.preview.attributes.height.value) * ratio;
        } else if (file.preview.attributes.height.value > 600) {
            var newHeight = 600;
            var ratio = newHeight / parseInt(file.preview.attributes.height.value);
            var newWidth = parseInt(file.preview.attributes.width.value) * ratio;

        }
        resizeImage(newWidth, newHeight);
    }
}