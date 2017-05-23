var id_shop = $('.shop').data('id-shop');
var name_shop = $('.shop').data('name-shop');
$(function () {
    $(window).scroll(function () {
        if ($(window).width() >= 768) {
            if (($(window).scrollTop() - $('.content-admin').offset().top) > 0) {
                if (($('.footer').offset().top - $(window).scrollTop() - $('.admin-menu').height()) < 0) {
                    $('.admin-menu').removeClass('fixed');
                    $('.admin-menu').addClass('block-filter-bottom');
                } else {
                    $('.admin-menu').addClass('fixed');
                }
            } else {
                $('.admin-menu').removeClass('fixed');
            }
        } else {
            $('.admin-menu').removeClass('fixed');
        }
    });
    $('.btn-iframe').click(function () {
        $('.iframe-textarea').text($('.iframe-html').html());
        $.magnificPopup.open({
            items: [{
                    src: $('<div class="white-popup text-left">' +
                            $('.iframe-container').html() +
                            '</div>'),
                    type: 'inline'
                }]
        });
    });
    $('.textarea-copy').live('focus', function () {
        $(this).select();
        document.execCommand("copy");
        confirm('Copied to clipboard!');
    });
});

function saving() {
    $('.saving').fadeIn('slow');
}
function saving_hide() {
    $('.saving').fadeOut('slow');
}