$(function() {
   $('.payment').on('change', function () {
       $('.payment-block').css('display', 'none');
       $('.payment-'+$(this).data('payment')).slideDown();
   });
   formValidators($('.user-account-form'));
    $(document).on('click', '.user-account-form input[type="submit"]', function () {
        event.preventDefault();
        if (formSubmitValidator($('.user-account-form'))) {
            $('.user-account-form').submit();
        }
    });
});