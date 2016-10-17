# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $('#fa_activity_date').datepicker
    dateFormat: "yy-mm-dd"



jQuery ->
  $('#fa_activity_activity').on "change",  ->
    if $(this).val() is "meet_farmers"
      $('#meet_farm_sele').fadeIn()
    else
      $('#meet_farm_sele').fadeOut()

#meet farmer drop down
jQuery ->
  $('#fa_activity_meet_farmers_attributes_0_purpose').on "change", ->
    if $(this).val() is "consultation"
      $('#meet_farmer_consultation_div').fadeIn()
    else
      $('#meet_farmer_consultation_div').fadeOut()

#meet farmer drop down
jQuery ->
  $('#fa_activity_meet_farmers_attributes_0_purpose').on "change", ->
    if $(this).val() is "product_prescription"
      $('#prod_pres_sele').fadeIn()
    else
      $('#prod_pres_sele').fadeOut()

#fa act dropdown
jQuery ->
  $('#fa_activity_activity').on "change",  ->
    if $(this).val() is "visit_dealer"
      $('#dealer_shop').fadeIn()
    else
      $('#dealer_shop').fadeOut()

#interacting with farmer
jQuery ->
  $('#fa_activity_dealer_visits_attributes_0_purpose').on "change", ->
    if $(this).val() is "interact_farmers"
      $('#interact-farm').fadeIn()
    else
      $('#interact-farm').fadeOut()


#misc other
jQuery ->
  $('#fa_activity_activity').on "change",  ->
    if $(this).val() is "misc"
      $('#act_comment').fadeIn()
    else
      $('#act_comment').fadeOut()




#assist sr drop down
jQuery ->
  $('#fa_activity_activity').on "change",  ->
    if $(this).val() is "assist_sr"
      $('#assist_mvc').fadeIn()
    else
      $('#assist_mvc').fadeOut()



#assist sr comments
jQuery ->
  $('#fa_activity_assist_reps_attributes_0_assist').on "change", ->
    if $(this).val() is "other"
      $('#assist_comment').fadeIn()
    else
      $('#assist_comment').fadeOut()


#when I do the invetory check act
jQuery ->
  $('#fa_activity_dealer_visits_attributes_0_purpose').on "change", ->
    if $(this).val() is "inventory_check"
      $('#inventory_checker').fadeIn()
    else
      $('#inventory_checker').fadeOut()

