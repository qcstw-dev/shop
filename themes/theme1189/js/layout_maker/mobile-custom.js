/***************** LAYOUT MAKER ****************/
$(function () {
    $('.change-color-product').live('click', function () {
        $('.overlay-img').attr('src', $(this).attr('src'));
        $('.overlay-img').show();
    });
    resizeableImage($('.resize-image'), true);
});
