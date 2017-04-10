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
                            $('.btn-block-selection').removeClass('disabled');
                            if (!isLayoutMaker) {
                                $('.designs-list').prepend('\
                                    <div class="col-xs-1 thumbnail border-none list-item list-item-design list-item-custom-image id_' + json.image_name + ' cursor-pointer" data-original-picture="' + json.image_name + '">\n\
                                        <img class="' + (isLayoutMaker ? 'img-product' : 'popup') + ' border" src="' + dataURL + '" />\n\
                                        <span class="delete_cutom_picture cursor-pointer glyphicon glyphicon-remove" data-file-name="' + json.image_name + '" title="Remove from selection"></span>\n\
                                    </div>');
                            } else {
                                $('.designs-list').prepend('\
                                    <div class="col-xs-2 thumbnail border-none margin-bottom-10 margin-top-10 list-item list-item-design list-item-custom-image id_' + json.image_name + ' cursor-pointer" data-original-picture="' + json.image_name + '">\n\
                                        <img class="' + (isLayoutMaker ? 'img-product' : 'popup') + ' border" src="' + dataURL + '" />\n\
                                    </div>');
                            }
                            if (!$('.list-item-product').length && !$('.list-item-design').length) {
                                $('.btn-block-selection').addClass('disabled');
                            } else if (!$('.list-item-product').length || !$('.list-item-design').length) {
                                $('.btn-block-selection').removeClass('blink');
                            }
                            // if it's layout maker page
                            if (data.files.length === index + 1) {
//                                $('.id_'+json.image_name).trigger('click');
                                if (
                                    (file.preview.attributes.width.value <= 500 && file.preview.attributes.height.value <= 700)
                                    ||
                                    (file.preview.attributes.width.value <= 700 && file.preview.attributes.height.value <= 500)
                                ) {
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
                                }
//                                if ($('.list-item-product').length && $('.list-item-design').length) {
//                                    $('.add-to-cart').data('id-product', $('.list-item-product').data('id'));
//                                    $('.add-to-cart').show();
//                                    $('.preview-layout').show();
//                                    $('.slider-vertical').show();
//                                }
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