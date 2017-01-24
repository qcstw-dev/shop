function loading(customText) {
    $.magnificPopup.open({
        items: [{
                src: $('<div class="white-popup">' +
                        '<div class="bold font-size-15"><img src="' + baseUri + '/img/loader.gif" /> '+(customText ? customText : 'Loading')+'</div>' +
                        '</div>'),
                type: 'inline'
            }],
        showCloseBtn: false
    });
}
function popupConfirm() {
    $.magnificPopup.open({
        items: [{
                src: $('<div class="white-popup">' +
                        '<div class="font-size-40 color-green"><span class="glyphicon glyphicon-ok"></span></div>' +
                        '</div>'),
                type: 'inline'
            }],
        showCloseBtn: false
    });
    setTimeout(function(){ $.magnificPopup.close(); }, 500);
}
function loading_hide() {
    $.magnificPopup.close();
}
function popupError(error) {
    $.magnificPopup.open({
        items: [{
                src: $('<div class="white-popup bold font-size-15"><span class="glyphicon glyphicon-warning-sign font-size-20"></span> ' + error + '</div>'),
                type: 'inline'
            }]
    });
}
