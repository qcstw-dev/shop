//global variables
var responsiveflag = false;
var isMobile = /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent);
var isiPad = /iPad/i.test(navigator.userAgent);
var timer;
var path = (window.location.host !== 'localhost' ? window.location.pathname.split('/')['1'] + '/' + window.location.pathname.split('/')['2'] : window.location.pathname.split('/')['2'] + '/' + window.location.pathname.split('/')['3']);
var currentUrl = baseDir + path;

$(document).ready(function () {
    controller = new ScrollMagic();
    highdpiInit();
    responsiveResize();
    $(window).resize(responsiveResize);
    if (navigator.userAgent.match(/Android/i))
    {
        var viewport = document.querySelector('meta[name="viewport"]');
        viewport.setAttribute('content', 'initial-scale=1.0,maximum-scale=1.0,user-scalable=0,width=device-width,height=device-height');
        window.scrollTo(0, 1);
    }
//    blockHover();
    if (typeof quickView !== 'undefined' && quickView)
        quick_view();
    dropDown();

    if (typeof page_name != 'undefined' && !in_array(page_name, ['index', 'product']))
    {
        bindGrid();

        $(document).on('change', '.selectProductSort', function (e) {
            if (typeof request != 'undefined' && request)
                var requestSortProducts = request;
            var splitData = $(this).val().split(':');
            var url = '';
            if (typeof requestSortProducts != 'undefined' && requestSortProducts)
            {
                url += requestSortProducts;
                if (typeof splitData[0] !== 'undefined' && splitData[0])
                {
                    url += (requestSortProducts.indexOf('?') < 0 ? '?' : '&') + 'orderby=' + splitData[0] + (splitData[1] ? '&orderway=' + splitData[1] : '');
                    if (typeof splitData[1] !== 'undefined' && splitData[1])
                        url += '&orderway=' + splitData[1];
                }
                document.location.href = url;
            }
        });

        $(document).on('change', 'select[name="n"]', function () {
            $(this.form).submit();
        });

        $(document).on('change', 'select[name="currency_payment"]', function () {
            setCurrency($(this).val());
        });
    }

    $(document).on('change', 'select[name="manufacturer_list"], select[name="supplier_list"]', function () {
        if (this.value != '')
            location.href = this.value;
    });

    $(document).on('click', '.back', function (e) {
        e.preventDefault();
        history.back();
    });

    jQuery.curCSS = jQuery.css;
    if (!!$.prototype.cluetip)
        $('a.cluetip').cluetip({
            local: true,
            cursor: 'pointer',
            dropShadow: false,
            dropShadowSteps: 0,
            showTitle: false,
            tracking: true,
            sticky: false,
            mouseOutClose: true,
            fx: {
                open: 'fadeIn',
                openSpeed: 'fast'
            }
        }).css('opacity', 0.8);

    if (!!$.prototype.fancybox)
        $.extend($.fancybox.defaults.tpl, {
            closeBtn: '<a title="' + FancyboxI18nClose + '" class="fancybox-item fancybox-close" href="javascript:;"></a>',
            next: '<a title="' + FancyboxI18nNext + '" class="fancybox-nav fancybox-next" href="javascript:;"><span></span></a>',
            prev: '<a title="' + FancyboxI18nPrev + '" class="fancybox-nav fancybox-prev" href="javascript:;"><span></span></a>'
        });
    // Close Alert messages
    $(".alert.alert-danger").on('click', this, function (e) {
        if (e.offsetX >= 16 && e.offsetX <= 39 && e.offsetY >= 16 && e.offsetY <= 34)
            $(this).fadeOut();
    });
    $('.add-creation').live('click', function () {
        $.fancybox.showLoading();
        var id_creation = $(this).data('id-creation');
        $.ajax({
            type: 'POST',
            url: baseDir + 'index.php?controller=ajaxcustomshop&action=addtocartcustomproduct&ajax=true&id_creation=' + id_creation,
            cache: false,
            dataType: 'json',
            success: function (json) {
                if (json.success) {
                    $.fancybox.hideLoading();
                    $('.ajax_cart_quantity').html(json.nb_products).show();
                    ajaxCart.refresh();
                    $('.add-creation[data-id-creation="' + id_creation + '"]').removeClass('btn-primary').addClass('btn-success');
                    $('.add-creation[data-id-creation="' + id_creation + '"]').find('.glyphicon').removeClass('glyphicon-shopping-cart').addClass('glyphicon-ok');
                } else {
                    popupError(json.error);
                }
            }
        });
    });
    $(document).on('click', '.quick-view-creation', function (e) {
        e.preventDefault();
        quickView($(this).data('id-product'), $(this).data('id-creation'), $(this).data('id-design'));
    });
    $('.filter').on('change', function (e) {
        var design_cat = [];
        $('.filter[data-type="design"]:checked').each(function () {
            design_cat.push($(this).val());
        });
        var product_cat = [];
        $('.filter[data-type="product"]:checked').each(function () {
            product_cat.push($(this).val());
        });
        $.ajax({
            type: 'POST',
            url: baseDir + 'index.php?controller=ajax&action=SearchCreations&ajax=true',
            data: {
                'design_cat' : design_cat,
                'product_cat' : product_cat
            },
            cache: false,
            dataType: 'html',
            beforeSend: function (xhr) {
                $('.products-container').html('<div class="text-center margin-top-100"><img src="'+baseDir+'img/gears.gif" /></div>');
            },
            success: function (html) {
                if (html) {
                    $('.products-container').replaceWith(html);
                }
            }
        });
        var query_string = '';
        $.each(design_cat, function (key, value) {
            query_string += (key === 0 ? '?' : '&')+'design_cat[]='+value;
        });
        $.each(product_cat, function (key, value) {
            query_string += (query_string === '' ? '?' : '&')+'product_cat[]='+value;
        });
        var newUrl = currentUrl + query_string;
        window.history.pushState({path: currentUrl}, '', newUrl);
    });
});
function array_values (input) { // eslint-disable-line camelcase
  //  discuss at: http://locutus.io/php/array_values/
  // original by: Kevin van Zonneveld (http://kvz.io)
  // improved by: Brett Zamir (http://brett-zamir.me)
  //   example 1: array_values( {firstname: 'Kevin', surname: 'van Zonneveld'} )
  //   returns 1: [ 'Kevin', 'van Zonneveld' ]
  var tmpArr = []
  var key = ''
  for (key in input) {
    tmpArr[tmpArr.length] = input[key]
  }
  return tmpArr
}
function popupError(error) {
    popupMessage('<div class="glyphicon glyphicon-warning-sign font-size-30 color-red"></div><div class="bold">' + error + '</div>');
}
function popupMessage(html, style) {
    $.magnificPopup.open({
        items: [{
                src: $('<div class="white-popup">' +
                        '<div class="col-xs-12 ' + (style ? 'alert alert-' + style : 'alert alert-default') + '">' +
                        html +
                        '</div>' +
                        '<div class="clearfix"></div>' +
                        '</div>'),
                type: 'inline'
            }]
    });
}
function loading() {
    $.magnificPopup.open({
        items: [{
                src: $('<div class="white-popup">' +
                        '<div class="row">' +
                        '<div class="col-xs-2 col-xs-offset-3">' +
                        '<img src="' + baseUri + '/img/loader.gif" />' +
                        '</div>' +
                        '<div class="col-xs-4 bold">' +
                        'Loading...' +
                        '</div>' +
                        '</div>' +
                        '</div>'),
                type: 'inline'
            }],
        showCloseBtn: false
    });
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
            'href': url + 'content_only=1' + anchor + '&side=front' + '&id_product=' + id_product + (id_creation ? '&id_creation=' + id_creation : '') + (id_design ? '&id_design=' + id_design : ''),
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
//            afterClose: function () {
//                window.history.pushState({path: currentUrl}, '', currentUrl);
//            },
        });
