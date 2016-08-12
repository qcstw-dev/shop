$(function () {
    $('#fileupload').fileupload({
        dataType: 'json',
        autoUpload: false,
        acceptFileTypes: /(\.|\/)(gif|jpe?g|png|eps)$/i,
        previewMinWidth: 300,
        previewMinHeight: 300,
        previewMaxWidth: 800,
        previewMaxHeight: 400,
        previewThumbnail: false,
        previewCrop: false,
        imageCrop: false
    }).on('fileuploadadd', function (e, data) {

        data.context = $('#files');

    }).on('fileuploadprocessalways', function (e, data) {
        $('.file-error').remove();
        var index = data.index,
                file = data.files[index],
                node = $(data.context);
        if (file.preview && !file.error) {
            var dataURL = file.preview.toDataURL();

            $('.resize-image').attr("src", dataURL).removeClass('hidden');
            
            $('.slider-vertical').show();
            $('.add-to-cart').show();
            $('.fileinput-button').show();
            $('.list-item-custom').trigger('click');
            
            // Kick everything off with the target image
            resizeableImage($('.resize-image'));
            
            if ($('.file-error')) {
                $('.file-error').remove();
            }
        }
        if (file.error) {
            node.append($('<p class="file-error text-danger margin-top-20"/>').text(file.error));
        }
    });
});