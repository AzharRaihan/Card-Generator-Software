$(function () {
    "use strict";
   $('.set_collapse').on('click', function() {
      let status = Number($(this).attr("data-status"));
      let status_tmp = '';
      if(status === 1){
          $(this).attr('data-status',2);
          status_tmp = "No";
      } else{
          $(this).attr('data-status',1);
          status_tmp = "Yes";
      }
      axios.get('/set-collapse?status=' + status_tmp);
  });

});
