$(function () {
    var globalTimeout = null;
    $('.creation-name').live('keyup', function () {
        var element = $(this);
        if (globalTimeout !== null) {
            clearTimeout(globalTimeout);
        }
        globalTimeout = setTimeout(function () {
            globalTimeout = null;
            if (element.val()) {
                $.ajax({
                    type: 'POST',
                    url: baseDir + 'index.php?controller=ajaxcustomshop&action=savecreationname&ajax=true&product_name='+element.val()+'&id_creation=' + element.data('id-creation'),
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
            }
        }, 1000);
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
    });
});