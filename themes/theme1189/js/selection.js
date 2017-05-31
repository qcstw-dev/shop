function popupFirstDesignAdd() {

    var firstButton = '<div>\n\
                            <a class="btn btn-success btn-lg margin-auto col-xs-7 close-popup initialcase">\n\
                                <span class="glyphicon glyphicon-plus-sign"></span> Add other design/picture to your selection</a>\n\
                        </div>';
    var secondButton = '<div class="margin-top-10">\n\
                            <a href="' + baseDir + 'layout-maker" class="btn btn-primary btn-lg margin-auto col-xs-7 initialcase">\n\
                                <span class="glyphicon glyphicon-wrench"></span> Place design/picture on product\n\
                            </a>\n\
                        </div>';
    $.magnificPopup.open({
        items: [{
                src: $('<div class="white-popup">' + firstButton + secondButton + '</div>'),
                type: 'inline'
            }]
    });
    $('.close-popup').on('click', function () {
        $.magnificPopup.close();
    });
}
function popupFirstProductAdd() {
    var firstButton = '\
        <div>\n\
            <a class="btn btn-success btn-lg margin-auto col-xs-7 close-popup initialcase">\n\
                <span class="glyphicon glyphicon-plus-sign"></span> Add other products to my selection</a>\n\
        </div>';
    var secondButton = '<div class="margin-top-10">\n\
                            <a href="' + baseDir + 'pictures" class="btn btn-primary btn-lg margin-auto col-xs-7 initialcase">\n\
                                <span class="glyphicon glyphicon-check padding-right-10"></span>\n\
                                Upload my picture/design\n\
                            </a>\n\
                        </div>';
    $.magnificPopup.open({
        items: [{
                src: $('<div class="white-popup">' + firstButton + secondButton + '</div>'),
                type: 'inline'
            }]
    });
    $('.close-popup').on('click', function () {
        $.magnificPopup.close();
    });
}
function addRemoveToSelection(element) {
//    var element = $('.product-' + id);
    var id = element.data('id');
    var type = element.data('type');
    $.ajax({
        type: 'POST',
        url: baseDir,
        data: 'controller=ajax&action=addtoselection&ajax=true&id_product=' + id + '&type='+type,
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
                    $('.product-' + id).find('.glyphicon').removeClass('glyphicon-minus-sign').addClass('glyphicon-plus-sign');
                    $('.product-' + id).removeClass('btn-danger').addClass('btn-success');
                    $('.product-' + id).each(function () {
                        $(this).find('.text').text($(this).data('text-add'));
                    });
                    $('.list-item-' + id).remove();
                    if (!$('.products-list, .designs-list').find('.list-item').length) {
                        $('.products-list, .designs-list').find('.alert-no-product').show();
                    }
                } else {
                    $('.block-selection').show();
                    $('.products-list, .designs-list').find('.alert-no-product').hide();
                    if ($('.products-list').length && !$('.list-item-product').length) {
                        popupFirstProductAdd();
                    } else if ($('.designs-list').length && !$('.list-item-design').length) {
                        popupFirstDesignAdd();
                    }
                    element.find('.glyphicon').removeClass('glyphicon-plus-sign').addClass('glyphicon-minus-sign');
                    $('.product-' + id).removeClass('btn-success').addClass('btn-danger');
                    $('.product-' + id).each(function () {
                        $(this).find('.text').text($(this).data('text-remove'));
                    });
                    if (element.data('type') === 'product') {
                        $('.products-list').prepend('\
                            <div class="list-item list-item-product list-item-' + element.data('id') + ' col-xs-1 thumbnail margin-bottom-0 border-none">\n\
                                <a class="quick-view-bis" title="' + element.data('product-title') + '" href="' + baseUri + 'product-popup?id_product=' + element.data('id') + '" title="' + element.data('product-title') + '">\n\
                                    <img class="border" scr="" title="' + element.data('product-title') + '" title="' + element.data('product-title') + '"/>\n\
                                </a>\n\
                                <span class="selection cursor-pointer glyphicon glyphicon-remove" data-id="' + element.data('id') + '"></span>\n\
                            </div>');
                        $('.list-item-' + element.data('id')).find('img').attr('src', element.data('img'));
                    } else {
                        $('.designs-list').prepend('\
                            <div class="list-item list-item-design list-item-' + element.data('id') + ' col-xs-1 thumbnail margin-bottom-0 border-none">\n\
                                <a class="quick-view-bis" title="' + element.data('product-title') + '" href="' + baseUri + 'product-popup?id_product=' + element.data('id') + '" title="' + element.data('product-title') + '">\n\
                                    <img class="border" scr="" title="' + element.data('product-title') + '" title="' + element.data('product-title') + '"/>\n\
                                </a>\n\
                                <span class="selection cursor-pointer glyphicon glyphicon-remove" data-id="' + element.data('id') + '"></span>\n\
                            </div>');
                        $('.list-item-' + element.data('id')).find('img').attr('src', element.data('img-large'));
                    }
                }
            } else {
                $.fancybox('<p class="text-center">Error</p>');
            }
        }
    });
}
$(function () {
    $('.list-item-custom').click(function () {
        $('.hidden-fileupload').trigger('click');
    });
    $('.selection').live('click', function () {
        addRemoveToSelection($(this));
    });
    if (document.getElementsByClassName("dash").length) {
        var drop = document.getElementsByClassName("dash")[0];
        drop.addEventListener("dragover", dashing_component, false);
        drop.addEventListener("dragleave", undashing_component, false);
        drop.addEventListener("drop", undashing_component, false);
    }

    function dashing_component() {
        drop.style.border = '3px dashed #ddd';
    }
    function undashing_component() {
        drop.style.border = '3px solid #ddd';
    }
});
