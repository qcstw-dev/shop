$(function () {
    $('.rotate-creation').on('click', function () {
        var id_creation = $(this).data('id-creation');
        $.ajax({
            url: baseDir + 'index.php',
            data: 'controller=ajaxcustomshop&action=RotateCreationPicture&ajax=true&id_creation=' + id_creation + '&direction=' + $(this).data('direction'),
            dataType: 'json',
            beforeSend: function () {
                loading('Rotate...');
            },
            success: function (json) {
                loading_hide();
                if (json.success) {
                    $('.creation-picture-'+id_creation).attr('src', json.picture);
                } else {
                    popupError(json.error);
                }
            }
        });
    });
    if (!is_mobile && !is_tablet) {
        $('.sortable').sortable({
            items: '.block-creation',
            helper: 'clone',
            forceHelperSize: true,
            forcePlaceholderSize: true,
            update: function (event, ui) {
                //create the array that hold the positions...
                var order = {};
                //loop trought each li...
                $('.block-creation').each(function (e) {
                    //add each li position to the array...     
                    // the +1 is for make it start from 1 instead of 0
                    order[$(this).attr('id')] = ($(this).index() + 1);
                    $(this).data('order', $(this).index() + 1);
                });
                //use the variable as you need!
                $.ajax({
                    type: 'POST',
                    url: baseDir + 'index.php?controller=ajaxcustomshop&action=saveproductsorder&ajax=true&shop=' + id_shop,
                    cache: false,
                    dataType: 'json',
                    async: true,
                    data: {'order': order},
                    beforeSend: function () {
                        loading('Saving ...');
                    },
                    success: function (json) {
                        if (json.success) {
                            loading_hide();
                            confirm('Saved!');
                        }
                        return json.success;
                    }
                });
            }
        }).disableSelection();
    }
    $('textarea').live('focus', function () {
        $(this).select();
        document.execCommand("copy");
        confirm('Copied to clipboard!');
    });
    $('.btn-embed').click(function () {
        var title = $('.creation-name[data-id-creation="' + $(this).data('id') + '"').val();
        $('.embed-title-' + $(this).data('id')).text(title);
        $('.embed-content-' + $(this).data('id')).find('img').prop('title', title).prop('alt', title);
        $('.embed-content-' + $(this).data('id')).find('a').prop('title', title);
        $('.embed-textarea-' + $(this).data('id')).text($('.embed-content-' + $(this).data('id')).html());
        $.magnificPopup.open({
            items: [{
                    src: $('<div class="white-popup">' +
                            $('.popup-embed-' + $(this).data('id')).html() +
                            '</div>'),
                    type: 'inline'
                }]
        });
    });
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
                        confirm('Saved!');
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
                    $('.block-creation-' + id_creation).fadeOut(300, function () {
                        $(this).remove();
                    });
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
                    confirm('All products published!');
                    $.each(list_ids, function (index, value) {
                        $('#published-' + value).prop('checked', true);
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
                        confirm('Published!');
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