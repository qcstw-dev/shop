$(function () {
    $('.payment').on('change', function () {
        $('.payment-block').css('display', 'none');
        $('.payment-' + $(this).data('payment')).slideDown();
    });
    formValidators($('.personal-info-form'));
    formValidators($('.public-info-form'));
    formValidators($('.password-change-form'));
    formValidators($('.bank-detail-form'));
    $(document).on('click',
            '.personal-info-form input[type="submit"],\n\
                .public-info-form input[type="submit"],\n\
                .password-change-form input[type="submit"],\n\
                .bank-detail-form input[type="submit"]',
            function () {
                event.preventDefault();
                if (formSubmitValidator($(this).parents('form'))) {
                    $(this).parents('form').submit();
                }
            });
    $(document).on('click', '.minimum-to-reach-form input[type="submit"]', function () {
        event.preventDefault();
        console.log($('.minimum').prop('min'));
        if (parseInt($('.minimum').val()) >= $('.minimum').prop('min')) {
            $(this).parents('form').submit();
        } else {
            $(this).addClass('.form-control-danger');
            $('.error-message-minimum').slideDown();
        }
    });
});