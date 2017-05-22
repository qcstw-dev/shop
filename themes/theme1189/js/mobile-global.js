$(function () {
    isMobile = $('#mobile').length;
    $('.quick-view').live('click', function (e) {
        e.preventDefault();
        quickView($(this).data('id-product'));
    });
    $('body').on('click', '.title-block', function () {
        $('.block-' + $(this).data('block')).slideToggle();
    });
    if ($('.preselected').length) {
        $('.block-' + $('.preselected').data('select')).slideToggle();
        $('html,body').animate({
            scrollTop: $('.block-' + $('.preselected').data('select')).offset().top},
                'slow');
    }
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
    $('.modify-form').live('click', function () {
        $(this).parents('form').find('input, select').prop('disabled', false);
        $(this).parents('form').find('button').removeClass('hidden');
        $(this).addClass('hidden');
    });
    $('.popup-product').live('click', function () {
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
                            ($(this).data('text') ? '<div class="alert alert-info">'+$(this).data('text')+'</div>' : '' ) +
                            '</div>'),
                    type: 'inline'
                }]
        });
    });

    $('body').on('click', '.close-popup', function () {
        $.magnificPopup.close();
    });
    $('body').on('click', '.remove-from-cart', function () {
        var idProduct = $(this).data('id-product');
        var customPicture = $(this).data('custom-picture');
        var originalPicture = $(this).data('original-picture');
        var id_customized_prod = $(this).data('id-customized-prod');
        ajaxCartRemove(idProduct, customPicture, originalPicture, id_customized_prod, this);
    });
    $('body').on('click', '.add-to-cart', function () {
        crop();
        var idProduct = $(this).data('id-product');
        var idDesign = ($(this).data('id-design') ? $(this).data('id-design') : null);
        var customPicture = $(this).data('custom-picture');
        var originalPicture = $(this).data('original-picture');
        ajaxCartAdd(idProduct, 1, idDesign, customPicture, originalPicture, this);
    });
});
function quickView(id_product, id_creation, id_design) {
    var url = baseDir + 'product-popup';
    var anchor = '';

    if (url.indexOf('#') != -1) {
        anchor = url.substring(url.indexOf('#'), url.length);
        url = url.substring(0, url.indexOf('#'));
    }
    if (url.indexOf('?') != -1)
        url += '&';
    else
        url += '?';
    
    var path = (window.location.host !== 'localhost' ? window.location.pathname.split('/')['1'] + '/' + window.location.pathname.split('/')['2'] : window.location.pathname.split('/')['2'] + '/' + window.location.pathname.split('/')['3']);
    var currentUrl = baseDir + path;
    
    if (!!$.prototype.fancybox) {
        $.fancybox({
            'padding': 0,
            'width': 900,
            'height': 'auto',
            'type': 'ajax',
            'autoSize': false,
            'href': url + 'content_only=1' + anchor + '&side=' + $('.shop').data('side') + '&id_product=' + id_product + (id_creation ? '&id_creation=' + id_creation : '') + (id_design ? '&id_design=' + id_design : ''),
            ajax: {
                complete: function () {
                    $('.jqzoom').jqzoom({
                        zoomType: 'innerzoom', //innerzoom/standard/reverse/drag
                        zoomWidth: 458, //zooming div default width(default width value is 200)
                        zoomHeight: 458, //zooming div default width(default height value is 200)
                        xOffset: 21, //zooming div default offset(default offset value is 10)
                        yOffset: 0,
                        title: false
                    });
                }
            }
        });
    }
}
function popupMessage(html, style) {
    $.magnificPopup.open({
        items: [{
                src: $('<div class="white-popup">' +
                        '<div class="col-xs-12 ' + (style ? 'alert alert-' + style : 'alert alert-default') + '">' +
                        html +
                        '</div>' +
                        '<div class="clearfix"></div>' +
                        '</div>'),
                type: 'inline'
            }]
    });
}

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

function ajaxCartRemove(idProduct, customPicture, originalPicture, id_customized_prod, callerElement) {
    $.ajax({
        type: 'POST',
        headers: {"cache-control": "no-cache"},
        url: baseUri + '?rand=' + new Date().getTime(),
        async: true,
        cache: false,
        dataType: "json",
        data: 'controller=cart&delete=1&id_product=' + idProduct 
                + '&token='
                + static_token
                + '&ajax=true'
                + '&custom_picture=' + customPicture
                + '&original_picture=' + customPicture
                + '&id_creation=' + id_customized_prod,
        success: function (jsonData) {
            if (!jsonData.hasError) {
                if ($('.block-cart-element').length === 1) {
                    $('.cart-total').text(jsonData.total);
                } else {
                    $('.block-cart-total').fadeOut('slow', function () {
                        $(this).remove();
                    });
                }
                $('.block-cart-element-' + idProduct + '-' + (id_customized_prod ? id_customized_prod : customPicture)).fadeOut('slow', function () {
                    $(this).remove();
                    if (!$('.block-cart-element').length) {
                        $('.empty-cart-message').removeClass('hidden');
                        $('.btn-checkout').hide();
                    }
                });
                $('.ajax_cart_quantity').text(jsonData.nbTotalProducts);
            } else {
                popupMessage('Error, please try again or contact us', 'danger');
            }
        },
        error: function ()
        {
            popupMessage('Error, please try again or contact us', 'danger');
        }
    });
}

function ajaxCartAdd(idProduct, quantity, idDesign, customPicture, originalPicture, callerElement) {
    $.ajax({
        type: 'POST',
        headers: {"cache-control": "no-cache"},
        url: baseUri + '?rand=' + new Date().getTime(),
        async: true,
        cache: false,
        dataType: "json",
        data: 'controller=cart&add=1&ajax=true&qty=1' + '&id_product=' + idProduct + '&id_design=' + idDesign + '&token=' + static_token + '&custom_picture=' + customPicture + (originalPicture ? '&original_picture=' + originalPicture : ''),
        beforeSend: function ()
        {
            loading();
        },
        success: function (jsonData, textStatus, jqXHR)
        {
            if (!jsonData.hasError) {
                document.location = baseUri + 'mobile-layout-maker?add_to_cart_success';
            } else {
                $.magnificPopup.close();
                popupMessage('Error, please try again or contact us', 'danger');
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown)
        {
            popupMessage('Error, please try again or contact us', 'danger');
        }
    });
}
