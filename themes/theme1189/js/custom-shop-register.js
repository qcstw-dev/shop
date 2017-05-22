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
    $('.forgot-password').live('click', function () {
        var content = $('.forgot-password-form').html();
        $.magnificPopup.open({
            items: [{
                    src: $('<div class="white-popup forgot-password-popup">'
                            + content
                            + '</div>'),
                    type: 'inline'
                }]
        });
    });
    $('.send-password').live('click', function () {
        var email = $('.forgot-password-popup .textfield-email').val();
        if (isEmail(email)) {
            $.ajax({
                type: 'POST',
                url: baseDir + 'index.php?controller=ajaxcustomshop&action=sendpassword&ajax=true&email=' + email,
                cache: false,
                dataType: 'json',
                async: true,
                beforeSend: function () {
                    loading('Please wait...');
                },
                success: function (json) {
                    loading_hide();
                    if (json.success) {
                        popupMessage('<span class="glyphicon glyphicon-ok"></span> You will shortly receive an email with your password', 'success');
                    } else {
                        $('.forgot-password-popup').find('.error-message-custom').text(json.error);
                        $('.forgot-password-popup').find('.error-message-custom').slideDown();
                    }
                }
            });
        } else {
            $('.forgot-password-popup').find('.error-message-email').slideDown();
        }
    });
});