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
                let response_r = response.actual_item;
                $('#preview').html("");
                for (let key in response_r) {
                    $("#preview").append(`
                        <div class="certificate-area padding_10" style="background-image: url(${app_url}/${response.background_id})">
                            ${response_r[key]}
                        </div>
                    `);
                }
                $('.generate_btn').html('');
                $(".generate_btn").append(`
                    <div class="d-flex mt-4">
                        <button type="submit" class="btn bg-blue-btn me-3">Save Ad PDF</button>
                        <button class="btn bg-blue-btn">Save Ad PNG/JPG</button>
                    </div>
                `);
            }
        });
        
    });



    $(document).on('change', '#item_id', function (e) { 
        e.preventDefault();
        let item_id = $(this).val();
        $('.item_id_for_gen_pdf').val('');
        $('.item_id_for_gen_pdf').val(item_id);
    });

    $(document).on('change', '#design_id', function (e) { 
        e.preventDefault();
        let design_id = $(this).val();
        $('.design_id_for_gen_pdf').val('');
        $('.design_id_for_gen_pdf').val(design_id);
    });
    $(document).on('change', '#background_id', function (e) { 
        e.preventDefault();
        let background_id = $(this).val();
        $('.background_id_for_gen_pdf').val('');
        $('.background_id_for_gen_pdf').val(background_id);
    });
    
});