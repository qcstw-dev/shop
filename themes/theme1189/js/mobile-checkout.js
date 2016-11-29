$('.cart_quantity_up').off('click').on('click', function (e) {
    e.preventDefault();
    updateQty($(this).data('id'), 'up');
});
$('.delete').off('click').on('click', function () {
    deleteProduct($(this).data('id'));
});
$('.cart_quantity_down').off('click').on('click', function (e) {
    e.preventDefault();
    var id = $(this).data('id');
    if ($('.cart_quantity_input_' + id).val() == 1) {
        deleteProduct(id);
    } else {
        updateQty($(this).data('id'), 'down');
    }
});
$('.cart_quantity_input').typeWatch({
    highlight: true, wait: 600, captureLength: 0, callback: function (val) {
        var id = $(this.el).data('id');
        console.log(id);
        var input = val;
        if (input == 0) {
            deleteProduct(id);
        } else {
            var hidden = $('.cart_quantity_input_' + id + '_hidden').val();
            var qty = parseInt(input) - parseInt(hidden);
            if (parseInt(qty) > 0) {
                updateQty(id, 'up', qty);
            } else if (parseInt(qty) < 0) {
                updateQty(id, 'down', qty);
            }
        }
    }
});
function deleteProduct(id) {
    var ids = id.split('_');
    productId = parseInt(ids[0]);
    if (typeof (ids[1]) !== 'undefined')
        custom_picture = parseInt(ids[1]);
    if (typeof (ids[2]) !== 'undefined')
        custom_picture = custom_picture + '_' + parseInt(ids[2]);

    $.ajax({
        type: 'POST',
        headers: {"cache-control": "no-cache"},
        url: baseUri + '?rand=' + new Date().getTime(),
        async: true,
        cache: false,
        dataType: 'json',
        data: 'controller=cart'
                + '&ajax=true&delete=true&summary=true'
                + '&id_product=' + productId
                + '&token=' + static_token
                + '&allow_refresh=1'
                + '&custom_picture=' + custom_picture,
        success: function (jsonData)
        {
            $('.block_product_' + productId + '_' + custom_picture).fadeOut('slow', function () {
                $(this).remove();
            });
            $('.ajax_cart_quantity').text(jsonData.nbTotalProducts);
            $('.cart_total').text(jsonData.total);
        }
    });
}
function updateQty(id, op, qty) {

    if (typeof (qty) == 'undefined' || !qty) {
        qty = 1;
    } else if (qty < 0) {
        qty = -qty;
    }
    ids = id.split('_');
    productId = parseInt(ids[0]);
    if (typeof (ids[1]) !== 'undefined')
        custom_picture = parseInt(ids[1]);
    if (typeof (ids[2]) !== 'undefined')
        custom_picture = custom_picture + '_' + parseInt(ids[2]);

    $.ajax({
        type: 'POST',
        headers: {"cache-control": "no-cache"},
        url: baseUri + '?rand=' + new Date().getTime(),
        async: true,
        cache: false,
        dataType: 'json',
        data: 'controller=cart'
                + '&ajax=true'
                + '&add=true'
                + '&getproductprice=true'
                + '&summary=true'
                + '&id_product=' + productId
                + '&qty=' + qty
                + '&op=' + op
                + '&token=' + static_token
                + '&allow_refresh=1'
                + '&custom_picture=' + custom_picture,
        success: function (jsonData) {
            $.each(jsonData.products, function (key, product) {
                $('.cart_quantity_input_' + product['id'] + '_' + product['custom_picture']).val(product['quantity']);
                $('.cart_quantity_input_' + product['id'] + '_' + product['custom_picture'] + '_hidden').val(product['quantity']);
//                var price = $('.unit_product_' + product['id'] + '_' + product['custom_picture']).text().replace(/\d+[.|,]\d+/g, jsonData.summary.products[key]['price']);
                var price_with_reduction = jsonData.summary.products[key]['price'].toFixed(2);
                var price_without_reduction = jsonData.summary.products[key]['price_without_reduction'].toFixed(2);
                var unit_price_element = $('.unit_product_' + product['id'] + '_' + product['custom_picture']);
                var price = price_with_reduction;
                if (price_with_reduction != price_without_reduction) {
                    price = '<del>' + price_without_reduction + '</del> <span class="color-red">' + price_with_reduction + '</span>';
                }
                unit_price_element.html(price);
                $('.total_product_' + product['id'] + '_' + product['custom_picture']).text(product['price']);
            });
            $('.ajax_cart_quantity').text(jsonData.nbTotalProducts);
            $('.cart_total').text(jsonData.total);
        }
    });
}