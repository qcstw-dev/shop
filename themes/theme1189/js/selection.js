function addRemoveToSelection(id) {
    var element = $('.product-' + id);
    $.ajax({
        type: 'POST',
        url: baseDir,
        data: 'controller=ajax&action=addtoselection&ajax=true&id_product=' + id,
        dataType: 'json',
        beforeSend: function () {
            $(function () {
                $.fancybox.showLoading();
            });
        },
        success: function (json) {
            $.fancybox.hideLoading();
            if (json.success === true) {
                if (json.type === 'remove') {
                    element.find('.glyphicon').removeClass('glyphicon-minus-sign').addClass('glyphicon-plus-sign');
                    element.each(function () {
                        $(this).find('.text').text($(this).data('text-add'));
                    });
                    $('.list-item-' + id).remove();
                    if (!$('.products-list').find('.list-item').length) {
                        $('.products-list').find('.alert-no-product').show();
                    }
                } else {
                    $('.btn-block-selection').removeClass('disabled');
                    $('.block-selection').show();
                    if (element.data('type') === 'products') {
                        $('.products-list').find('.alert-no-product').hide();
                        if (!$('.list-item-product').length) {
                            popupFirstProductAdd();
                        }
                    } else {
                        if (!$('.list-item-design').length) {
                            popupFirstDesignAdd();
                        }
                    }
                    element.find('.glyphicon').removeClass('glyphicon-plus-sign').addClass('glyphicon-minus-sign');
                    element.each(function () {
                        $(this).find('.text').text($(this).data('text-remove'));
                    });
                    if (element.data('type') === 'products') {
                        $('.' + element.data('type') + '-list').prepend('\
                            <div class="list-item list-item-product list-item-' + element.data('id') + ' col-xs-6 col-sm-4 col-md-3 thumbnail margin-bottom-10 margin-top-10 border-none">\n\
                                <a class="quick-view-bis" title="' + element.data('product-title') + '" href="'+ baseUri +'product-popup?id_product='+ element.data('id') + '" title="' + element.data('product-title') + '">\n\
                                    <img class="border" scr="" title="' + element.data('product-title') + '" title="' + element.data('product-title') + '"/>\n\
                                </a>\n\
                                <span class="selection cursor-pointer glyphicon glyphicon-remove" data-id="' + element.data('id') + '"></span>\n\
                            </div>');
                        $('.list-item-' + element.data('id')).find('img').attr('src', element.data('img'));
                    } else {
                        $('.designs-list .list-item-custom').after('\
                            <div class="list-item list-item-design list-item-' + element.data('id') + ' col-xs-6 col-sm-4 col-md-3 thumbnail margin-bottom-10 margin-top-10 border-none">\n\
                                <img class="popup border" scr="" title="' + element.data('product-title') + '" title="' + element.data('product-title') + '"/>\n\
                                <span class="selection cursor-pointer glyphicon glyphicon-remove" data-id="' + element.data('id') + '"></span>\n\
                            </div>');
                        $('.list-item-' + element.data('id')).find('img').attr('src', element.data('img-large'));
                    }
                    if ($('.list-item-design').length && $('.list-item-product').length) {
                        $('.btn-block-selection').addClass('blink');
                    }
                }
                if (!$('.list-item-product').length && !$('.list-item-design').length) {
                    $('.btn-block-selection').addClass('disabled');
                } else if (!$('.list-item-product').length || !$('.list-item-design').length) {
                    $('.btn-block-selection').removeClass('blink');
                }
            } else {
                $.fancybox('<p class="text-center">Error</p>');
            }
        }
    });
}
$(function () {
    $('.list-item-custom').click(function() {
        $('.hidden-fileupload').trigger('click');
    });
    $('.selection').live('click', function () {
        addRemoveToSelection($(this).data('id'));
    });
});