//        if (!getUrlParameter('id_product') || !getUrlParameter('id_creation') || !getUrlParameter('id_design')) {
//            var newUrl = currentUrl + '?id_product=' + id_product + '&id_creation=' + id_creation + '&id_design=' + id_design;
//            window.history.pushState({path: url}, '', newUrl);
//        }
    }
}
function highdpiInit()
{
    if ($('.replace-2x').css('font-size') == "1px")
    {
        var els = $("img.replace-2x").get();
        for (var i = 0; i < els.length; i++)
        {
            src = els[i].src;
            extension = src.substr((src.lastIndexOf('.') + 1));
            src = src.replace("." + extension, "2x." + extension);

            var img = new Image();
            img.src = src;
            img.height != 0 ? els[i].src = src : els[i].src = els[i].src;
        }
    }
}

// Used to compensante Chrome/Safari bug (they don't care about scroll bar for width)
function scrollCompensate()
{
    var inner = document.createElement('p');
    inner.style.width = "100%";
    inner.style.height = "200px";

    var outer = document.createElement('div');
    outer.style.position = "absolute";
    outer.style.top = "0px";
    outer.style.left = "0px";
    outer.style.visibility = "hidden";
    outer.style.width = "200px";
    outer.style.height = "150px";
    outer.style.overflow = "hidden";
    outer.appendChild(inner);

    document.body.appendChild(outer);
    var w1 = inner.offsetWidth;
    outer.style.overflow = 'scroll';
    var w2 = inner.offsetWidth;
    if (w1 == w2)
        w2 = outer.clientWidth;

    document.body.removeChild(outer);

    return (w1 - w2);
}

