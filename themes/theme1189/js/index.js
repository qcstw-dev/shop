$(document).ready(function () {
    $('#home-page-tabs li:first, #index .tab-content ul:first').addClass('active');
    $('#home-page-tabs li').on('click', function () {
        thisClass = $(this).attr('class');
        listTabsAnimate('.tab-content ul.' + thisClass + ' li');
    });
    $('.home-block').hover(function (e) {
        $(this).find('.home-block-hover').stop().fadeTo("slow", 0.8);
    }, function (e) {
        $(this).find('.home-block-hover').stop().fadeTo("slow", 0);
    });
});