(function($){
    "use strict";

    $(document).on('change', '#district', function() {
        const district_id = $('#district').val();
        $('#upazila') .find('option') .remove() .end() .append('<option value="">Select Upazila</option>');
        $.ajax({
            method: 'GET',
            url: "/api/district-wise-upazilas/"+district_id,
            success: function(response){
                var list = response;
                var select = document.getElementById("upazila");
                let i = 0;
                for(i = 0; i < list.length ;i ++){
                    var el = document.createElement("option");
                    var upazila = list[i];
                    var upazilaTitle = upazila.title;
                    var upazilaId = upazila.id;
                    el.textContent = upazilaTitle;
                    el.value = upazilaId;
                    select.appendChild(el);
                }
            }
        });
    });

})(jQuery);
