(function($){
    "use strict";
    /*Common helper js functions to use all file*/
    /**
     * Display sweetalert confirmation
     */
    $( document ).ready(function() {
        let warning = 'Alert!';
        let a_error = 'Error';
        let ok = 'Ok';
        let cancel = 'Cancel';
        let are_you_sure = 'Are you sure?';

        $(".deleteRow").click(function(e) {
            e.preventDefault();
            let this_class = $(this).attr('data-form_class');
            warnBeforeRedirect(this_class);
            console.log("checker",this_class)
        });

        function warnBeforeRedirect(linkURL) {
            Swal.fire({
              title: 'Are you sure?',
              text: "You won't be able to revert this!",
              icon: 'warning',
              showCancelButton: true,
              confirmButtonColor: '#3085d6',
              cancelButtonColor: '#d33',
              confirmButtonText: 'Yes, delete it!'
            }).then((result) => {
              if (result.isConfirmed) {
                $("."+linkURL).submit();
              }
            })
        }
    });

    
})(jQuery);





