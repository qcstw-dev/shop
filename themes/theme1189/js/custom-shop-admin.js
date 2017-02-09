var id_shop = $('.shop').data('id-shop');
var name_shop = $('.shop').data('name-shop');
function loading(customText) {
    $.magnificPopup.open({
        items: [{
                src: $('<div class="white-popup">' +
                        '<div class="bold font-size-15"><img src="' + baseUri + '/img/loader.gif" /> ' + (customText ? customText : 'Loading') + '</div>' +
                        '</div>'),
                type: 'inline'
            }],
        showCloseBtn: false
    });
}
function confirm() {
    $('.confirm').fadeIn('slow');
    setTimeout(function () {
        $('.confirm').fadeOut('slow');
    }, 500);
}
function saving() {
    $('.saving').fadeIn('slow');
}
function saving_hide() {
    $('.saving').fadeOut('slow');
}
function loading_hide() {
    $.magnificPopup.close();
}