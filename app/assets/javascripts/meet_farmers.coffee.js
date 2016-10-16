
$(document).on("change","#meet_farmer_purpose",function(){
    if ($("#meet_farmer_purpose").find('option:selected').val() == "consultation")
    {
        $("#meet_farmer_consultation_div").show();
    }
    else{
        $("#meet_farmer_consultation_div").hide();
    }
})