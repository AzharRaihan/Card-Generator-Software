$(function () {
    "use-strict"
    // Define Base URL
    let app_url = $('meta[name="app-url__"]').attr('app_url__');
    $(document).on('click', '.get_design_trigger', function (e) { 
        e.preventDefault();
        let card_design_html = $(this).attr('card_design_html');
        $('#show_design').html('');
        $('#show_design').html(card_design_html);
    });

    $(document).on('click', '.card_background_trigger', function (e) { 
        e.preventDefault();
        let card_background = $(this).attr('card_background');
        $('.background-view-image').html('');
        $('.background-view-image').append(`
            <img src="${app_url}/uploads/card-background/${card_background}" alt="" width="336" height="192">
        `);
    });
});