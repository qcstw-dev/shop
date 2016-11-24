$('.select').on('click', function () {
    $.magnificPopup.open({
        items: [{
                src: $('<div class="white-popup">' +
                        $('.block-' + $(this).data('block')).html() +
                        '</div>'),
                type: 'inline'
            }],
        focus: '.search_query'
    });
});
$('.slick-pictures-product-list').slick({
    infinite: true,
    slidesToShow: 1,
    slidesToScroll: 1,
    responsive: []
});
$('.slick-pictures').slick({
    infinite: true,
    slidesToShow: 1,
    slidesToScroll: 1,
    responsive: [
        {
            breakpoint: 480,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1
            }
        }
    ]
});

$('.popup-product').click(function () {
    var id = $(this).data('id');
    var html = $('.popup-product-content-' + id).html();

    $.magnificPopup.open({
        items: [{
                src: $('<div class="white-popup">' +
                        html +
                        '</div>'),
                type: 'inline'
            }],
        callbacks: {
            open: function () {
                $(".slick-popup-" + id).slick({
                    infinite: true,
                    responsive: []
                });
            },
            close: function () {
                $(".slick-popup-" + id).slick('unslick');
            }
        }
    });
});
$('.popup').live('click', function () {
    $.magnificPopup.open({
        items: [{
                src: $('<div class="white-popup">' +
                        '<div class="thumbnail"><img src="' + ($(this).data('src') ? $(this).data('src') : $(this).attr('src')) + '" /></div>' +
                        '</div>'),
                type: 'inline'
            }]
    });
});

$('body').on('click', '.close-popup', function () {
    $.magnificPopup.close();
});

function loading() {
    $.magnificPopup.open({
        items: [{
                src: $('<div class="white-popup">' +
                        '<div class="row">' +
                        '<div class="col-xs-2 col-xs-offset-3">' +
                        '<img src="' + baseUri + '/img/loader.gif" />' +
                        '</div>' +
                        '<div class="col-xs-7 bold">' +
                        'Loading...' +
                        '</div>' +
                        '</div>' +
                        '</div>'),
                type: 'inline'
            }],
        showCloseBtn: false
    });
}