#number of farmers met
jQuery ->
  $('#fa_activity_meet_farmers_attributes_0_number_farmer').on "change", ->
    if $(this).val() is "1"
      $('#farm_met_1').fadeIn()
      $('#farm_met_2').fadeOut()
      $('#farm_met_3').fadeOut()
      $('#farm_met_4').fadeOut()
      $('#farm_met_5').fadeOut()
      $('#farm_met_6').fadeOut()
      $('#farm_met_7').fadeOut()
      $('#farm_met_8').fadeOut()
      $('#farm_met_9').fadeOut()
      $('#farm_met_10').fadeOut()
    else if $(this).val() is ""
      $('#farm_met_1').fadeOut()
      $('#farm_met_2').fadeOut()
      $('#farm_met_3').fadeOut()
      $('#farm_met_4').fadeOut()
      $('#farm_met_5').fadeOut()
      $('#farm_met_6').fadeOut()
      $('#farm_met_7').fadeOut()
      $('#farm_met_8').fadeOut()
      $('#farm_met_9').fadeOut()
      $('#farm_met_10').fadeOut()
    if $(this).val() is "2"
      $('#farm_met_1').fadeIn()
      $('#farm_met_2').fadeIn()
      $('#farm_met_3').fadeOut()
      $('#farm_met_4').fadeOut()
      $('#farm_met_5').fadeOut()
      $('#farm_met_6').fadeOut()
      $('#farm_met_7').fadeOut()
      $('#farm_met_8').fadeOut()
      $('#farm_met_9').fadeOut()
      $('#farm_met_10').fadeOut()
    if $(this).val() is "3"
      $('#farm_met_1').fadeIn()
      $('#farm_met_2').fadeIn()
      $('#farm_met_3').fadeIn()
      $('#farm_met_4').fadeOut()
      $('#farm_met_5').fadeOut()
      $('#farm_met_6').fadeOut()
      $('#farm_met_7').fadeOut()
      $('#farm_met_8').fadeOut()
      $('#farm_met_9').fadeOut()
      $('#farm_met_10').fadeOut()
    if $(this).val() is "4"
      $('#farm_met_1').fadeIn()
      $('#farm_met_2').fadeIn()
      $('#farm_met_3').fadeIn()
      $('#farm_met_4').fadeIn()
      $('#farm_met_5').fadeOut()
      $('#farm_met_6').fadeOut()
      $('#farm_met_7').fadeOut()
      $('#farm_met_8').fadeOut()
      $('#farm_met_9').fadeOut()
      $('#farm_met_10').fadeOut()
    if $(this).val() is "5"
      $('#farm_met_1').fadeIn()
      $('#farm_met_2').fadeIn()
      $('#farm_met_3').fadeIn()
      $('#farm_met_4').fadeIn()
      $('#farm_met_5').fadeIn()
      $('#farm_met_6').fadeOut()
      $('#farm_met_7').fadeOut()
      $('#farm_met_8').fadeOut()
      $('#farm_met_9').fadeOut()
      $('#farm_met_10').fadeOut()
    if $(this).val() is "6"
      $('#farm_met_1').fadeIn()
      $('#farm_met_2').fadeIn()
      $('#farm_met_3').fadeIn()
      $('#farm_met_4').fadeIn()
      $('#farm_met_5').fadeIn()
      $('#farm_met_6').fadeIn()
      $('#farm_met_7').fadeOut()
      $('#farm_met_8').fadeOut()
      $('#farm_met_9').fadeOut()
      $('#farm_met_10').fadeOut()
    if $(this).val() is "7"
      $('#farm_met_1').fadeIn()
      $('#farm_met_2').fadeIn()
      $('#farm_met_3').fadeIn()
      $('#farm_met_4').fadeIn()
      $('#farm_met_5').fadeIn()
      $('#farm_met_6').fadeIn()
      $('#farm_met_7').fadeIn()
      $('#farm_met_8').fadeOut()
      $('#farm_met_9').fadeOut()
      $('#farm_met_10').fadeOut()
    if $(this).val() is "8"
      $('#farm_met_1').fadeIn()
      $('#farm_met_2').fadeIn()
      $('#farm_met_3').fadeIn()
      $('#farm_met_4').fadeIn()
      $('#farm_met_5').fadeIn()
      $('#farm_met_6').fadeIn()
      $('#farm_met_7').fadeIn()
      $('#farm_met_8').fadeIn()
      $('#farm_met_9').fadeOut()
      $('#farm_met_10').fadeOut()
    if $(this).val() is "9"
      $('#farm_met_1').fadeIn()
      $('#farm_met_2').fadeIn()
      $('#farm_met_3').fadeIn()
      $('#farm_met_4').fadeIn()
      $('#farm_met_5').fadeIn()
      $('#farm_met_6').fadeIn()
      $('#farm_met_7').fadeIn()
      $('#farm_met_8').fadeIn()
      $('#farm_met_9').fadeIn()
      $('#farm_met_10').fadeOut()
    if $(this).val() is "10"
      $('#farm_met_1').fadeIn()
      $('#farm_met_2').fadeIn()
      $('#farm_met_3').fadeIn()
      $('#farm_met_4').fadeIn()
      $('#farm_met_5').fadeIn()
      $('#farm_met_6').fadeIn()
      $('#farm_met_7').fadeIn()
      $('#farm_met_8').fadeIn()
      $('#farm_met_9').fadeIn()
      $('#farm_met_10').fadeIn()

