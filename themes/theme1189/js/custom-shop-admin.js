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
function popupConfirm(custom_text) {
    popupMessage('<div class="glyphicon glyphicon-ok font-size-30"></div><div class="font-size-20 bold">' + (custom_text ? custom_text : 'Success') + '</div>');
    setTimeout(function () {
        $.magnificPopup.close();
    }, 500);
}
function popupError(error) {
    popupMessage('<div class="glyphicon glyphicon-warning-sign font-size-30 color-red"></div><div>' + error + '</div>');
}
function popupChoice(html, aFunction) {
    html = '<div class="glyphicon glyphicon-warning-sign font-size-30 color-red"></div><div>' + html + '</div>';
    html += '<div class="col-xs-6 margin-top-10 margin-auto">\n\
                <div class="btn btn-default pull-left cancel">Cancel</div>\n\
                <div class="btn btn-primary pull-right confirm-btn">Confirm</div>\n\
            </div>';
    popupMessage(html);
    $('.cancel').click(function () {
       $.magnificPopup.close(); 
    });
    $('.confirm-btn').click(function () {
       $.magnificPopup.close();
       window[aFunction['function_name']](aFunction['arguments']);
    });
}
function popupMessage(html) {
    $.magnificPopup.open({
        items: [{
                src: $('<div class="white-popup bold font-size-15">' +
                        html +
                        '<div class="clearfix"></div>' +
                        '</div>'),
                type: 'inline'
            }]
    });
}
$('.popup-picture').live('click', function () {
    popupMessage('<div class="thumbnail"><img src="' + $(this).attr('src') + '" /></div>');
});