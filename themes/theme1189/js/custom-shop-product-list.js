var issetMoreProducts = true;
var category = '45';
var nbProductsToDisplay = 12;
var loading_products = false;
$(function () {
    $(window).scroll(function () {
        scrollPopup();
    });
    $('.popup-prod-list').scroll(function () {
        scrollPopup();
    });

    $('.filter-category').on('click', function () {
        category = $(this).data('id-category');
        loadProducts(true);
        issetMoreProducts = true;
        $('.title-category').text($(this).text());
    });
});
function scrollPopup() {
    if ($('.product-list').length && isScrolledIntoView($('#waypoint')) && !loading_products && issetMoreProducts) {
        loadProducts();
    }
}
function isScrolledIntoView(elem) {
    var docViewTop = $(window).scrollTop();
    var docViewBottom = docViewTop + $(window).height();

    var elemTop = $(elem).offset().top;
    var elemBottom = elemTop + $(elem).height();

    return ((elemBottom <= docViewBottom) && (elemTop >= docViewTop));
}
function loadProducts(reset) {
    var nbrProducts = $('.block-product').length;
    $.ajax({
        type: 'GET',
        url: baseDir,
        data: 'controller=ajaxcustomshop&action=loadproducts&ajax=true&last_range=' + (reset ? 0 : nbrProducts) + '&nb_products=' + nbProductsToDisplay + '&id_category=' + category,
        dataType: 'html',
        async: true,
        beforeSend: function () {
            loading('Loading...');
            loading_products = true;
        },
        success: function (html) {
            loading_hide();
            if (html) {
                firstTime = 0;
                if (reset) {
                    $('.block-product').remove();
                }
                $('#waypoint').before(html);
            } else {
                issetMoreProducts = false;
            }
            loading_products = false;
        }
    });
}