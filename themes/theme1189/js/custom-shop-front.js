$(function () {
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
                        if (!$('.block-cart-element').length) {
                            $('.empty-cart-message').fadeIn();
                        }
                    });
                } else {
                    popupError(json.error);
                }
            }
        });
    });
    $('.cart-icon').on('hover', function () {
        $(this).find('.cart').stop().slideDown();
    });
    $('.cart-icon').on('mouseleave', function () {
        $(this).find('.cart').stop().slideUp();
    });
    $('.add-creation').on('click', function () {
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
                    confirm('Added !');
                    addToCart();
                    $('.ajax_cart_quantity').html(json.nb_products);
                } else {
                    popupError(json.error);
                }
            }
        });
    });
    $('.mini-picture').on('click', function () {
        $('.big-picture-' + $(this).data('id-creation')).attr('src', $(this).attr('src'));
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
function addToCart() {
    $.ajax({
        type: 'POST',
        url: baseDir + 'index.php?controller=ajaxcustomshop&action=loadcartproducts&ajax=true',
        cache: false,
        dataType: 'html',
        success: function (html) {
            if (html) {
                $('.empty-cart-message').hide();
                $('.cart-content').replaceWith(html);
            }
        }
    });
}
function contactFormPopup() {
    $.magnificPopup.open({
        items: [{
                src: $('<div class="white-popup">' +
                        $('.contact-form').html() +
                        '</div>'),
                type: 'inline'
            }],
        focus: '.search_query'
    });
}