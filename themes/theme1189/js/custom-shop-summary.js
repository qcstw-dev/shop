$(function () {
    var globalTimeout = null;
    $('.creation-name').live('keyup', function () {
        var element = $(this);
        if (globalTimeout !== null) {
            clearTimeout(globalTimeout);
        }
        globalTimeout = setTimeout(function () {
            saveField(element);
        }, 5000);
    });
    $('.creation-name').live('focusout', function () {
        if (globalTimeout !== null) {
            clearTimeout(globalTimeout);
        }
        var element = $(this);
        saveField(element);
    });
    function saveField(element) {
        globalTimeout = null;
        var valid = true;
        if (element.val()) {
            $('.creation-name').each(function () {
                if ($(this).val() === element.val() && $(this).data('id-creation') !== element.data('id-creation')) {
                    valid = false;
                    popupError('You have to set a different name for each product');
                }
            });
        } else if (!element.val() && $('input[data-id-creation="' + element.data('id-creation') + '"]').is(':checked')) {
            valid = false;
            popupError('You have to set a name for each product');
        }
        if (valid) {
            $.ajax({
                type: 'POST',
                url: baseDir + 'index.php?controller=ajaxcustomshop&action=savecreationname&ajax=true&product_name=' + element.val() + '&id_creation=' + element.data('id-creation'),
                cache: false,
                dataType: 'json',
                async: true,
                beforeSend: function () {
                    loading('Saving title...');
                },
                success: function (json) {
                    if (json.success) {
                        loading_hide();
                        confirm();
                    }
                    return json.success;
                }
            });
        } else {
            $('input[data-id-creation="' + element.data('id-creation') + '"]').prop('checked', false);
        }
    }
    $('.trash').on('click', function () {
        var id_creation = $(this).data('id-creation');
        $.ajax({
            url: baseDir + 'index.php',
            data: 'controller=ajaxcustomshop&action=deletecreation&ajax=true&id_creation=' + id_creation,
            dataType: 'json',
            beforeSend: function () {
                loading('Deleting...');
            },
            success: function (json) {
                loading_hide();
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
    
    $('.publish-all').on('click', function () {
        $.ajax({
                url: baseDir + 'index.php',
                data: 'controller=ajaxcustomshop&action=publishall&ajax=true&shop=' + id_shop,
                dataType: 'json',
                beforeSend: function () {
                    loading('Loading...');
                },
                success: function (list_ids) {
                    loading_hide();
                    console.log(list_ids);
                    if (list_ids) {
                        confirm();
                        $.each(list_ids, function (index, value) {
                            $('#published-'+value).prop('checked', true);
                        });
                    }
                }
            });
    });
    
    $('.published').on('change', function () {
        var id_creation = $(this).data('id-creation');
        var title_element = $('input[data-id-creation="' + id_creation + '"]');
        if (title_element.val()) {
            $.ajax({
                url: baseDir + 'index.php',
                data: 'controller=ajaxcustomshop&action=publish&ajax=true&published=' + $(this).is(':checked') + '&id_creation=' + $(this).data('id-creation') + '&product_name=' + title_element.val(),
                dataType: 'json',
                beforeSend: function () {
                    loading('Loading...');
                },
                success: function (json) {
                    loading_hide();
                    if (json.success) {
                        confirm();
                    } else {
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