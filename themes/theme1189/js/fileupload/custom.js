$(function () {
    $('#fileupload').fileupload({
        dataType: 'json',
        autoUpload: false,
        acceptFileTypes: /(\.|\/)(gif|jpe?g|png|eps)$/i,
        previewMinWidth: 300,
        previewMinHeight: 300,
        previewMaxWidth: 10000,
        previewMaxHeight: 10000,
        previewThumbnail: true,
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
            $('.hidden-original-picture').attr("src", dataURL);
            
            if (file.preview.attributes.width.value <= 500 || file.preview.attributes.height.value <= 500) {
            $.magnificPopup.open({
                items: [{
                    src: $('\
                        <div class="popup">'+
                            '<div class="text-center">The size of the file you uploaded will be too small for us to prepare your customized product, please upload a higher quality picture</div>'+
                        '</div>'),
                    type:'inline'
                }]
            });
            }
            
            $('.slider-vertical').show();
            $('.add-to-cart').show();
            $('.fileinput-button').show();
            $('.list-item-custom').trigger('click');
            
            // Kick everything off with the target image
            resizeableImage($('.resize-image'));
            if (file.preview.attributes.width.value > 600 || file.preview.attributes.height.value > 600) {
                var ratioWidth = 600 / file.preview.attributes.width.value;
                var ratioHeight = 600 / file.preview.attributes.height.value;
                resizeImage(file.preview.attributes.width.value * (1-ratioWidth), file.preview.attributes.height.value * (1-ratioHeight));
            }
            
            if ($('.file-error')) {
                $('.file-error').remove();
            }
        }
        if (file.error) {
            node.append($('<p class="file-error text-danger margin-top-20"/>').text(file.error));
        }
    });
});