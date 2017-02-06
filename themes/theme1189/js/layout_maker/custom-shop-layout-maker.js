/***************** LAYOUT MAKER ****************/
$(function () {
    isMobile = false;
    $('.add-creation').live('click', function () {
        if ($(this).data('id-product')
                && $(this).data('id-picture')
                && $(this).data('custom-picture')) {
            // add to creation
            
        } else {
            popupError('Please select a product and a picture');
        }
    });

    $('.item-list-picture').live('click', function () {
        $('.item-list-picture').removeClass('dashed');
        $(this).addClass('dashed');
        $('.add-creation').data('id-picture', $(this).data('id-picture'));

        $('.resize-image').removeClass('custom-margin-left');
        $('.resize-image').attr('src', $(this).find('img').attr('src'));
        var newWidth = $('.overlay').width();
        var img = $('.resize-image')[0]; // Get my img elem
        var pic_real_width, pic_real_height;

        $("<img/>") // Make in memory copy of image to avoid css issues
                .attr("src", $(img).attr("src"))
                .load(function () {
                    pic_real_width = this.width;   // Note: $(this).width() will not
                    pic_real_height = this.height;   // Note: $(this).width() will not
                    var ratio = newWidth / parseInt(pic_real_width);
                    var newHeight = parseInt(pic_real_height) * ratio;
                    resizeImage(newWidth, newHeight);
                });
        resizeableImage($('.resize-image'), true);
    });
    $('.btn-select-product').live('click', function () {
        $('.add-creation').data('id-product', $(this).data('id-product'));
        $.ajax({
            type: 'POST',
            url: baseDir + 'index.php',
            data: 'controller=ajax&action=layoutmakerselect&ajax=true' + '&id_product=' + $(this).data('id-product'),
            dataType: 'json',
            beforeSend: function () {
                $.fancybox.showLoading();
            },
            success: function (json) {
                $.fancybox.hideLoading();
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
                                    <div class="col-xs-4 col-sm-2 col-lg-6 block-color-product">\n\
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
                        $('.resize-image').removeClass('custom-margin-left');
                        $('.hidden-original-picture').attr('src', '');
                        $('.resize-image').attr('src', json.url);
                        resizeableImage($('.resize-image'), true);
                    }
                } else {
                    popupError(json.error);
                }
            }
        });

    });
    $('.change-color-product').live('click', function () {
        $('.overlay-img').attr('src', $(this).attr('src'));
        $('.overlay-img').show();
    });
    $('.btn-product-selection').magnificPopup({
        type: 'ajax',
        ajax: {
            settings: {
                dataType: 'html',
                url: baseDir + 'index.php?controller=ajaxcustomshop&action=loadproducts&ajax=true'
            }
        }
    });
    $(document).on('click', '.quick-view', function (e) {
        e.preventDefault();
        var url = $(this).data('url');
        var anchor = '';

        if (url.indexOf('#') != -1) {
            anchor = url.substring(url.indexOf('#'), url.length);
            url = url.substring(0, url.indexOf('#'));
        }
        if (url.indexOf('?') != -1)
            url += '&';
        else
            url += '?';

        if (!!$.prototype.fancybox) {
            $.fancybox({
                'padding': 0,
                'width': 900,
                'height': 'auto',
                'type': 'ajax',
                'autoSize': false,
                'href': url + 'content_only=1' + anchor + '&admin=true',
                ajax: {
                    complete: function () {
                        $('.jqzoom').jqzoom({
                            zoomType: 'innerzoom', //innerzoom/standard/reverse/drag
                            zoomWidth: 458, //zooming div default width(default width value is 200)
                            zoomHeight: 458, //zooming div default width(default height value is 200)
                            xOffset: 21, //zooming div default offset(default offset value is 10)
                            yOffset: 0,
                            title: false
                        });
                    }

                }
            });
        }
    });
});
