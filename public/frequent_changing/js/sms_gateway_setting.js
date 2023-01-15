$(document).on('change', '#sms_gateway', function() {
    let gateway = $(this).val();

    if(gateway === "Mobishastra") {
        $('#mobishastra_form').removeClass("displayNone");
        $('#nexmo_form').addClass("displayNone");
        $('#twilio_form').addClass("displayNone");
    } else if(gateway === "Nexmo") {
        $('#nexmo_form').removeClass("displayNone");
        $('#mobishastra_form').addClass("displayNone");
        $('#twilio_form').addClass("displayNone");
    } else if(gateway === "Twilio") {
        $('#twilio_form').removeClass("displayNone");
        $('#mobishastra_form').addClass("displayNone");
        $('#nexmo_form').addClass("displayNone");
    } else {
        $('#mobishastra_form').removeClass("displayNone");
        $('#nexmo_form').addClass("displayNone");
        $('#twilio_form').addClass("displayNone");
    }
});

 $(document).ready(function (){
    let gateway = $('#sms_gateway').val();

    if(gateway === "Mobishastra") {
        $('#mobishastra_form').removeClass("displayNone");
        $('#nexmo_form').addClass("displayNone");
        $('#twilio_form').addClass("displayNone");
    } else if(gateway === "Nexmo") {
        $('#nexmo_form').removeClass("displayNone");
        $('#mobishastra_form').addClass("displayNone");
        $('#twilio_form').addClass("displayNone");
    } else if(gateway === "Twilio") {
        $('#twilio_form').removeClass("displayNone");
        $('#mobishastra_form').addClass("displayNone");
        $('#nexmo_form').addClass("displayNone");
    } else {
        $('#mobishastra_form').removeClass("displayNone");
        $('#nexmo_form').addClass("displayNone");
        $('#twilio_form').addClass("displayNone");
    }
});


