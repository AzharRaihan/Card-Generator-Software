$(function () {
    "use strict";
   $('#till_now').on('change', function() {
        if($(this).is(":checked")) {
            $('#end_date').prop('disabled', true).removeClass("customDatepicker");
        } else {
            $('#end_date').prop('disabled', false).val('').addClass("customDatepicker");
        }
    });

});
