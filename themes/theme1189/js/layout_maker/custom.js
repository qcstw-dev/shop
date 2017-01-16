/***************** LAYOUT MAKER ****************/
$(function () {
    $('.change-color-product').live('click', function () {
        $('.overlay-img').attr('src', $(this).attr('src'));
        $('.overlay-img').show();
    });

//    var drop = document.getElementById("component");
//    drop.addEventListener("dragover", dashing_component, false);
//    drop.addEventListener("dragleave", undashing_component, false);
//    drop.addEventListener("drop", undashing_component, false);
//
//    function dashing_component() {
//        drop.style.border = '3px dashed #ddd';
//    }
//    function undashing_component() {
//        drop.style.border = '3px solid #ddd';
//    }

    $('.list-item').live('click', function () {
        $('.list-item-'+$(this).data('type')).removeClass('selected');
        $(this).addClass('selected');
        if ($('.list-item-design.selected').length && $('.list-item-product.selected').length) {
            $('.add-to-cart').data('id-product', $('.list-item-product.selected').data('id'));
            $('.add-to-cart').data('id-design', $('.list-item-design.selected').data('id'));
            $('.add-to-cart').show();
            $('.preview-layout').show();
            $('.slider-vertical').show();
        }
        if (!$(this).hasClass('list-item-custom-image')) {
            $.ajax({
                type: 'POST',
                url: baseDir + 'index.php',
                data: 'controller=ajax&action=layoutmakerselect&ajax=true' + ($(this).data('type') === 'product' ? '&id_product=' + $('.list-item-product.selected').data('id') : '') + ($(this).data('type') === 'design' ? '&id_design=' + $('.list-item-design.selected').data('id') : ''),
                dataType: 'json',
                beforeSend: function () {
                    $.fancybox.showLoading();
                },
                success: function (json) {
                    $.fancybox.hideLoading();
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
                        if (json.custom) {
                            $('.fileinput-button').show();
                        }
                        if (json.url) {
                            $('.resize-image').removeClass('custom-margin-left');
                            $('.hidden-original-picture').attr('src', '');
                            $('.resize-image').attr('src', json.url);
                            resizeableImage($('.resize-image'), true);
                        }
                    } else {
                        $.fancybox('\
                            <div class="text-center">\n\
                                <div class="glyphicon glyphicon-warning-sign font-size-44 margin-bottom-10"></div>\n\
                                <div>' + json.error + '</div>\n\
                            </div>\n\
                        ');
                    }
                }
            });
        } else {
            if ($(this).hasClass('list-item-custom-image')) {
                $('.hidden-original-picture').attr('src', baseDir+'img/layout_maker/temp/'+$(this).data('original-picture')+'.png');
            } else {
                $('.hidden-original-picture').attr('src', '');
            }
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
        }
    });
});
