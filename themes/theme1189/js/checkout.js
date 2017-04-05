$('.cart_quantity_up').off('click').on('click', function (e) {
    e.preventDefault();
    updateQty($(this).data('id'), 'up');
});
$('.delete').off('click').on('click', function () {
    deleteProduct($(this).data('id'), $(this).data('original-picture'));
});
$('.cart_quantity_down').off('click').on('click', function (e) {
    e.preventDefault();
    var id = $(this).data('id');
    if ($('.cart_quantity_input_' + id).val() == 1) {
        deleteProduct(id, $(this).data('original-picture'));
    } else {
        updateQty($(this).data('id'), 'down');
    }
});
$('.cart_quantity_input').typeWatch({
    highlight: true, wait: 600, captureLength: 0, callback: function (val) {
        var id = $(this.el).data('id');
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
function deleteProduct(id, original_picture) {
    var ids = id.split('_');
    var custom_picture = 0;
    var id_customized_prod = 0;
    var original_picture = (original_picture ? original_picture : 0);
    var productId = parseInt(ids[0]);
    var productId = parseInt(ids[0]);
    if (typeof (ids[1]) !== 'undefined' && parseInt(ids[1]) && typeof (ids[2]) !== 'undefined' && parseInt(ids[2])){
        custom_picture = parseInt(ids[1]) + '_' + parseInt(ids[2]);
    } else {
        id_customized_prod = parseInt(ids[2]);
    }

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
                + '&custom_picture=' + custom_picture
                + '&original_picture=' + original_picture
                + '&id_creation=' + id_customized_prod,
        success: function (jsonData) {
            $('.block_product_' + id).fadeOut('slow', function () {
                $(this).remove();
            });
            $('.ajax_cart_quantity').text(jsonData.nbTotalProducts);
            $('.cart_total').text(jsonData.total);
            $('.total_voucher').text(jsonData.summary.total_discounts);
        }
    });
}
function updateQty(id, op, qty) {
    if (typeof (qty) == 'undefined' || !qty) {
        qty = 1;
    } else if (qty < 0) {
        qty = -qty;
    }
    var ids = id.split('_');
    var custom_picture = 0;
    var id_customized_prod = 0;
    var productId = parseInt(ids[0]);
    if (typeof (ids[1]) !== 'undefined' && parseInt(ids[1]) && typeof (ids[2]) !== 'undefined' && parseInt(ids[2])){
        custom_picture = parseInt(ids[1]) + '_' + parseInt(ids[2]);
    } else {
        id_customized_prod = parseInt(ids[2]);
    }
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
                + '&custom_picture=' + custom_picture
                + '&id_creation=' + id_customized_prod,
        success: function (jsonData) {
            $.each(jsonData.products, function (key, product) {
                var id_element = product['id'] + '_' + (custom_picture ? custom_picture : '') + '_' + (product['id_customized_prod'] ? product['id_customized_prod'] : '');
                $('.cart_quantity_input_' + id_element ).val(product['quantity']);
                $('.cart_quantity_input_' + id_element + '_hidden').val(product['quantity']);
                var price = formatCurrency(jsonData.summary.products[key]['price_wt'].toFixed(2), currencyFormat, currencySign, currencyBlank);
                var price_without_quantity_discount = formatCurrency(jsonData.summary.products[key]['price_without_quantity_discount'].toFixed(2), currencyFormat, currencySign, currencyBlank);
                var unit_price_element = $('.unit_product_' + id_element);
                if (price !== price_without_quantity_discount) {
                    unit_price_element.find('.price').addClass('color-red').text(price);
                    unit_price_element.find('.price_without_quantity_discount').text(price_without_quantity_discount);
                } else {
                    unit_price_element.find('.price').removeClass('color-red').text(price);
                    unit_price_element.find('.price_without_quantity_discount').text('');
                }
                $('.total_product_' + id_element).text(product['price']);
            });
            $('.ajax_cart_quantity').text(jsonData.nbTotalProducts);
            $('.cart_total').text(jsonData.total);
            $('.total_voucher').text(jsonData.summary.total_discounts);
        }
    });
}