function responsiveResize()
{
    compensante = scrollCompensate();
    if (($(window).width() + scrollCompensate()) <= 767 && responsiveflag == false)
    {
        accordion('enable');
        accordionFooter('enable');
        responsiveflag = true;
    } else if (($(window).width() + scrollCompensate()) >= 768)
    {
        accordion('disable');
        accordionFooter('disable');
        responsiveflag = false;
    }
}

function blockHover(status)
{
    $(document).off('mouseenter').on('mouseenter', '.product_list.grid div.ajax_block_product .product-container', function (e) {

        if ('ontouchstart' in document.documentElement)
            return;
        if ($('body').find('.container').width() == 1170)
        {
            var pcHeight = $(this).parent().outerHeight();
            var pcPHeight = $(this).parent().find('.button-container').outerHeight() + $(this).parent().find('.comments_note').outerHeight() + $(this).parent().find('.functional-buttons').outerHeight();
            $(this).parent().addClass('hovered');
            $(this).parent().css('height', pcHeight + pcPHeight).css('margin-bottom', pcPHeight * (-1));
        }
    });

    $(document).off('mouseleave').on('mouseleave', '.product_list.grid div.ajax_block_product .product-container', function (e) {
        if ($('body').find('.container').width() == 1170)
            $(this).parent().removeClass('hovered');
    });
}

