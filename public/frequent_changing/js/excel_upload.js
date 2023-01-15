$(function () {
    "use-strict"

    $(document).on('click', '.remove_item_trigger', function (e) { 
        e.preventDefault();
        let item_id = $('.card_item_id').val();
        let decrease_val = item_id - 1;
        $('.card_item_id').val(decrease_val);
        $(this).parent().parent().remove();
    });

    $(document).on('click', '.add_item_trigger', function (e) { 
        e.preventDefault();
        let item_id = parseInt($('.card_item_id').val());
        let increase_val = item_id + 1;
        $('.card_item_id').val(increase_val);
        let  rowCount = $('.select_body tr').length;
        if ( rowCount < 12){
            $('.select_body').append(`
            <tr>
                <td><input required type="text" class="form-control" name="location[]" placeholder=""></td>
                <td><input required type="text" class="form-control" name="model[]" placeholder=""></td>
                <td><input required type="text" class="form-control" name="price[]" placeholder=""></td>
                <td><input required type="text" class="form-control" name="date_range[]" placeholder=""></td>
                <td><input required type="text" class="form-control" name="qr_code[]" placeholder=""></td>
                <td><input required type="text" class="form-control" name="other[]" placeholder=""></td>
                <td><button type="button" class="btn btn-danger remove_item_trigger"><i class="fa fa-trash tiny-icon"></i></button></td>
            </tr>
            `);
        }else{
            $('#message').html("");
            $('#message').append(`
            <div class="alert alert-danger alert-dismissible fade show">
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                <div class="alert-body">
                    <p>
                        <i class="m-right fa fa-times"></i>
                        Item can't be inserted more than 12.
                    </p>
                </div>
            </div>
            `);
        }



        
    });



});