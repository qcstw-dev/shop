$('.checkbox-deactivate').on('change', function () {
    var deactivated = $(this).is(":checked") ? 1 : 0;
    $.ajax({
        type: 'POST',
        url: baseDir + 'index.php?controller=ajaxcustomshop&action=activatedeactivateshop&ajax=true&deactivated=' + deactivated + '&shop=' + id_shop,
        cache: false,
        dataType: 'json',
        async: true,
        beforeSend: function () {
            loading('Please wait...');
        },
        success: function (json) {
            if (json.success) {
                loading_hide();
                confirm('Done !');
            } else {
                popupError(json.error);
            }
        }
    });
});
$('.btn-pay').on('click', function () {
    var id = $(this).data('id-shop');
    $.ajax({
        type: 'POST',
        url: baseDir + 'index.php?controller=ajaxcustomshop&action=payshop&ajax=true&shop=' + id,
        cache: false,
        dataType: 'json',
        async: true,
        beforeSend: function () {
            loading('Please wait...');
        },
        success: function (json) {
            if (json.success) {
                loading_hide();
                confirm('Bill generated');
                window.location.replace(baseUri+'custom-shop-admin');
            } else {
                popupError(json.error);
            }
        }
    });
});
$('.select-status').on('change', function () {
    var id_order = $(this).data('id-order');
    var status = $(this).find(":selected").val();
    $.ajax({
        type: 'POST',
        url: baseDir + 'index.php?controller=ajaxcustomshop&action=savestatus&ajax=true&status=' + status + '&id_order=' + id_order,
        cache: false,
        dataType: 'json',
        async: true,
        beforeSend: function () {
            loading('Saving...');
        },
        success: function (json) {
            if (json.success) {
                loading_hide();
                confirm();
                $('.select-status-' + id_order).val(status);
            } else {
                popupError(json.error);
            }
        }
    });
});
$('.btn-save-tracking').on('click', function () {
    var tracking = $('.tracking-field-' + $(this).data('id-item')).val();
    var id_order = $('.tracking-field-' + $(this).data('id-item')).data('id-order');
    if (tracking) {
        $.ajax({
            type: 'POST',
            url: baseDir + 'index.php?controller=ajaxcustomshop&action=savetracking&ajax=true&tracking=' + tracking + '&id_order=' + id_order,
            cache: false,
            dataType: 'json',
            async: true,
            beforeSend: function () {
                loading();
            },
            success: function (json) {
                if (json.success) {
                    loading_hide();
                    confirm();
                    $('.tracking-order-' + id_order).val(tracking);
                } else {
                    popupError(json.error);
                }
            }
        });
    }
});