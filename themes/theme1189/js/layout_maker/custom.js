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

    $('.change-color-product').on('click', function () {
        if ($('.resize-image').data('is-first-image')) {
            $('.resize-image').attr('src', '');
            $('.resize-image').data('is-first-image', 0);
        }
        $('.overlay-img').attr('src', $(this).data('image-large')); 
        $('.overlay').data('item-size', $(this).data('item-size'));
        $('.overlay').data('logo-size', $(this).data('logo-size'));
        $('.overlay').data('product-id', $(this).data('product-id'));
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
    
    
    $('.block-color-product').hover(function (){
        $(this).find('.block-layout-maker-info').stop(true, true).slideDown();
    }, function () {
        $(this).find('.block-layout-maker-info').stop(true, true).slideUp();
    });

    $('.list-item').click(function () {
        $('.list-item-'+$(this).data('type')).removeClass('selected');
        $(this).addClass('selected');
        if ($('.list-item-design.selected').length && $('.list-item-product.selected').length) {
            console.log('appel ajax');
            
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
                        $('.overlay-img').attr('src', json.url);
                        if (json.colors) {
                            json.colors.forEach(function (element) {
                                $('.change-color .block-color-product').append('\
                                    <div class="thumbnail thumbnail-hover">\n\
                                        <img class="change-color-product" \n\
                                         src="'+element+'"\n\
                                         data-product-id="" \n\
                                         alt="preview product" />\n\
                                    </div>\n\
                                ');
                            });
                            $('.change-color').show();
                        }
                    } else {
                        $.fancybox({html :'<p class="text-center">'+json.error+'</p>'});
                    }
                }
            });
        }
    });
});
