$(document).ready(function () {
    $('body').on('click', '#SubmitLogin', function (e) {
        e.preventDefault();
        submitLoginFunction($(this).parents('form'));
    });
});

function submitLoginFunction(form) {
    $.ajax({
        type: 'POST',
        url: baseUri,
        async: true,
        cache: false,
        dataType: "json",
        data: {
            controller: 'authentication',
            SubmitLogin: 1,
            ajax: true,
            email: form.find('#email').val(),
            passwd: form.find('#passwd').val(),
            token: token
        },
        success: function (jsonData) {
            if (jsonData.hasError) {
                var errors = '';
                for (error in jsonData.errors)
                    if (error != 'indexOf')
                        errors += '<li>' + jsonData.errors[error] + '</li>';
                form.find('#create_header_account_error').html('<ol>' + errors + '</ol>').slideDown();
            } else {
                document.location.reload();
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            error = "TECHNICAL ERROR: unable to load form.\n\nDetails:\nError thrown: " + XMLHttpRequest + "\n" + 'Text status: ' + textStatus;
            alert(error);
        }
    });
}