$( document ).ready(function() {
    "use strict";
    $(document).on('click', '.print_invoice', function() {
        let event = this;
        const payment_id = $(event).attr('id')

        $.ajax({
            method: 'GET',
            // url: "/admin/print-payment-invoice/"+payment_id,
            url: "/print-payment-invoice/"+payment_id,
            success: function(response){
                var winPrint = window.open('', '_blank');
                winPrint.document.write(response);
                winPrint.document.close();
                winPrint.focus();
                setTimeout(()=> {
                    winPrint.print();
                    winPrint.close();
                }, 100)
            }
        });
    });

    $(document).on('change', '#student_id', function() {
        let event = this;
        const student_id = $('#student_id').val();

        $.ajax({
            method: 'GET',
            url: "/student-wise-plans/"+student_id,
            success: function(response){
                var list = response.data;
                var select = document.getElementById("plan_id");
                let i = 0;
                for(i = 0; i < list.length ;i ++){
                    var el = document.createElement("option");
                    var plan = list[i];
                    var planTitle = plan.plan_title;
                    var planId = plan.id;
                    el.textContent = planTitle;
                    el.value = planId;
                    select.appendChild(el);
                }
            }
        });
    });
});
