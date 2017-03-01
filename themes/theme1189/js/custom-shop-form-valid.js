function formValidators(form) {
    form.find('.required').on('select', function () {
        form.find('.error-message-empty-field').slideUp();
    });
    form.find('.required').on('focusout', function () {
        if ($(this).val()) {
            $(this).removeClass('form-control-danger');
        }
        form.find('.required').each(function () {
            if (form.find('.form-control-danger').length === 0) {
                form.find('.error-message-empty-field').slideUp();
            }
        });
    });
    if (form.find('.email').length) {
        form.find('.email').on('focusout', function () {
            if ($(this).val()) {
                if (isEmail($(this).val())) {
                    $(this).removeClass('form-control-danger');
                    form.find('.error-message-email').slideUp();
                } else {
                    $(this).addClass('form-control-danger');
                    form.find('.error-message-email').slideDown();
                }
            }
        });
    }
    if (form.find('.shop_name').length) {
        form.find('.shop_name').on('keyup', function () {
            if (event.keyCode !== 9) {
                if (isShopname($(this).val())) {
                    $(this).removeClass('form-control-danger');
                    form.find('.error-message-shopname').slideUp();
                } else {
                    $(this).addClass('form-control-danger');
                    form.find('.error-message-shopname').slideDown();
                }
            }
        });
    }
    if (form.find('.password').length) {
        form.find('.password').on('keyup', function () {
            if ($(this).val().length >= 6) {
                $(this).removeClass('form-control-danger');
                form.find('.error-message-password-length').slideUp();
            }
        });
        form.find('.password').on('focusout', function () {
            if ($(this).val()) {
                if (form.find('.password').val().length < 6) {
                    $(this).addClass('form-control-danger');
                    form.find('.error-message-password-length').slideDown();
                } else {
                    $(this).removeClass('form-control-danger');
                    form.find('.error-message-password-length').slideUp();
                }
            }
        });
        form.find('.confirm_password').on('keyup', function () {
            if ((form.find('.password').val() && $(this).val())
                    && (form.find('.password').val() === $(this).val())) {
                $(this).removeClass('form-control-danger');
                form.find('.error-message-password').slideUp();
            }
        });
        form.find('.confirm_password').on('focusout', function () {
            if ((form.find('.password').val() && $(this).val())
                    && (form.find('.password').val() !== $(this).val())) {
                $(this).addClass('form-control-danger');
                form.find('.error-message-password').slideDown();
            } else {
                $(this).removeClass('form-control-danger');
                form.find('.error-message-password').slideUp();
            }
        });
    }
}
function formSubmitValidator(form) {
    var valid = true;
    form.find('.error-message').slideUp();
    form.find('.required').each(function () {
        if ($(this).hasClass('required') && !$(this).val()) {
            $(this).addClass('form-control-danger');
            form.find('.error-message-empty-field').slideDown();
            valid = false;
        } else {
            $(this).removeClass('form-control-danger');
        }
    });
    if (form.find('.password').length && form.find('.password').val()) {
        if (form.find('.password').val().length < 6) {
            form.find('.error-message-password-length').slideDown();
            valid = false;
        }
        if ((form.find('.password').val() && form.find('.password_confirm').val())
                && (form.find('.password').val() !== form.find('.password_confirm').val())) {
            form.find('.error-message-password').slideDown();
            valid = false;
        }
    }
    if (!valid) {
        form.find('.error-message-general').slideDown();
        return false;
    } else {
        return true;
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