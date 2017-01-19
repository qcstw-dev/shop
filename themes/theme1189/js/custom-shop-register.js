$(function () {
    $('.btn-switch').on('click', function () {
        $('.btn-switch').removeClass('active');
        $('.block-switch').addClass('hidden');
        $(this).addClass('active');
        $('.' + $(this).data('id')).removeClass('hidden');
    });
    formValidators('register-form');
    formValidators('login-form');
    $(document).on('submit', '.register-form, .login-form', function () {
        event.preventDefault();
        if (formSubmitValidator($(this).attr('class'))) {
            $(this).submit;
        }
    });
});
function formValidators(form) {
    $('.' + form + ' .required').on('select', function () {
        $('.' + form + ' .error-message-empty-field').slideUp();
    });
    $('.' + form + ' .required').on('focusout', function () {
        if ($(this).val()) {
            $(this).removeClass('form-control-danger');
        }
        $('.' + form + ' .required').each(function () {
            if ($('.' + form + ' .form-control-danger').length === 0) {
                $('.' + form + ' .error-message-empty-field').slideUp();
            }
        });
    });
    if ($('.' + form + ' .email').length) {
        $('.' + form + ' .email').on('focusout', function () {
            if ($(this).val()) {
                if (isEmail($(this).val())) {
                    $(this).removeClass('form-control-danger');
                    $('.' + form + ' .error-message-email').slideUp();
                } else {
                    $(this).addClass('form-control-danger');
                    $('.' + form + ' .error-message-email').slideDown();
                }
            }
        });
    }
    if ($('.' + form + ' .shop_name').length) {
        $('.' + form + ' .shop_name').on('keyup', function () {
            if (event.keyCode !== 9) {
                if (isShopname($(this).val())) {
                    $(this).removeClass('form-control-danger');
                    $('.' + form + ' .error-message-shopname').slideUp();
                } else {
                    $(this).addClass('form-control-danger');
                    $('.' + form + ' .error-message-shopname').slideDown();
                }
            }

        });
    }
    if ($('.' + form + ' .password').length) {
        $('.' + form + ' .password').on('keyup', function () {
            if ($(this).val().length >= 6) {
                $(this).removeClass('form-control-danger');
                $('.' + form + ' .error-message-password-length').slideUp();
            }
        });
        $('.' + form + ' .password').on('focusout', function () {
            if ($(this).val()) {
                if ($('.' + form + ' .password').val().length < 6) {
                    $(this).addClass('form-control-danger');
                    $('.' + form + ' .error-message-password-length').slideDown();
                } else {
                    $(this).removeClass('form-control-danger');
                    $('.' + form + ' .error-message-password-length').slideUp();
                }
            }
        });
        $('.' + form + ' .confirm_password').on('keyup', function () {
            if (($('.' + form + ' .password').val() && $(this).val())
                    && ($('.' + form + ' .password').val() === $(this).val())) {
                $(this).removeClass('form-control-danger');
                $('.' + form + ' .error-message-password').slideUp();
            }
        });
        $('.' + form + ' .confirm_password').on('focusout', function () {
            if (($('.' + form + ' .password').val() && $(this).val())
                    && ($('.' + form + ' .password').val() !== $(this).val())) {
                $(this).addClass('form-control-danger');
                $('.' + form + ' .error-message-password').slideDown();
            } else {
                $(this).removeClass('form-control-danger');
                $('.' + form + ' .error-message-password').slideUp();
            }
        });
    }
}
function isEmail(email) {
    var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    return regex.test(email);
}
function isShopname(shopname) {
    var regex = /^([a-zA-Z0-9]+)$/;
    return regex.test(shopname);
}
function formSubmitValidator(form) {
    var valid = true;
    $('.' + form + ' .error-message').slideUp();
    $('.' + form + ' .required').each(function () {
        if ($(this).hasClass('required') && !$(this).val()) {
            $(this).addClass('form-control-danger');
            $('.' + form + ' .error-message-empty-field').slideDown();
            valid = false;
        } else {
            $(this).removeClass('form-control-danger');
        }
    });
    if ($('.' + form + ' .password').length) {
        if ($('.' + form + ' .password').val().length < 6) {
            $('.' + form + ' .error-message-password-length').slideDown();
            valid = false;
        }
        if (($('.' + form + ' .password').val() && $('.' + form + ' .password_confirm').val())
                && ($('.' + form + ' .password').val() !== $('.' + form + ' .password_confirm').val())) {
            $('.' + form + ' .error-message-password').slideDown();
            valid = false;
        }
    }
    if (!valid) {
        $('.' + form + ' .error-message-general').slideDown();
        return false;
    } else {
        return true;
    }
}