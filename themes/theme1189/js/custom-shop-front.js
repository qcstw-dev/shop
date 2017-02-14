$(function () {
    $('.add-creation').on('click', function () {
       $.ajax({
            type: 'POST',
            url: baseDir + 'index.php?controller=ajaxcustomshop&action=addtocartcustomproduct&ajax=true&id_creation='+ $(this).data('id-creation'),
            cache: false,
            dataType: 'json',
            success: function (json) {
                if (json.success) {
                    console.log('added');
                } else {
                    popupError(json.error);
                }
            }
        });
    });
    $('.mini-picture').on('click', function () {
        $('.big-picture-' + $(this).data('id-creation')).attr('src', $(this).attr('src'));
    });
    if ($('.contact-form').hasClass('auto-display')) {
        contactFormPopup();
    }
    $(document).on('click', '.btn-contact', function () {
        contactFormPopup();
    });

    $(document).on('click', '.popup-cms-content', function () {
        $.ajax({
            type: 'POST',
            url: baseDir + 'index.php?controller=ajaxcustomshop&action=load' + $(this).data('page') + '&ajax=true',
            cache: false,
            dataType: 'html',
            success: function (html) {
                if (html) {
                    $.magnificPopup.open({
                        items: [{
                                src: $('<div class="white-popup">' +
                                        html +
                                        '<div class="clearfix"></div>' +
                                        '</div>'),
                                type: 'inline'
                            }]
                    });
                }
            }
        });
    });
});
function contactFormPopup() {
    $.magnificPopup.open({
        items: [{
                src: $('<div class="white-popup">' +
                        $('.contact-form').html() +
                        '</div>'),
                type: 'inline'
            }],
        focus: '.search_query'
    });
}