$(function () {
    "use-strict"
    // Define Base URL
    let app_url = $('meta[name="app-url__"]').attr('app_url__');
    $(document).on('click', '.get_design_trigger', function (e) { 
        e.preventDefault();
        let card_design_html = $(this).attr('card_design_html');
        let image = `<img src="${app_url}/frequent_changing/upload-demo/qrcode.png" width="50" height="50">`;
        let card_design_result = card_design_html.replace('qrcode-position', image);
        $('#show_design').html('');
        $('#show_design').html(card_design_result);
    });

    $(document).on('click', '.card_background_trigger', function (e) { 
        e.preventDefault();
        let card_background = $(this).attr('card_background');
        $('.background-view-image').html('');
        $('.background-view-image').append(`
            <img src="${app_url}/${card_background}" alt="" width="336" height="192">
        `);
    });
});