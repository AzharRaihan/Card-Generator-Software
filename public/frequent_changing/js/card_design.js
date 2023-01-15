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

    // Call Resize
    $(".resize").resizable({
        handles: "ne, nw, se, sw",
    });
    // Control Trigger
    $(".ui-resizable-handle-se").removeClass("ui-icon ui-icon-gripsmall-diagonal-se");
    // Draggable call
    $(".drag").draggable({
        containment: "parent",
    });
  


    // Find Class name over the selected text
    var custom_class_name = '';
    function getSelectionText() {
        var custom_class_name = "";
        if (window.getSelection) {
            custom_class_name = window.getSelection().baseNode.className;
            return custom_class_name;
        } 
    }

    function rangWrapper(param){
        let range = new Range();
        range.setStart(param, 0);
        range.setEnd(param, param.childNodes.length);
        window.getSelection().removeAllRanges();
        window.getSelection().addRange(range);
    }

    $(document).on('click', '.trigger_to_select_location', function(e){
        e.preventDefault();
        rangWrapper(this);
        custom_class_name = getSelectionText();
    });
    $(document).on('click', '.trigger_to_select_model', function(e){
        e.preventDefault();
        rangWrapper(this);
        custom_class_name = getSelectionText();
    });
    $(document).on('click', '.trigger_to_select_price', function(e){
        e.preventDefault();
        rangWrapper(this);
        custom_class_name = getSelectionText();
    });
    $(document).on('click', '.trigger_to_select_date', function(e){
        e.preventDefault();
        rangWrapper(this);
        custom_class_name = getSelectionText();
    });
    $(document).on('click', '.trigger_to_select_other', function(e){
        e.preventDefault();
        rangWrapper(this);
        custom_class_name = getSelectionText();
    });



    // Font Size Increase or Decrease
    $(document).on('change', '#font-size', function (e) { 
        e.preventDefault();
        $('.'+custom_class_name).css('font-size', $(this).val()+'px');
    });
    // Font weight Increase or Decrease
    $(document).on('change', '#font-weight', function (e) { 
        e.preventDefault();
        $('.'+custom_class_name).css('font-weight', $(this).val());
    });
    // Delete Item
    $(document).on('click', '.del_item', function(e){
        e.preventDefault();
        if(custom_class_name == 'trigger_to_select_other'){
            $('.'+custom_class_name).remove();
        }
    });
    // Add Card JS
    $(document).on('click', '.card_design_submit', function (e) { 
        e.preventDefault();
        let card_title = $('.card_title').val();
        let error = false;
		if (card_title == "") {
			error = true;
			$(".title_erro_msg_count").html(`
                <p class="erro_msg">The title field is required</p>
            `);
			$(".title_erro_msg_count").show(200);
            setTimeout(function() { 
                $(".title_erro_msg_count").html("");
            }, 4000);
		}
        if (error == false) {
            $(".ui-resizable-handle").remove();
            let certificate_val = $('.certificate-area').html();
            $.ajax({
                method: "POST",
                url: app_url+"/admin/card-design",
                data: {card_design:certificate_val, card_title:card_title},
                cache: false,
                success: function (response) {
                    if (response.status == 200){
                        window.location.href = app_url+`/admin/card-design?message=${response.message}`;
                    }
                }
            });
        } 
    });

    // Update Card
    $(document).on('click', '.card_design_update', function (e) { 
        e.preventDefault();
        let card_title = $('.card_title').val();
        let card_e = $('.card_e').val();
        let error = false;
		if (card_title == "") {
			error = true;
			$(".title_erro_msg_count").html(`
                <p class="erro_msg">The title field is required</p>
            `);
			$(".title_erro_msg_count").show(200);
            setTimeout(function() { 
                $(".title_erro_msg_count").html("");
            }, 4000);
		}
        if (error == false) {
            $(".ui-resizable-handle").remove();
            let certificate_val = $('.certificate-area').html();
            $.ajax({
                type: "POST",
                url: app_url+"/admin/card-design-update/"+card_e,
                data: {card_design:certificate_val, card_title:card_title},
				cache: false,
                success: function (response) {
                    if (response.status == 200){
                        window.location.href = app_url+`/admin/card-design?message=${response.message}`;
                    } 
                }
            });
        } 
    });



    $(document).on('change', '#card_background_id', function (e) { 
        e.preventDefault();
        let backgroud_id = $(this).val();
        $.ajax({
            type: "GET",
            url: app_url+"/admin/card-background-find/"+backgroud_id,
            dataType: "json",
            success: function (response) {
                if (response.status == 200) {
                    $('#card_background_img').html("");
                    $('#card_background_img').html(`
                        <img src="${app_url}/uploads/card-background/${response.card_id}" alt="" width="100" height="100">
                    `);
                    $('.certificate-area').css('background-image', '');
                    $('.certificate-area').css('background-image', 'url(' + app_url + '/uploads/card-background/' + response.card_id + ')');
                }
            }
        });
    });


});