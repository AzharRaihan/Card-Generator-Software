$(function () {
    "use-strict"

    // Define Base URL
    let app_url = $('meta[name="app-url__"]').attr('app_url__');
    // Global Ajax Setup
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });



    $(document).on('click', '.preview_card_generate', function (e) { 
        e.preventDefault();
        let item_id = $("#item_id").val();
        let design_id = $("#design_id").val();
        let background_id = $("#background_id").val();

        $.ajax({
            type: "POST",
            url: app_url+"/admin/card-generate",
            data: {item_id:item_id, design_id:design_id, background_id:background_id},
            dataType: "json",
            success: function (response) {
                
            }
        });
        
    });
    
});