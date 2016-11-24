var limit = 1;
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
        // loading GIF
        loading();
    }).on('fileuploadprocessalways', function (e, data) {
        var index = data.index,
                file = data.files[index],
                node = $(data.context);
        var isLayoutMaker = $('.resize-image').length;
        var error = [];

        if (file.preview && !file.error) {
            var dataURL = file.preview.toDataURL();

            var formData = new FormData();
            formData.append(file.name, file);
            formData.append('controller', 'ajax');
            formData.append('action', 'storecustomimagemobile');
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
                        document.location = baseUri+'mobile-layout-maker?id_design='+json.image_name;
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

            $.magnificPopup.open({
                items: [{
                        src: $(popup_content),
                        type: 'inline'
                    }]
            });
        }
    });
});
$('.upload-design').on('click', function () {
    $('.hidden-fileupload').trigger('click');
});
