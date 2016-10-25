// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui/datepicker
//= require bootstrap-datepicker

//= require bootstrap
//= require jquery-ui/datepicker
//= require bootstrap
//= require cocoon
//= require bootstrap-multiselect
//= require_tree .

$('.dropdown-toggle').dropdown()

$(document).on("change","#field_assist",function(){
    $.ajax({
        url: "/demo_date/populate_dates",
        type: "GET",
        data: {pre_demo_id: $(this).val()}
    })

})
