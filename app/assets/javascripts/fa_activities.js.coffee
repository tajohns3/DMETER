# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $('#fa_activity_date').datepicker
    dateFormat: "yy-mm-dd"



jQuery ->
  $('#fa_activity_activity').on "change",  ->
    if $(this).val() is "meet_farmers"
      $('#meet_farm_sele').fadeToggle()


jQuery ->
  $('#fa_activity_meet_farmers_attributes_0_purpose').on "change", ->
    if $(this).val() is "consultation"
      $('#meet_farmer_consultation_div').fadeToggle()


jQuery ->
  $('#fa_activity_meet_farmers_attributes_0_purpose').on "change", ->
    if $(this).val() is "product_prescription"
      $('#prod_pres_sele').fadeToggle()