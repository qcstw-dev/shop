$(function () {
    var globalTimeout = null;
    $('.creation-name').live('keyup', function () {
        var element = $(this);
        if (globalTimeout !== null) {
            clearTimeout(globalTimeout);
        }
        globalTimeout = setTimeout(function () {
            globalTimeout = null;
            var valid = true;
            $('.creation-name').each(function () {
                if ($(this).val() === element.val() && $(this).data('id-creation') !== element.data('id-creation')) {
                    valid = false;
                }
            });
            if (valid) {
                $.ajax({
                    type: 'POST',
                    url: baseDir + 'index.php?controller=ajaxcustomshop&action=savecreationname&ajax=true&product_name=' + element.val() + '&id_creation=' + element.data('id-creation'),
                    cache: false,
                    dataType: 'json',
                    async: true,
                    beforeSend: function () {
                        saving();
                    },
                    success: function (json) {
                        if (json.success) {
                            element.blur();
                            saving_hide();
                            confirm();
                        }
                    }
                });
            } else {
                $('input[data-id-creation="' + element.data('id-creation') + '"]').prop('checked', false);
                popupError('You have to set a different name for each product');
            }
        }, 500);
    });
    $('.trash').on('click', function () {
        var id_creation = $(this).data('id-creation');
        $.ajax({
            url: baseDir + 'index.php',
            data: 'controller=ajaxcustomshop&action=deletecreation&ajax=true&id_creation=' + id_creation,
            dataType: 'json',
            success: function (json) {
                saving_hide();
                if (json.success) {
                    if (json.success) {
                        $('.block-creation-' + id_creation).fadeOut(300, function () {
                            $(this).remove();
                        });
                    }
                } else {
                    popupError(json.error);
                }
            }
        });
    });
    $('.published').on('change', function () {
        var id_creation = $(this).data('id-creation');
        var current_title = $('input[data-id-creation="' + id_creation + '"]').val();
        if (current_title) {
            $.ajax({
                url: baseDir + 'index.php',
                data: 'controller=ajaxcustomshop&action=publish&ajax=true&published=' + $(this).is(':checked') + '&id_creation=' + $(this).data('id-creation'),
                dataType: 'json',
                beforeSend: function () {
                    saving();
                },
                success: function (json) {
                    saving_hide();
                    if (json.success) {
                        confirm();
                    } else {
                        saving_hide();
                        popupError(json.error);
                    }
                }
            });
        } else {
            if ($(this).is(':checked')) {
                $(this).prop('checked', false);
            }
            popupError('You have to set a name for this product before you publish it');
        }
    });
});