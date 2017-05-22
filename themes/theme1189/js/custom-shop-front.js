$(function () { 
    $('.social-network-share').live('click', function (e) {
        e.preventDefault();
        window.open($(this).attr('href'), 'fbShareWindow', 'height=450, width=550, top=' + ($(window).height() / 2 - 275) + ', left=' + ($(window).width() / 2 - 225) + ', toolbar=0, location=0, menubar=0, directories=0, scrollbars=0');
        return false;
    });
    $('.share-btn').click(function () {
        $.magnificPopup.open({
            items: [{
                    src: $('<div class="white-popup">' +
                            $('.popup-share-' + $(this).data('id')).html() +
                            '</div>'),
                    type: 'inline'
                }]
        });
    });
    if (getUrlParameter('contact')) {
        contactFormPopup();
    }
    $('#submitMessage').live('click', function (e) {
        e.preventDefault();
        var data = new FormData();
        data.append('fileUpload', $('#fileUpload')[0].files[0]);
        $("input, select, textarea").each(function () {
            data.append($(this).attr('name'), $(this).val());
        });
        if (typeof grecaptcha !== 'undefined') {
            data.append('g-recaptcha-response', grecaptcha.getResponse());
        }
        $.ajax({
            type: 'POST',
            url: baseDir + 'index.php?controller=ajaxcustomshop&action=SubmitContactForm&ajax=true&custom_shop_name=' + custom_shop_name,
            cache: false,
            contentType: false,
            processData: false,
            data: data,
            dataType: 'html',
            beforeSend: function () {
                loading('Please wait...');
            },
            success: function (html) {
                loading_hide();
                $('.contact-popup').html(html);
            }
        });

    });
    $('.remove-from-cart').live('click', function () {
        var id_creation = $(this).data('id-creation');
        $.ajax({
            type: 'POST',
            url: baseDir + 'index.php?controller=ajaxcustomshop&action=removefromcart&ajax=true&id_creation=' + id_creation,
            cache: false,
            dataType: 'json',
            success: function (json) {
                if (json.success) {
                    $('.ajax_cart_quantity').html(json.nb_products);
                    $('.block-cart-element-' + id_creation).fadeOut('slow', function () {
                        $(this).remove();
                        $('.cart-desk').css('height', 'auto');
                        if (!$('.block-cart-element').length) {
                            $('.empty-cart-message').fadeIn();
                            $('.checkout-btn').fadeOut();
                            loadCart();
                        }
                    });
                } else {
                    popupError(json.error);
                }
            }
        });
    });
    $('.cart-icon-mobile').on('click', function () {
        popupMessage($('.cart').html());
    });
    $('.cart-icon-desk').on('hover', function () {
        $(this).find('.cart').stop().slideDown();
    });
    $('.cart-icon-desk').on('mouseleave', function () {
        $(this).find('.cart').stop().slideUp();
    });
    $('.currency-btn-mobile, .currency-btn-desk').on('click', function () {
        popupMessage($('.list-currency').html());
    });
//    $('.currency-btn-desk').on('hover', function () {
//        $(this).find('.cart').stop().slideDown();
//    });
//    $('.currency-btn-desk').on('mouseleave', function () {
//        $(this).find('.cart').stop().slideUp();
//    });
    $('.add-creation').live('click', function () {
        loading('Adding to cart...');
        var id_creation = $(this).data('id-creation');
        $.ajax({
            type: 'POST',
            url: baseDir + 'index.php?controller=ajaxcustomshop&action=addtocartcustomproduct&ajax=true&id_creation=' + id_creation,
            cache: false,
            dataType: 'json',
            success: function (json) {
                if (json.success) {
                    loading_hide();
                    $('.empty-cart-message').hide();
                    confirm('Added !');
                    loadCart();
                    $('.cart-desk').css('height', 'auto');
                    $('.ajax_cart_quantity').html(json.nb_products);
                } else {
                    popupError(json.error);
                }
            }
        });
    });
    $('.mini-picture').on('click', function () {
        $('.big-picture-' + $(this).data('id-creation')).attr('src', $(this).attr('src'));
        $('.big-picture-' + $(this).data('id-creation')).data('text', $(this).data('text'));
        $('.picture-mention[data-id-creation="' + $(this).data('id-creation') + '"]').addClass('hidden');
        if ($(this).hasClass('thumb-picture-mention')) {
            $('.picture-mention[data-id-creation="' + $(this).data('id-creation') + '"]').removeClass('hidden');
        }
    });
    if ($('.contact-form').hasClass('auto-display')) {
        contactFormPopup();
    }
    $(document).on('click', '.btn-contact', function () {
        contactFormPopup();
    });
    $(document).on('click', '.popup-cms-content', function () {
        $.ajax({
            type: 'POST',
            url: baseDir + 'index.php?controller=ajaxcustomshop&action=load' + $(this).data('page') + '&ajax=true',
            cache: false,
            dataType: 'html',
            success: function (html) {
                if (html) {
                    $.magnificPopup.open({
                        items: [{
                                src: $('<div class="white-popup">' +
                                        html +
                                        '<div class="clearfix"></div>' +
                                        '</div>'),
                                type: 'inline'
                            }]
                    });
                }
            }
        });
    });
});
function loadCart() {
    $.ajax({
        type: 'POST',
        url: baseDir + 'index.php?controller=ajaxcustomshop&action=loadcartproducts&ajax=true&custom_shop_name=' + custom_shop_name,
        cache: false,
        dataType: 'html',
        success: function (html) {
            if (html) {
                $('.cart-content').replaceWith(html);
            }
        }
    });
}
function contactFormPopup() {
    $.ajax({
        type: 'POST',
        url: baseDir + 'index.php?controller=ajaxcustomshop&action=loadcontactpopup&ajax=true&custom_shop_id=' + custom_shop_id,
        cache: false,
        dataType: 'html',
        beforeSend: function () {
            loading('Please wait...');
        },
        success: function (html) {
            loading_hide();
            $.magnificPopup.open({
                items: [{
                        src: $('<div class="white-popup text-left contact-popup">' +
                                html +
                                '</div>'),
                        type: 'inline'
                    }]
            });
        }
    });
}