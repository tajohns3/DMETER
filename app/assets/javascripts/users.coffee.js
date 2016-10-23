$(document).on("change","#user_location",function(){
   if ($("#user_location").find('option:selected').val() !== "field_staff")
{
    $("#role_select").hide();
}
else{
    $("#role_select").show();
}
})