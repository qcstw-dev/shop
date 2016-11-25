$(document).ready(function () {
    $(window).endlessScroll({
//        inflowPixels: 300,
        fireOnce: false,
        fireDelay: false,
        callback: function () {
            var nbrProducts = $('.block-product').length;
            var nbProductsToDisplay = 4;
            $.ajax({
                type: 'POST',
                url: baseDir,
                data: 'controller=ajax&action=productlist&ajax=true&last_range=' + nbrProducts + '&nb_products='+ nbProductsToDisplay,
                dataType: 'html',
                beforeSend: function () {
                    // loading
                },
                success: function (html) {
                    $('.product-list').append(html);
//                    $('.slick-pictures-product-list').slick('unslick');
                    for (var i = nbrProducts+1; i <= $('.block-product').length; i++) {
                        console.log('.slick-pictures-product-list-'+i);
                        $('.slick-pictures-product-list-'+i).slick({
                            infinite: true,
                            slidesToShow: 1,
                            slidesToScroll: 1,
                            responsive: []
                        });
                    }
                }
            });
        }
    });
});