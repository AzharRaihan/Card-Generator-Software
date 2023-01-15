jQuery(document).ready(function($) {
    "use strict";
    let warning = $("#warning").val();
    let a_error = $("#a_error").val();
    let ok = $("#ok").val();
    let cancel = $("#cancel").val();
    let are_you_sure = $("#are_you_sure").val();

    $('.select2').select2();
    $(".delete").click(function(e) {
        e.preventDefault();
        let linkURL = this.href;
        warnBeforeRedirect(linkURL);
    });

    function warnBeforeRedirect(linkURL) {
        swal({
            title: warning+"!",
            text: are_you_sure+"?",
            cancelButtonText: cancel,
            confirmButtonText: ok,
            confirmButtonColor: '#3c8dbc',
            showCancelButton: true
        }, function() {
            window.location.href = linkURL;
        });
    }
    //iCheck for checkbox and radio inputs
    $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
        checkboxClass: 'icheckbox_minimal-blue',
        radioClass: 'iradio_minimal-blue'
    })


    $(document).on('keydown', '.integerchk', function(e) {
         let keys = e.charCode || e.keyCode || 0;
        return (
            keys == 8 ||
            keys == 9 ||
            keys == 13 ||
            keys == 46 ||
            keys == 110 ||
            keys == 86 ||
            keys == 190 ||
            (keys >= 35 && keys <= 40) ||
            (keys >= 48 && keys <= 57) ||
            (keys >= 96 && keys <= 105));
    });

    $(document).on('keyup', '.integerchk', function(e) {
        let ir_precision_integ = 2;

        let input = $(this).val();
        let ponto = input.split('.').length;
        let slash = input.split('-').length;
        if (ponto > 2)
            $(this).val(input.substr(0, (input.length) - 1));
            $(this).val(input.replace(/[^0-9]/, ''));
        if (slash > 2)
            $(this).val(input.substr(0, (input.length) - 1));
        if (ponto == 2)
            $(this).val(input.substr(0, (input.indexOf('.') + (Number(ir_precision_integ)+1))));
    });

    //Date picker
    $('#date').datepicker({
        format: 'yyyy-mm-dd',
        autoclose: true
    });
    $('#dates2').datepicker({
        format: 'yyyy-mm-dd',
        autoclose: true
    });
    $('.customDatepicker').datepicker({
        format: 'yyyy-mm-dd',
        autoclose: true
    });
    $('.end_date_today').datepicker({
        format: 'yyyy-mm-dd',
        autoclose: true,
        endDate: '+0d',
    });

    $('.start_date_today').datepicker({
        format: 'yyyy-mm-dd',
        autoclose: true,
        startDate:'0'
    });



    $('.start_date_dose_1').datepicker({
        format: 'yyyy-mm-dd',
        autoclose: true,
        startDate:'2020-12-01'
    }).on('changeDate', function(selected) {
        let startDate = new Date(selected.date.valueOf());
        let endDate = new Date(startDate);
        endDate = new Date(endDate.setDate(endDate.getDate() + 21));

        let dd = endDate.getDate();
        let mm = endDate.getMonth() + 1; //January is 0!
        let yyyy = endDate.getFullYear();
        if (dd < 10) {
            dd = "0" + dd;
        }
        if (mm < 10) {
            mm = "0" + mm;
        }
        let end_date = yyyy + "-" + mm + "-" + dd;
        $('.start_date_dose_2').datepicker('setStartDate', endDate);
        $('#dose_2_date').val('');
    });
    $('.start_date_dose_2').datepicker({
        format: 'yyyy-mm-dd',
        autoclose: true,
        startDate:'2020-12-01'
    });


    $('.max_two_days_only').datepicker({
        format: 'yyyy-mm-dd',
        autoclose: true,
        startDate:'0',
        endDate: '+2d',
    }).on('changeDate', function(selected) {
        let startDate = new Date(selected.date.valueOf());
        let endDate = new Date(startDate);
        endDate = new Date(endDate.setDate(endDate.getDate() + 1));

        let dd = endDate.getDate();
        let mm = endDate.getMonth() + 1; //January is 0!
        let yyyy = endDate.getFullYear();
        if (dd < 10) {
            dd = "0" + dd;
        }
        if (mm < 10) {
            mm = "0" + mm;
        }
        let end_date = yyyy + "-" + mm + "-" + dd;
        $('.verification_date_tmp').datepicker('setStartDate', startDate);
        $('.verification_date_tmp').datepicker('setEndDate', endDate);
        $('#verification_date').val('');
    });
    $('.verification_date_tmp').datepicker({
        format: 'yyyy-mm-dd',
        autoclose: true,
        startDate:'2020-12-01'
    });



    $(".datepicker_months").datepicker({
        format: 'yyyy-M',
        autoclose: true,
        viewMode: "months",
        minViewMode: "months"
    });

    let today = new Date();
    let dd = today.getDate();
    let mm = today.getMonth() + 1; //January is 0!
    let yyyy = today.getFullYear();

    if (dd < 10) {
        dd = '0' + dd;
    }

    if (mm < 10) {
        mm = '0' + mm;
    }
    today = yyyy + '-' + mm + '-' + dd;
});


