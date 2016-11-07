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
//= require cocoon
//= require dataTables/jquery.dataTables
//= require underscore
//= require_tree .

//for upload dealer reg form on dealers form
$(document).ready(function(){
// Prepare the preview for profile picture
    $("#wizard-picture").change(function(){
        readURL(this);
    });
});
function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#wizardPicturePreview').attr('src', e.target.result).fadeIn('slow');
        }
        reader.readAsDataURL(input.files[0]);
    }
}

//for upload dealer photo on dealers form
$(document).ready(function(){
// Prepare the preview for profile picture
    $("#wizard-picture1").change(function(){
        readUR(this);
    });
});
function readUR(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#wizardPicturePreview1').attr('src', e.target.result).fadeIn('slow');
        }
        reader.readAsDataURL(input.files[0]);
    }
}

//for upload fl photo on dealers form
$(document).ready(function(){
// Prepare the preview for profile picture
    $("#wizard-picture2").change(function(){
        readU(this);
    });
});
function readU(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#wizardPicturePreview2').attr('src', e.target.result).fadeIn('slow');
        }
        reader.readAsDataURL(input.files[0]);
    }
}

//for upload cst photo on dealers form
$(document).ready(function(){
// Prepare the preview for profile picture
    $("#wizard-picture3").change(function(){
        readUw(this);
    });
});
function readUw(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#wizardPicturePreview3').attr('src', e.target.result).fadeIn('slow');
        }
        reader.readAsDataURL(input.files[0]);
    }
}

//for upload sst photo on dealers form
$(document).ready(function(){
// Prepare the preview for profile picture
    $("#wizard-picture4").change(function(){
        readUwt(this);
    });
});
function readUwt(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#wizardPicturePreview4').attr('src', e.target.result).fadeIn('slow');
        }
        reader.readAsDataURL(input.files[0]);
    }
}

//for upload vat photo on dealers form
$(document).ready(function(){
// Prepare the preview for profile picture
    $("#wizard-picture5").change(function(){
        readUwtt(this);
    });
});
function readUwtt(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#wizardPicturePreview5').attr('src', e.target.result).fadeIn('slow');
        }
        reader.readAsDataURL(input.files[0]);
    }
}


//for upload pancard photo on dealers form
$(document).ready(function(){
// Prepare the preview for profile picture
    $("#wizard-picture6").change(function(){
        readUwttt(this);
    });
});
function readUwttt(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#wizardPicturePreview6').attr('src', e.target.result).fadeIn('slow');
        }
        reader.readAsDataURL(input.files[0]);
    }
}

//for the ajax call to get demonstration to appear in fa acts
$('.dropdown-toggle').dropdown()

$(document).ready(function() {
    DependentFields.bind()
});

// $(document).on("change","#field_assist",function(){
//     $.ajax({
//         url: "/demo_date/populate_dates",
//         type: "GET",
//         data: {pre_demo_id: $(this).val()}
//     })
//
// })
//
