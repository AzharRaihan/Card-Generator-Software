(function($){
    "use strict";

    $(document).on('change', '#category', function() {
        const category_id = $('#category').val();
        $('#subcategory') .find('option') .remove() .end() .append('<option value="">Select Subcategory</option>');
        $.ajax({
            method: 'GET',
            url: "/api/category-wise-subcategories/"+category_id,
            success: function(response){
                var list = response;
                var select = document.getElementById("subcategory");
                let i = 0;
                for(i = 0; i < list.length ;i ++){
                    var el = document.createElement("option");
                    var category = list[i];
                    var categoryTitle = category.title;
                    var categoryId = category.id;
                    el.textContent = categoryTitle;
                    el.value = categoryId;
                    select.appendChild(el);
                }
            }
        });
    });

    $(document).on('change', '#brand', function() {
        const brand_id = $('#brand').val();
        $('#series') .find('option') .remove() .end() .append('<option value="">Select Series</option>');
        $.ajax({
            method: 'GET',
            url: "/api/brand-wise-serieses/"+brand_id,
            success: function(response){
                var list = response;
                var select = document.getElementById("series");
                let i = 0;
                for(i = 0; i < list.length ;i ++){
                    var el = document.createElement("option");
                    var series = list[i];
                    var seriesTitle = series.title;
                    var seriesId = series.id;
                    el.textContent = seriesTitle;
                    el.value = seriesId;
                    select.appendChild(el);
                }
            }
        });
    });

})(jQuery);
