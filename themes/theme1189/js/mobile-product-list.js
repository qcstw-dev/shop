$(function () {
    issetMoreProducts = true;
    var waypoint = new Waypoint({
        element: document.getElementById('waypoint'),
        handler: function (direction) {
            if (direction === 'down' && issetMoreProducts) {
                waypoint.disable();
                // End of the document reached?
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
                        } else {
                            issetMoreProducts = false;
                        }
                        waypoint.enable();
                    }
                });
            }
        },
        offset: 'bottom-in-view'
    });
});