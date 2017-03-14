//$(function () {
//    var win = $(window);
//    var issetMoreProducts = true;
//    win.scroll(function () {
//        if (issetMoreProducts) {
//            // End of the document reached?
//            if ($(window).scrollTop() === ($(document).height() - $(window).height())) {
//                var nbrProducts = $('.block-product').length;
//                var nbProductsToDisplay = 6;
//                $.ajax({
//                    type: 'GET',
//                    url: baseDir,
//                    data: 'controller=ajax&action=productlist&ajax=true&last_range=' + nbrProducts + '&nb_products=' + nbProductsToDisplay,
//                    dataType: 'html',
//                    beforeSend: function () {
//                        $('.loading-ajax').removeClass('hidden');
//                    },
//                    success: function (html) {
//                        $('.loading-ajax').addClass('hidden');
//                        if (html) {
//                            $('.product-list').append(html);
//                            for (var i = nbrProducts + 1; i <= $('.block-product').length; i++) {
//                                $('.slick-pictures-product-list-' + i).slick({
//                                    infinite: true,
//                                    slidesToShow: 1,
//                                    slidesToScroll: 1,
//                                    responsive: []
//                                });
//                            }
//                        } else {
//                            issetMoreProducts = false;
//                        }
//                    }
//                });
//            }
//        }
//    });
//});
var scrollListener = function () {
    var win = $(window);
    var issetMoreProducts = true;
    $(window).one("scroll", function () { //unbinds itself every time it fires
        if ($(window).scrollTop() >= $(document).height() - $(window).height() - 100) {
            //Add something at the end of the page
            var nbrProducts = $('.block-product').length;
            var nbProductsToDisplay = 6;
            $.ajax({
                type: 'GET',
                url: baseDir,
                data: 'controller=ajax&action=productlist&ajax=true&last_range=' + nbrProducts + '&nb_products=' + nbProductsToDisplay,
                dataType: 'html',
                beforeSend: function () {
                    $('.loading-ajax').removeClass('hidden');
                },
                success: function (html) {
                    $('.loading-ajax').addClass('hidden');
                    if (html) {
                        $('.product-list').append(html);
                        for (var i = nbrProducts + 1; i <= $('.block-product').length; i++) {
                            $('.slick-pictures-product-list-' + i).slick({
                                infinite: true,
                                slidesToShow: 1,
                                slidesToScroll: 1,
                                responsive: []
                            });
                        }
                    } else {
                        issetMoreProducts = false;
                    }
                }
            });
        }
        setTimeout(scrollListener, 200); //rebinds itself after 200ms
    });
};
$(document).ready(function () {
    scrollListener();
});