function quick_view()
{
    $(document).on('click', '.quick-view, .quick-view-bis, .quick-view-mobile-bis', function (e)
    {
        e.preventDefault();
        var url = this.href;
        var anchor = '';

        if (url.indexOf('#') != -1)
        {
            anchor = url.substring(url.indexOf('#'), url.length);
            url = url.substring(0, url.indexOf('#'));
        }
        if (url.indexOf('?') != -1)
            url += '&';
        else
            url += '?';

        var path = (window.location.host !== 'localhost' ? window.location.pathname.split('/')['1'] : window.location.pathname.split('/')['2']);
        var currentUrl = baseDir + path;
        var newUrl = currentUrl + '?product=' + url.match(/[0-9]{2,3}/g);

        if (!!$.prototype.fancybox)
            $.fancybox({
                'padding': 0,
                'width': 900,
                'height': 'auto',
                'type': 'ajax',
                'autoSize': false,
                'href': url + 'content_only=1' + anchor + ($(this).data('id-creation') ? '&id_creation=' + $(this).data('id-creation') + '&side=front' : '') + ($(this).data('id-design') ? '&id_design=' + $(this).data('id-design') : ''),
                afterClose: function () {
                    window.history.pushState({path: currentUrl}, '', currentUrl);
                },
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

        window.history.pushState({path: url}, '', newUrl);
    });
}

function quick_view_event(url) {
    var url = url;
    var anchor = '';

    if (url.indexOf('#') != -1)
    {
        anchor = url.substring(url.indexOf('#'), url.length);
        url = url.substring(0, url.indexOf('#'));
    }
    if (url.indexOf('?') != -1)
        url += '&';
    else
        url += '?';

    var path = (window.location.host !== 'localhost' ? window.location.pathname.split('/')['1'] : window.location.pathname.split('/')['2']);
    var currentUrl = baseDir + path;

    if (!!$.prototype.fancybox)
        $.fancybox({
            'padding': 0,
            'width': 900,
            'height': 'auto',
            'type': 'ajax',
            'autoSize': false,
            'href': url + 'content_only=1' + anchor,
            afterClose: function () {
                window.history.pushState({path: currentUrl}, '', currentUrl);
            },
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

function bindGrid()
{
    var view = $.totalStorage('display');

    if (!view && (typeof displayList != 'undefined') && displayList)
        view = 'list';

    if (view && view != 'grid')
        display(view);
    else
        $('.display').find('li#grid').addClass('selected');

    if ($('body#category').hasClass('three-columns')) {
        display('list');
        $('ul.display').addClass('hidden');
    }

    $(document).on('click', '#grid', function (e) {
        e.preventDefault();
        display('grid');
    });

    $(document).on('click', '#list', function (e) {
        e.preventDefault();
        display('list');
    });
}
if (nbItemsPerLine != 'undefined' && nbItemsPerLineTablet != 'undefined') {
    var nbItemsPerLine = nbItemsPerLine;
    var nbItemsPerLineTablet = nbItemsPerLineTablet
} else {
    var nbItemsPerLine = '';
    var nbItemsPerLineTablet = '';
}
function display(view)
{
    if (view == 'list')
    {
        $('div.product_list').removeClass('grid').addClass('list row');
        $('.product_list > div.ajax_block_product').removeClass('col-xs-12 col-sm-' + 12 / nbItemsPerLineTablet + ' col-md-' + 12 / nbItemsPerLine).addClass('col-xs-12');
        $('.product_list > div.ajax_block_product').each(function (index, element) {
            html = '';
            html = '<div class="product-container"><div class="row">';
            html += '<div class="left-block col-xs-4 col-xs-5 col-md-4">' + $(element).find('.left-block').html() + '</div>';
            html += '<div class="center-block col-xs-4 col-xs-7 col-md-4">';
            html += '<div class="product-flags">' + $(element).find('.product-flags').html() + '</div>';
            html += '<h5 itemprop="name">' + $(element).find('h5').html() + '</h5>';
            var rating = $(element).find('.comments_note').html(); // check : rating
            if (rating != null) {
                html += '<div itemprop="aggregateRating" itemscope itemtype="http://schema.org/AggregateRating" class="comments_note">' + rating + '</div>';
            }
            html += '<p class="product-desc">' + $(element).find('.product-desc').html() + '</p>';
            var colorList = $(element).find('.color-list-container').html();
            if (colorList != null) {
                html += '<div class="color-list-container">' + colorList + '</div>';
            }
            var availability = $(element).find('.availability').html();	// check : catalog mode is enabled
            if (availability != null) {
                html += '<span class="availability">' + availability + '</span>';
            }
            html += '</div>';
            html += '<div class="right-block col-xs-4 col-xs-12 col-md-4"><div class="right-block-content row">';
            var price = $(element).find('.content_price').html();       // check : catalog mode is enabled
            if (price != null) {
                html += '<div class="content_price col-xs-5 col-md-12">' + price + '</div>';
            }
            html += '<div class="button-container col-xs-7 col-md-12">' + $(element).find('.button-container').html() + '</div>';
            html += '<div class="functional-buttons clearfix col-sm-12">' + $(element).find('.functional-buttons').html() + '</div>';
            html += '</div>';
            html += '</div></div>';
            $(element).html(html);
        });
        $('.display').find('li#list').addClass('selected');
        $('.display').find('li#grid').removeAttr('class');
        listTabsAnimate('div.product_list>div.ajax_block_product');
        $.totalStorage('display', 'list');
    } else
    {
        $('div.product_list').removeClass('list').addClass('grid row');
        $('.product_list > div.ajax_block_product').removeClass('col-xs-12').addClass('col-xs-12 col-sm-' + 12 / nbItemsPerLineTablet + ' col-md-' + 12 / nbItemsPerLine);
        $('.product_list > div.ajax_block_product').each(function (index, element) {
            html = '';
            html += '<div class="product-container">';
            html += '<div class="left-block">' + $(element).find('.left-block').html() + '</div>';
            html += '<div class="right-block">';
            html += '<div class="product-flags">' + $(element).find('.product-flags').html() + '</div>';
            html += '<h5 itemprop="name">' + $(element).find('h5').html() + '</h5>';
            html += '<p itemprop="description" class="product-desc">' + $(element).find('.product-desc').html() + '</p>';
            var price = $(element).find('.content_price').html(); // check : catalog mode is enabled
            if (price != null) {
                html += '<div class="content_price">' + price + '</div>';
            }
            var colorList = $(element).find('.color-list-container').html();
            if (colorList != null) {
                html += '<div class="color-list-container">' + colorList + '</div>';
            }
            var availability = $(element).find('.availability').html(); // check : catalog mode is enabled
            if (availability != null) {
                html += '<span class="availability">' + availability + '</span>';
            }
            html += '<div class="hovBox">';
            var rating = $(element).find('.comments_note').html(); // check : rating
            if (rating != null) {
                html += '<div itemprop="aggregateRating" itemscope itemtype="http://schema.org/AggregateRating" class="comments_note">' + rating + '</div>';
            }
            html += '<div itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="button-container">' + $(element).find('.button-container').html() + '</div>';
            html += '<div class="functional-buttons clearfix">' + $(element).find('.functional-buttons').html() + '</div>';
            html += '</div>';

            html += '</div>';
            html += '</div>';
            $(element).html(html);
        });
        $('.display').find('li#grid').addClass('selected');
        $('.display').find('li#list').removeAttr('class');
        listTabsAnimate('div.product_list>div.ajax_block_product');
        $.totalStorage('display', 'grid');
    }
}

function dropDown()
{
    elementClick = '#header .current';
    elementSlide = 'ul.toogle_content';
    activeClass = 'active';

    $(elementClick + ', ' + elementSlide).on('hover', function () {
        $(this).parent().find(elementSlide).stop().slideDown();
    }).on('mouseleave', function () {
        $(this).parent().find(elementSlide).stop().slideUp();
    });
}

function accordionFooter(status)
{
    if (status == 'enable')
    {
        $('#footer .footer-block h4').on('click', function () {
            $(this).toggleClass('active').parent().find('.toggle-footer').stop().slideToggle('medium');
        })
        $('#footer').addClass('accordion').find('.toggle-footer').slideUp('fast');
    } else
    {
        $('.footer-block h4').removeClass('active').off().parent().find('.toggle-footer').removeAttr('style').slideDown('fast');
        $('#footer').removeClass('accordion');
    }
}

//   TOGGLE COLUMNS
function accordion(status) {
    if (status == 'enable') {

        $('#right_column .block:not(#layered_block_left) .title_block, #left_column .block:not(#layered_block_left) .title_block, #left_column #newsletter_block_left h4').on('click', function () {
            $(this).toggleClass('active').parent().find('.block_content').stop().slideToggle('medium');
        })
        $('#right_column, #left_column').addClass('accordion').find('.block:not(#layered_block_left) .block_content').slideUp('fast');
        if (typeof (ajaxCart) !== 'undefined')
            ajaxCart.collapse();
    } else {

        $('#right_column .block:not(#layered_block_left) .title_block, #left_column .block:not(#layered_block_left) .title_block, #left_column #newsletter_block_left h4').removeClass('active').off().parent().find('.block_content').removeAttr('style').slideDown('fast');
        $('#left_column, #right_column').removeClass('accordion');
    }
}

function listBlocksAnimate(block, element, row, offset, difEffect) {
    if (!isMobile && jQuery(block).length) {
        var i = 0;
        var j = row;
        var k = 1;
        var effect = -1;

        $(element).each(function () {
            i++;
            if (i > j) {
                j += row;
                k = i;
                effect = effect * (-1);
            }

            effect == -1 && difEffect == true ? ef = TweenMax.from(element + ':nth-child(' + i + ')', 0.5, {left: -1 * 200 - i * 300 + "px", alpha: 0, ease: Power1.easeOut}) : ef = TweenMax.from(element + ':nth-child(' + i + ')', 0.5, {right: -1 * 200 - i * 300 + "px", alpha: 0, ease: Power1.easeOut});

            var scene_new = new ScrollScene({
                triggerElement: element + ':nth-child(' + k + ')',
                offset: offset,
            }).setTween(ef)
                    .addTo(controller)
                    .reverse(false);
        });
    }
}

function listTabsAnimate(element) {
    if (!isMobile && jQuery(element).length) {
        TweenMax.staggerFromTo(element, 0.3, {alpha: 0, rotationY: -90, ease: Power1.easeOut}, {alpha: 1, rotationY: 0, ease: Power1.easeOut}, 0.01);
    }
}

function deleteCustomPicture(file_name, element) {
    $.ajax({
        type: 'POST',
        url: baseDir,
        data: 'controller=ajax&action=deletestoredcustomimage&ajax=true&file_name=' + file_name,
        dataType: 'json',
        beforeSend: function () {
            $(function () {
                $.fancybox.showLoading();
            });
        },
        success: function (json) {
            var isLayoutMaker = $('.resize-image').length;
            $.fancybox.hideLoading();
            if (json.success === true) {
                element.remove();
                if (!$('.list-item-product').length && !$('.list-item-design').length) {
                    $('.btn-block-selection').addClass('disabled');
                } else if (!$('.list-item-product').length || !$('.list-item-design').length) {
                    $('.btn-block-selection').removeClass('blink');
                }
                if (isLayoutMaker) {
                    $('.list-item-design').trigger('click');
                }
            } else {
                $.magnificPopup.open({
                    items: [{
                            src: $('<div class="white-popup">\n\
                                    <div class="glyphicon glyphicon-warning-sign font-size-44 margin-bottom-10"></div>\n\
                                    <div>Error</div>\n\
                                    </div>'),
                            type: 'inline'
                        }]
                });
            }
        }
    });
}
function videoPopupOpen() {
    $.magnificPopup.open({
        items: [{
                src: $('<div class="white-popup"><iframe width="100%" height="405" src="https://www.youtube.com/embed/4EF2lC8xEgE" frameborder="0" allowfullscreen></iframe></div>'),
                type: 'inline'
            }]
    });
}
;
$(window).load(function () {
    $('.delete_cutom_picture').live('click', function () {
        deleteCustomPicture($(this).data('file-name'), $(this).parent('.list-item-custom-image'));
    });
    listTabsAnimate('div.product_list:not(".tab-pane")>div.ajax_block_product');
    listBlocksAnimate('#homefeatured', '#homefeatured li', nbItemsPerLine, -300, true);
    listBlocksAnimate('#homepage-blog', '#homepage-blog li', nbItemsPerLine, -300, true);

    $('[data-toggle="tooltip"]').tooltip();

    $('.popup').live('click', function () {
        $.magnificPopup.open({
            items: [{
                    src: $('<div class="white-popup">' +
                            '<div class="thumbnail"><img src="' + ($(this).data('src') ? $(this).data('src') : $(this).attr('src')) + '" /></div>' +
                            ($(this).data('text') ? '<div class="alert alert-info">' + $(this).data('text') + '</div>' : '') +
                            '</div>'),
                    type: 'inline'
                }]
        });
    });
    $('.open_popup_video').live('click', function () {
        videoPopupOpen();
    });
    $('.icon').hover(function () {
        $(this).addClass('icon-hover');
        $(this).stop().animate({width: '100%'}, 350);
    }, function () {
        if (!$(this).hasClass('block-search')) {
            $(this).removeClass('icon-hover');
            $(this).stop().animate({width: '45px', height: '45px'}, 350);
        } else {
            if (!$('.ac_results').is(':visible')) {
                $(this).removeClass('icon-hover');
                $(this).stop().animate({width: '45px', height: '45px'}, 350);
            }
        }
    });
    $('.ac_results').live('mouseleave', function () {
        $(this).css('display', 'none');
        $('.block-search').removeClass('icon-hover');
        $('.block-search').stop().animate({width: '45px', height: '45px'}, 350);
    });
    $('.upload-design').on('click', function () {
        $('.hidden-fileupload').trigger('click');
    });
});