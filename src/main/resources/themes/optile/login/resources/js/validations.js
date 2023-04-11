$(function() {
    /*==================================================================
    [ Input password strength checker ]*/
    const NOT_STRONG_ENOUGH = 'not strong enough';
    const PERFECT = 'perfect';
    $('#password-new').keyup(function () {  
        $('#strength-label').html(checkStrength($('#password-new').val()))  
    })  
    function checkStrength(password) {  
        if (new RegExp('(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[^A-Za-z0-9])(?=.{10,})').test(password)) {  
            $('#strength-label').removeClass()  
            $('#strength-label').addClass('strong')  
            return PERFECT;
        } else {  
            $('#strength-label').removeClass();
            return NOT_STRONG_ENOUGH;
        }  
    }  
    
    /*==================================================================
    [ Validate reset password form ]*/
    $( "#kc-passwd-update-form" ).validate({
            rules: {
                "password-new": {
                    required: true,
                    minlength: 10
                },
                "password-confirm": {
                    required: true,
                    equalTo: "#password-new"
                },
            },
            messages: {
                "password-new": {
                    required: "This field is required!",
                    minlength: ""
                },
                "password-confirm": {
                    required: "This field is required!",
                    equalTo: "Passwords do not match!"
                },
            },
            errorElement: "label",
            errorPlacement: function (error, element) {
                error.addClass( "helper-text" );
                error.insertAfter(element.parent( "div"));
            },
            highlight: function ( element, errorClass, validClass ) {
                $(element).addClass("is-invalid");
            },
            unhighlight: function (element, errorClass, validClass) {
                $(element).removeClass("is-invalid");
            },
            onfocusout: function(element) {
                $(element).valid();
            },
    });

    /*==================================================================
    [ Validate reset password form ]*/
    $( "#kc-reset-password-form" ).validate({
        rules: {
            "username": {
                required: true,
                email: true
            },
        },
        messages: {
            "username": {
                required: "This field is required!",
                email: "Invalid email"
            },
        },
        errorElement: "label",
        errorPlacement: function (error, element) {
            error.addClass( "helper-text" );
            error.insertAfter(element.parent( "div"));
        },
        highlight: function ( element, errorClass, validClass ) {
            $(element).addClass("is-invalid");
        },
        unhighlight: function (element, errorClass, validClass) {
            $(element).removeClass("is-invalid");
        },
        onfocusout: function(element) {
            $(element).valid();
        },
});

        /*==================================================================
    [ Validate login form ]*/
    $( "#kc-form-login" ).validate({
        rules: {
            "username": {
                required: true,
                email: true
            },
            "password": {
                required: true
            },
        },
        messages: {
            "username": {
                required: "This field is required!",
                email: "Invalid email"
            },
            "password": {
                required: "This field is required!"
            },
        },
        errorElement: "label",
        errorPlacement: function (error, element) {
            error.addClass( "helper-text" );
            error.insertAfter(element.parent( "div"));
        },
        highlight: function ( element, errorClass, validClass ) {
            $(element).addClass("is-invalid");
        },
        unhighlight: function (element, errorClass, validClass) {
            $(element).removeClass("is-invalid");
        },
        onfocusout: function(element) {
            $(element).valid();
        },
});
});