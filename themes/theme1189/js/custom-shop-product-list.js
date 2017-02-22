var issetMoreProducts = true;
$(document).ready(function () {
    $('.popup-prod-list').scroll(function () {
        if (issetMoreProducts) {
            // End of the document reached?
            if ($(this).scrollTop() + $(this).innerHeight() >= $(this)[0].scrollHeight) {
                var nbrProducts = $('.block-product').length;
                var nbProductsToDisplay = 12;
                $.ajax({
                    type: 'GET',
                    url: baseDir,
                    data: 'controller=ajaxcustomshop&action=loadproducts&ajax=true&last_range=' + nbrProducts + '&nb_products=' + nbProductsToDisplay,
                    dataType: 'html',
                    beforeSend: function () {
                        loading('Loading...');
                    },
                    success: function (html) {
                        loading_hide();
                        $('.loading-ajax').addClass('hidden');
                        if (html) {
                            $('.white-popup').append(html);
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
        }
    });
});