/***************** LAYOUT MAKER ****************/
$(function() {
    $( "#slider-vertical" ).slider({
        orientation: "vertical",
        range: "min",
        min: -180,
        max: 180,
        value: 0,
        slide: function( event, ui) {
            try {
                rotate(event, ui.value, $("#image").width(), $("#image").height());
            }
            catch(err) {}
        }
    });

    $('.change-color-product').live('click', function () {
        $('.overlay-img').attr('src', $(this).attr('src'));
        $('.overlay-img').show();
    });
    
    var drop = document.getElementById("component");
    drop.addEventListener("dragover", dashing_component, false);
    drop.addEventListener("dragleave", undashing_component,false);
    drop.addEventListener("drop", undashing_component,false);

    function dashing_component() {
      drop.style.border = '3px dashed #ddd';
    };
    function undashing_component() {
      drop.style.border = '3px solid #ddd';
    };
    
    $('.list-item').click(function () {
        $('.list-item-'+$(this).data('type')).removeClass('selected');
        $(this).addClass('selected');
        if ($('.list-item-design.selected').length && $('.list-item-product.selected').length) {
            $.ajax({
                type: 'POST',
                url: baseDir + 'index.php',
                data: 'controller=ajax&action=layoutmakerselect&ajax&id_product=' + $('.list-item-product.selected').data('id')+ '&id_design=' + $('.list-item-design.selected').data('id'),
                dataType: 'json',
                beforeSend: function () {
                    $.fancybox.showLoading();
                },
                success: function(json) {
                    $.fancybox.hideLoading();
                    if (json.success === true) {
                        $('.block-color-product').remove();
                        $('.change-color-product-block').hide();
                        $('.preview-color').hide();
                        $('.block-item-size').hide();
                        $('.block-design-size').hide();
                        $('.overlay-img').hide();
                        $('.add-to-cart').hide();
                        $('.fileinput-button').hide();
                        $('.slider-vertical').hide();
                        
                        json.colors.forEach(function (element) {
                            $('.change-color-product-block .block-colors').append('\
                                <div class="col-xs-6 block-color-product">\n\
                                    <div class="thumbnail thumbnail-hover">\n\
                                        <img class="change-color-product" \n\
                                         src="'+element+'"\n\
                                         alt="preview product" />\n\
                                    </div>\n\
                                </div>\n\
                            ');
                        });
                        $('.preview-color').show();
                        $('.change-color-product-block').show();
                        $('.slider-vertical').show();
                        
                        if (json.colors) {
//                            $('.overlay-img').attr('src', json.colors[0]);
//                            $('.overlay-img').show();
//                            if ($('.resize-image').attr('src') === $('.resize-image').data('original-url')) {
//                                $('.resize-image').hide();
//                            }
                        }
                        $('.add-to-cart').data('id-product', $('.list-item-product.selected').data('id'));
                        $('.add-to-cart').show();
                        
                        if (json.custom) {
                            $('.slider-vertical').show();
                        }
//                        if (json.custom && !$('.resize-container').hasClass('custom')) {
//                            $('.resize-image').hide();
//                        }
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
                            $('.resize-image').attr('src', json.url);
                            resizeableImage($('.resize-image'), true);
                        } else {
//                            $('.resize-image').attr('src', $('.resize-image').data('original-url'));
                            $('.fileinput-button').show();
                        }
                    } else {
                        $.fancybox('\
                                <div class="text-center">\n\
                                    <div class="glyphicon glyphicon-warning-sign font-size-44 margin-bottom-10"></div>\n\
                                    <div>'+json.error+'</div>\n\
                                </div>\n\
                            ');
                    }
                }
            });
        }
    });
});
