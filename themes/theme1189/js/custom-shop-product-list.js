var issetMoreProducts = true;
var category = '45';
var nbProductsToDisplay = 12;
var loading_products = false;
$(function () {
    $('.popup-prod-list').scroll(function () {
        if (isScrolledIntoView($('#waypoint')) && !loading_products && issetMoreProducts) {
            loadProducts();
        }
    });
//    $('.popup-prod-list').scroll(function () {
//        if (issetMoreProducts) {
//            // End of the document reached?
//            if ($(this).scrollTop() + $(this).innerHeight() >= $(this)[0].scrollHeight && $('.block-product').length >= nbProductsToDisplay && ($('.block-product').length % nbProductsToDisplay) === 0 ) {
//                loadProducts();
//            }
//        }
//    });
//    waypoint = new Waypoint({
//        element: document.getElementById('waypoint'),
//        handler: function (direction) {
//            console.log(direction);
//            if (direction === 'down' && issetMoreProducts && $('.block-product').length >= nbProductsToDisplay && ($('.block-product').length % nbProductsToDisplay) === 0) {
//                console.log('disable');
//                waypoint.disable();
//                loadProducts();
//            }
//        },
//        offset: 'bottom-in-view'
//    });


    
    $('.filter-category').on('click', function () {
        category = $(this).data('id-category');
        loadProducts(true);
        issetMoreProducts = true;
        $('.title-category').text($(this).text());
    });
});
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
                $('.white-popup').append(html);
            } else {
                issetMoreProducts = false;
            }
            loading_products = false;
//            waypoint.enable();
//            Waypoint.refreshAll();
        }
    });
}