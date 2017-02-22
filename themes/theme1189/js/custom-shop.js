$(function () {
    $(document).on('click', '.quick-view', function (e) {
        e.preventDefault();
        var url = ($(this).data('url') ? $(this).data('url') : ($(this).attr('href') ? $(this).attr('href') : ''));
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
                'href': url + 'content_only=1' + anchor + '&side=' + $('.shop').data('side') + ($(this).data('id-creation') ? '&id_creation=' + $(this).data('id-creation') : '') + ($(this).data('id-design') ? '&id_design=' + $(this).data('id-design') : ''),
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
    $('.popup-picture').live('click', function () {
        popupMessage('<div class="thumbnail"><img src="' + $(this).attr('src') + '" /></div>');
    });
});
function loading_popup(custom_message) {
    $.magnificPopup.open({
        items: [{
                src: $('<div class="white-popup">' +
                        '<div class="margin-auto bold">' +
                        '<img src="' + baseUri + '/img/loader.gif" /> ' +
                        (custom_message ? custom_message : 'Loading...') +
                        '</div>' +
                        '</div>'),
                type: 'inline'
            }],
        showCloseBtn: false
    });
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
function popupConfirm(custom_text) {
    popupMessage('<span class="glyphicon glyphicon-ok color-green font-size-20"></span> ' + (custom_text ? custom_text : 'Success') );
    setTimeout(function () {
        $.magnificPopup.close();
    }, 700);
}
function confirm(text) {
    $('.confirm').find('.text').text(text);
    $('.confirm').fadeIn('slow');
    setTimeout(function () {
        $('.confirm').fadeOut('slow');
    }, 1000);
}
function loading(text) {
    $('.loading-ajax').find('.text').text(text);
    $('.loading-ajax').fadeIn('slow');
}
function loading_hide() {
    $('.loading-ajax').fadeOut('slow');
}
function loading_popup_hide() {
    $.magnificPopup.close();
}