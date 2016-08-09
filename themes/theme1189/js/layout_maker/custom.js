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

    $('.change-product').on('click', function () {
        //reset image exemple import
        if ($('.resize-image').data('is-first-image')) {
            $('.resize-image').attr('src', '');
            $('.resize-image').data('is-first-image', 0);
        }
        $('.btn-show-hide-text-area').trigger('click');
        $('.product-title').hide();
        $('.product-title-'+$(this).data('product-id')).show();
        $('.change-color-product-block').hide();
        $('.change-color-product-block.'+$(this).data('product-id')).show();
        $('.overlay-img').attr('src', $(this).data('image-large'));
        $('.overlay').data('ref', $(this).data('ref'));
        $('.overlay').data('item-size', $(this).data('item-size'));
        $('.overlay').data('logo-size', $(this).data('logo-size'));
        $('.overlay').data('product-id', $(this).data('product-id'));
    });

    $('.change-color-product').live('click', function () {
//        $('.overlay-img.added').remove();
//        $('.overlay-inner').append('<img class="overlay-img added" src="'+$(this).attr('src')+'">');
        $('.overlay-img').attr('src', $(this).attr('src'));
    });
    
    var drop = document.getElementById("component");
    drop.addEventListener("dragover", dashing_component, false);
    drop.addEventListener("dragleave", undashing_component,false);
    drop.addEventListener("drop", undashing_component,false);

    function dashing_component() {
      drop.style.border = '3px dashed #38B15D';
    };
    function undashing_component() {
      drop.style.border = '3px solid #e9e9e9';
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
                    console.log(json);
                    if (json.success === true) {
                        $('.resize-image').attr('src', json.url);
                        $('.block-color-product').remove();
                        if (json.colors) {
                            json.colors.forEach(function (element) {
                                $('.change-color-product-block .block-colors').append('\
                                    <div class="col-xs-6 block-color-product">\n\
                                        <div class="thumbnail thumbnail-hover">\n\
                                            <img class="change-color-product" \n\
                                             src="'+element+'"\n\
                                             data-product-id="" \n\
                                             alt="preview product" />\n\
                                        </div>\n\
                                    </div>\n\
                                ');
                            });
                            $('.change-color-product-block').show();
                            $('.btn-crop').show();
                            resizeableImage($('.resize-image'), false);
                        }
                    } else {
                        $.fancybox('<div class="text-center"><div class="glyphicon glyphicon-warning-sign font-size-44 margin-bottom-10"></div><div>'+json.error+'</div></div>');
                    }
                }
            });
        }
    });
});
