$(function () {
    if (getUrlParameter('id_product') && getUrlParameter('id_creation') && getUrlParameter('id_design')) {
        quickView(getUrlParameter('id_product'), getUrlParameter('id_creation'), getUrlParameter('id_design'));
    }
    if (getUrlParameter('video_intro')) {
        displayVideoIntro();
    }
    $(document).on('click', '.open-video', function (e) {
        displayVideoIntro();
    });
    $(document).on('click', '.quick-view', function (e) {
        e.preventDefault();
        quickView($(this).data('id-product'), $(this).data('id-creation'), $(this).data('id-design'));
    });
    $('.popup-picture, .popup').live('click', function () {
        popupMessage('<div class="thumbnail"><img src="' + $(this).attr('src') + '" /></div>'+($(this).data('text') ? '<div class="alert alert-info">'+$(this).data('text')+'</div>' : '' ));
    });
    $('.dropdown-block-title').on('click', function () {
        if ($(this).find('.chevron').hasClass('glyphicon-chevron-right')) {
            $(this).find('.chevron').removeClass('glyphicon-chevron-right');
            $(this).find('.chevron').addClass('glyphicon-chevron-down');
        } else {
            $(this).find('.chevron').removeClass('glyphicon-chevron-down');
            $(this).find('.chevron').addClass('glyphicon-chevron-right');
        }
        $('.dropdown-block-' + $(this).data('id-dropdown-block')).slideToggle();
    });
});
function displayVideoIntro() {
    popupMessage('<iframe class="hidden-xs hidden-sm" width="560" height="315" src="https://www.youtube.com/embed/oty_aTG-rE4?rel=0&amp;showinfo=0&amp;autoplay=1" frameborder="0" allowfullscreen></iframe>\n\
        <iframe class="visible-xs visible-sm" width="100%" height="200" src="https://www.youtube.com/embed/oty_aTG-rE4?rel=0&amp;showinfo=0&amp;autoplay=1" frameborder="0" allowfullscreen></iframe>');
}
function quickView(id_product, id_creation, id_design) {
    var url = baseDir + 'product-popup';
    var anchor = '';

    if (url.indexOf('#') != -1) {
        anchor = url.substring(url.indexOf('#'), url.length);
        url = url.substring(0, url.indexOf('#'));
    }
    if (url.indexOf('?') != -1)
        url += '&';
    else
        url += '?';
    
    var path = (window.location.host !== 'localhost' ? window.location.pathname.split('/')['1'] + '/' + window.location.pathname.split('/')['2'] : window.location.pathname.split('/')['2'] + '/' + window.location.pathname.split('/')['3']);
    var currentUrl = baseDir + path;
    
    if (!!$.prototype.fancybox) {
        $.fancybox({
            'padding': 0,
            'width': 900,
            'height': 'auto',
            'type': 'ajax',
            'autoSize': false,
            'href': url + 'content_only=1' + anchor + '&side=' + $('.shop').data('side') + '&id_product=' + id_product + (id_creation ? '&id_creation=' + id_creation : '') + (id_design ? '&id_design=' + id_design : ''),
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
            },
            afterClose: function () {
                window.history.pushState({path: currentUrl}, '', currentUrl);
            },
        });
        if (!getUrlParameter('id_product') || !getUrlParameter('id_creation') || !getUrlParameter('id_design')) {
            var newUrl = currentUrl + '?id_product=' + id_product + '&id_creation=' + id_creation + '&id_design=' + id_design;
            window.history.pushState({path: url}, '', newUrl);
        }
    }
}
var getUrlParameter = function getUrlParameter(sParam) {
    var sPageURL = decodeURIComponent(window.location.search.substring(1)),
        sURLVariables = sPageURL.split('&'),
        sParameterName,
        i;

    for (i = 0; i < sURLVariables.length; i++) {
        sParameterName = sURLVariables[i].split('=');

        if (sParameterName[0] === sParam) {
            return sParameterName[1] === undefined ? true : sParameterName[1];
        }
    }
};
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
    popupMessage('<div class="glyphicon glyphicon-warning-sign font-size-30 color-red"></div><div class="bold">' + error + '</div>');
}
function popupChoice(html, aFunction, aFunctionCancel) {
    html = '<div class="glyphicon glyphicon-warning-sign font-size-30 color-red"></div><div class="bold">' + html + '</div>';
    html += '<div class="col-xs-12 col-sm-6 margin-top-10 margin-auto">\n\
                <div class="btn btn-default pull-left cancel">Cancel</div>\n\
                <div class="btn btn-primary pull-right confirm-btn">Confirm</div>\n\
            </div>';
    popupMessage(html);
    $('.cancel').click(function () {
        $.magnificPopup.close();
        if (aFunctionCancel) {
            window[aFunctionCancel['function_name']](aFunctionCancel['arguments']);
        }
    });
    $('.confirm-btn').click(function () {
        $.magnificPopup.close();
        window[aFunction['function_name']](aFunction['arguments']);
    });
}
function popupMessage(html, style) {
    $.magnificPopup.open({
        items: [{
                src: $('<div class="white-popup">' +
                        (style ? '<div class="col-xs-12 margin-bottom-0 alert alert-' + style + '">' : '') +
                        html +
                        (style ? '</div>' : '') +
                        '<div class="clearfix"></div>' +
                        '</div>'),
                type: 'inline'
            }]
    });
}
function popupConfirm(custom_text) {
    popupMessage('<span class="glyphicon glyphicon-ok color-green font-size-20"></span> ' + (custom_text ? custom_text : 'Success'));
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