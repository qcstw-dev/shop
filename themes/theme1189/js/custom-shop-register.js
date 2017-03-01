$(function () {
    $('.btn-switch').on('click', function () {
        $('.btn-switch').removeClass('active');
        $('.block-switch').addClass('hidden');
        $(this).addClass('active');
        $('.' + $(this).data('id')).removeClass('hidden');
    });
    formValidators($('.register-form'));
    formValidators($('.login-form'));
    $(document).on('click', '.register-form input[type="submit"], .login-form input[type="submit"]', function () {
        event.preventDefault();
        if (formSubmitValidator($(this).parent('form'))) {
            $(this).parent('form').submit();
        }
    });
});