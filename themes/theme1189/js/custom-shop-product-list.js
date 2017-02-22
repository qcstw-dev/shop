var issetMoreProducts = true;
var category = '45';
var nbProductsToDisplay = 12;
$(document).ready(function () {
    $('.popup-prod-list').scroll(function () {
        if (issetMoreProducts) {
            // End of the document reached?
            if ($(this).scrollTop() + $(this).innerHeight() >= $(this)[0].scrollHeight && $('.block-product').length >= nbProductsToDisplay && ($('.block-product').length % nbProductsToDisplay) === 0 ) {
                loadProducts();
            }
        }
    });
    $('.filter-category').on('click', function () {
        category = $(this).data('id-category');
        loadProducts(true);
        issetMoreProducts = true;
    });
});
function loadProducts(reset) {
    var nbrProducts = $('.block-product').length;
    $.ajax({
        type: 'GET',
        url: baseDir,
        data: 'controller=ajaxcustomshop&action=loadproducts&ajax=true&last_range=' + (reset ? 0 : nbrProducts) + '&nb_products=' + nbProductsToDisplay + '&id_category=' + category,
        dataType: 'html',
        beforeSend: function () {
            loading('Loading...');
        },
        success: function (html) {
            loading_hide();
            $('.loading-ajax').addClass('hidden');
            if (html) {
                firstTime = 0;
                if (reset) {
                    $('.block-product').remove();
                }
                $('.white-popup').append(html);
//                for (var i = nbrProducts + 1; i <= $('.block-product').length; i++) {
//                    $('.slick-pictures-product-list-' + i).slick({
//                        infinite: true,
//                        slidesToShow: 1,
//                        slidesToScroll: 1,
//                        responsive: []
//                    });
//                }
            } else {
                issetMoreProducts = false;
            }
        }
    });
}