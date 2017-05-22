/***************** LAYOUT MAKER ****************/
$(function () {
    isMobile = false;
    $('.add-creation').live('click', function () {
        if ($(this).data('id-product')
                && $(this).data('id-picture')) {
            crop();
            if ($(this).data('custom-picture')) {
                // add to creation
                saveCreation($(this).data('id-product'), $(this).data('id-picture'), $(this).data('custom-picture'));
            } else {
                popupError('Something went wrong, please try again or contact us');
            }
        } else {
            popupError('Please select a product and a picture');
        }
    });
    $('.preview').live('click', function () {
        if ($('.add-creation').data('id-product') && $('.add-creation').data('id-picture')) {
            crop(true);
        } else {
            popupError('Please select a product and a picture');
        }
    });
    $('.item-list-picture').live('click', function () {
        $('.item-list-picture').removeClass('selected');
        $(this).addClass('selected');
        $('.add-creation').data('id-picture', $(this).data('id-picture'));
        
        $('.resize-image').attr('src', $(this).find('img').attr('src'));
        var newWidth = $('.overlay').width();
        var img = $('.resize-image')[0]; // Get my img elem
        var pic_real_width, pic_real_height;

        $("<img/>") // Make in memory copy of image to avoid css issues
                .attr("src", $(img).attr("src"))
                .load(function () {
                    pic_real_width = this.width;
                    pic_real_height = this.height;
                    var ratio = newWidth / parseInt(pic_real_width);
                    var newHeight = parseInt(pic_real_height) * ratio;
                    resizeImage(newWidth-40, newHeight-40);
                });
        resizeableImage($('.resize-image'), true);
    });
    $('.btn-select-product').live('click', function () {
        displayProduct($(this).data('id-product'));
    });
    $('.change-color-product').live('click', function () {
        $('.overlay-img').attr('src', $(this).attr('src'));
        $('.overlay-img').show();
    });
    $('.btn-product-selection').magnificPopup({
        type: 'ajax',
        mainClass: 'popup-prod-list',
        ajax: {
            settings: {
                dataType: 'html',
                url: baseDir + 'index.php?controller=ajaxcustomshop&action=loadproducts&ajax=true&first_time=1'
            }
        }
    });
});
function saveCreation(id_product, id_design, custom_picture) {
    $.ajax({
        type: 'POST',
        url: baseDir + 'index.php',
        data: 'controller=ajaxcustomshop&action=savecreation&ajax=true&shop=' + id_shop
                + '&id_product=' + id_product
                + '&id_design=' + id_design
                + '&custom_picture=' + custom_picture,
        dataType: 'json',
        beforeSend: function () {
            loading('Loading...');
        },
        success: function (json) {
            if (json.success) {
                loading_hide();
                $.magnificPopup.open({
                    items: [{
                            src: $('<div class="white-popup">\n\
                            <div class="font-size-15 bold">Your Product is saved</div>\n\
                            <div class="thumbnail border-none"><img src="' + baseDir + json.image + '" /></div>\n\
                            <div class="btn btn-success continue col-xs-12 col-sm-4 margin-top-10 pull-left"><span class="glyphicon glyphicon-chevron-left"></span> Create another product</div>\n\
                            <a href="' + baseDir + name_shop + '/admin/creation/summary" class="btn btn-info col-xs-12 col-sm-4 margin-top-10 pull-right">Creation summary <span class="glyphicon glyphicon-chevron-right"></span></a>\n\
                            <div class="clearfix"></div>\n\
                            </div>'),
                            type: 'inline'
                        }]
                });
                $('.continue').on('click', function () {
                    $.magnificPopup.close();
                });
                $('.menu-item-summary').removeClass('disabled');
            } else {
                popupError(json.error);
            }
        }
    });

}
function displayProduct(id_product) {
    $('.add-creation').data('id-product', id_product);
    $.ajax({
        type: 'POST',
        url: baseDir + 'index.php',
        data: 'controller=ajax&action=layoutmakerselect&ajax=true' + '&id_product=' + id_product,
        dataType: 'json',
        beforeSend: function () {
            loading('Loading...');
        },
        success: function (json) {
            loading_hide();
            $.magnificPopup.close();
            if (json.success === true) {
                if (json.colors) {
                    $('.block-color-product').remove();
                    $('.change-color-product-block').hide();
                    $('.preview-color').hide();
                    $('.block-item-size').hide();
                    $('.block-design-size').hide();

                    for (var key in json.colors) {
                        $('.change-color-product-block .block-colors').append('\
                                <div class="col-xs-4 col-sm-3 col-md-6 block-color-product">\n\
                                    <div class="thumbnail thumbnail-hover">\n\
                                        <img class="change-color-product" \n\
                                         data-id-color="' + json.colors[key]['name'] + '"\n\
                                         src="' + json.colors[key]['color'] + '"\n\
                                         alt="preview product" />\n\
                                    </div>\n\
                                </div>\n\
                            ');
                    }
                    ;
                    $('.preview-color').show();
                    $('.change-color-product-block').show();
                    $('.overlay-img').attr('src', $('.change-color-product').attr('src'));
                    $('.overlay-img').show();
                }

                if (json.item_size) {
                    $('.info-item-size').text(json.item_size);
                    $('.block-item-size').show();
                    $('.change-color-product-block').show();
                }
                if (json.design_size) {
                    $('.info-design-size').text(json.design_size);
                    $('.block-design-size').show();
                    $('.change-color-product-block').show();
                }
                if (json.url) {
                    $('.hidden-original-picture').attr('src', '');
                    $('.resize-image').attr('src', json.url);
                    resizeableImage($('.resize-image'), true);
                }
            } else {
                popupError(json.error);
            }
        }
    });
}
