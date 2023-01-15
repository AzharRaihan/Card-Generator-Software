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


    // Globar Item add error Message
    let message_content = `<div class="alert alert-danger alert-dismissible fade show">
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        <div class="alert-body">
            <p>
                <i class="m-right fa fa-times"></i>
                Item con't added more than 1 time
            </p>
        </div>
    </div>`;



    // Onload Drag and Drop trigger
    $( ".drag_element" ).draggable({
        containment: "parent",
    });
    


    // Trigger Elemet, and initialize jq Drag and Drop
    $(document).on('click', '.location', function (e) {
        e.preventDefault();
        let el_count = $('#draggable_location').length;
        if (el_count == 0) {
            $('.certificate-area').append(`
                <div id="draggable_location" class="drag_element">
                    <span class="f-resize-location">Location</span>
                </div>
            `);
            $( ".drag_element" ).draggable({
                containment: "parent",
            });
        } else {
            $('#message').append(message_content);
            setTimeout(function() { 
                $("#message").html("");
            }, 2000);
        }
    });
    $(document).on('click', '.model', function (e) {
        e.preventDefault();
        let el_count = $('#draggable_model').length;
        if (el_count == 0) {
            $('.certificate-area').append(`
                <div id="draggable_model" class="drag_element">
                    <span class="f-resize-model">Model</span>
                </div>
            `);
            $( ".drag_element" ).draggable({
                containment: "parent",
            });
        } else {
            $('#message').append(message_content);
            setTimeout(function() { 
                $("#message").html("");
            }, 2000);
        }
    });
    $(document).on('click', '.price', function (e) {
        e.preventDefault();
        let el_count = $('#draggable_price').length;
        if (el_count == 0) {
            $('.certificate-area').append(`
                <div id="draggable_price" class="drag_element">
                    <span class="f-resize-price">Price</span>
                </div>
            `);
            $( ".drag_element" ).draggable({
                containment: "parent",
            });
        } else {
            $('#message').append(message_content);
            setTimeout(function() { 
                $("#message").html("");
            }, 2000);
        }
    });
    $(document).on('click', '.date_range', function (e) {
        e.preventDefault();
        let el_count = $('#draggable_date_range').length;
        if (el_count == 0) {
            $('.certificate-area').append(`
                <div id="draggable_date_range" class="drag_element">
                    <span class="f-resize-date-range">Date Range</span>
                </div>
            `);
            $( ".drag_element" ).draggable({
                containment: "parent",
            });
        } else {
            $('#message').append(message_content);
            setTimeout(function() { 
                $("#message").html("");
            }, 2000);
        }
    });
    $(document).on('click', '.qr_code', function (e) {
        e.preventDefault();
        let el_count = $('#draggable_qr_code').length;
        if (el_count == 0) {
            $('.certificate-area').append(`
                <div id="draggable_qr_code" class="drag_element">
                    <span class="f-resize-qr-code">QR-Code</span>
                </div>
            `);
            $( ".drag_element" ).draggable({
                containment: "parent",
            });
        } else {
            $('#message').append(message_content);
            setTimeout(function() { 
                $("#message").html("");
            }, 2000);
        }
    });
    $(document).on('click', '.other', function (e) {
        e.preventDefault();
        let el_count = $('#draggable_other').length;
        if (el_count == 0) {
            $('.certificate-area').append(`
                <div id="draggable_other" class="drag_element">
                    <span class="f-resize-other">Other</span>
                </div>
            `);
            $( ".drag_element" ).draggable({
                containment: "parent",
            });
        } else {
            $('#message').append(message_content);
            setTimeout(function() { 
                $("#message").html("");
            }, 2000);
        }
    });


    // Find Class name over the selected text
    var custom_class_name = '';
    function getSelectionText() {
        var custom_class_name = "";
        if (window.getSelection) {
            custom_class_name = window.getSelection().baseNode.parentNode.className;
            return custom_class_name;
        } 
    }
    $('.certificate-area').on("mouseup", function () {
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
        $('.'+custom_class_name).remove();
    });


    // Trigger Reset Button
    $(document).on('click', '.reset-trigger', function(e){
        e.preventDefault();
        $('.certificate-area').html('');
    });


    // Add Card JS
    $(document).on('click', '.card_design_submit', function (e) { 
        e.preventDefault();
        let card_title = $('.card_title').val();
        let card_background_id  = $('#card_background_id').val();
        let certificate_val = $('.certificate-area').html(); 
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
		if (certificate_val == 0) {
            error = true;
			$(".certificate_erro_msg_count").html(`
                <p class="erro_msg">The certificate field is required</p>
            `);
			$(".certificate_erro_msg_count").show(200);
            setTimeout(function() { 
                $(".certificate_erro_msg_count").html("");
            }, 4000);
		}
        if (error == false) {
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
        let certificate_val = $('.certificate-area').html();
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
		if (certificate_val == 0) {
            error = true;
			$(".certificate_erro_msg_count").html(`
                <p class="erro_msg">The certificate field is required</p>
            `);
			$(".certificate_erro_msg_count").show(200);
            setTimeout(function() { 
                $(".certificate_erro_msg_count").html("");
            }, 4000);
		}
        if (error == false) {
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


    // $(document).on('click', '.f-resize-location', function(e){
    //     e.preventDefault();
    //     let range = new Range();
    //     range.setStart(this, 0);
    //     range.setEnd(this, this.childNodes.length);
    //     window.getSelection().removeAllRanges();
    //     window.getSelection().addRange(range);
    //     custom_class_name = getSelectionText();
    // });
    




});