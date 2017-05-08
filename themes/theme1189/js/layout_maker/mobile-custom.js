/***************** LAYOUT MAKER ****************/
$(function () {
    $('.change-color-product').live('click', function () {
        $('.overlay-img').attr('src', $(this).attr('src'));
        $('.overlay-img').show();
    });
    var newWidth = $('.overlay').width();
    var img = $('.resize-image')[0]; // Get my img elem
    var pic_real_width, pic_real_height;

    $("<img/>") // Make in memory copy of image to avoid css issues
        .attr("src", $(img).attr("src"))
        .load(function () {
            pic_real_width = this.width;   // Note: $(this).width() will not
            pic_real_height = this.height;   // Note: $(this).width() will not
            var ratio = newWidth / parseInt(pic_real_width);
            var newHeight = parseInt(pic_real_height) * ratio;
            resizeImage(newWidth-40, newHeight-40);
        });
    resizeableImage($('.resize-image'), true);
});
