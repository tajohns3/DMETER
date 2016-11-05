# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


jQuery ->
  $('#fa_activity_activity').on "change",  ->
    if $(this).val() is "meet_farmers"
      $('#meet_farm_sele').fadeIn()
      $('#demonstrations_button').fadeOut()
    else
      $('#meet_farm_sele').fadeOut()
      $('#demo_submit').fadeIn()
$('#demonstrations_button').fadeOut()
#meet farmer drop down
jQuery ->
  $('#fa_activity_meet_farmers_attributes_0_purpose').on "change", ->
    if $(this).val() is "consultation"
      $('#meet_farmer_consultation_div').fadeIn()
      $('#demonstrations_button').fadeOut()
    else
      $('#meet_farmer_consultation_div').fadeOut()
      $('#demonstrations_button').fadeOut()

#meet farmer drop down
jQuery ->
  $('#fa_activity_meet_farmers_attributes_0_purpose').on "change", ->
    if $(this).val() is "product_prescription"
      $('#prod_pres_sele').fadeIn()
      $('#demonstrations_button').fadeOut()
    else
      $('#prod_pres_sele').fadeOut()
      $('#demonstrations_button').fadeOut()


#meet farmer drop down pre demo
jQuery ->
  $('#fa_activity_meet_farmers_attributes_0_purpose').on "change", ->
    if $(this).val() is "pre_demonstration"
      $('#demo_meeting').fadeIn()
      $('#demonstrations_button').fadeOut()
    else
      $('#demo_meeting').fadeOut()
      $('#demonstrations_button').fadeOut()

jQuery ->
  $('#fa_activity_meet_farmers_attributes_0_purpose').on "change", ->
    if $(this).val() is "demonstration"
      $('#pop_forms').fadeIn()
      $('#demonstrations_button').fadeOut()
    else
      $('#pop_forms').fadeOut()
      $('#demonstrations_button').fadeOut()

#post demonstration hide and show
jQuery ->
  $('#fa_activity_meet_farmers_attributes_0_purpose').on "change", ->
    if $(this).val() is "post_demonstration"
      $('#post_demo_meeting').fadeIn()
      $('#demonstrations_button').fadeOut()
    else
      $('#post_demo_meeting').fadeOut()
      $('#demonstrations_button').fadeOut()

#Post demo results
jQuery ->
  $('#post_demonstration_observation').on "change", ->
    if $(this).val() is "expected"
      $('#demo_pictures').fadeIn()
      $('#unexpected_comments').fadeOut()
    else if $(this).val() is "unexpected"
      $('#unexpected_comments').fadeIn()
      $('#demo_pictures').fadeOut()
    else
      $('#unexpected_comments').fadeOut()
      $('#demo_pictures').fadeOut()

 #filter for post demo
jQuery ->
  $('#post_demon_id').parent().hide()
  demonstrations = $('#post_demon_id').html()
  $('#field_assist').change ->
    name = $('#field_assist :selected').text()
    escaped_name = name.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(demonstrations).filter("optgroup[label='#{escaped_name}']").html()
    if options
      $('#post_demon_id').html(options)
      $('#post_demon_id').parent().show()
    else
      $('#post_demon_id').empty()
      $('#post_demon_id').parent().hide()

#fa act dropdown
jQuery ->
  $('#fa_activity_activity').on "change",  ->
    if $(this).val() is "visit_dealer"
      $('#dealer_shop').fadeIn()
      $('#demonstrations_button').fadeOut()
    else
      $('#dealer_shop').fadeOut()
      $('#demonstrations_button').fadeOut()

#interacting with farmer
jQuery ->
  $('#fa_activity_dealer_visits_attributes_0_purpose').on "change", ->
    if $(this).val() is "interact_farmers"
      $('#interact-farm').fadeIn()
      $('#demonstrations_button').fadeOut()
    else
      $('#interact-farm').fadeOut()
      $('#demonstrations_button').fadeOut()


#misc other
jQuery ->
  $('#fa_activity_activity').on "change",  ->
    if $(this).val() is "misc"
      $('#act_comment').fadeIn()
      $('#demonstrations_button').fadeOut()
    else
      $('#act_comment').fadeOut()
      $('#demonstrations_button').fadeOut()




#assist sr drop down
jQuery ->
  $('#fa_activity_activity').on "change",  ->
    if $(this).val() is "assist_sr"
      $('#assist_mvc').fadeIn()
      $('#demonstrations_button').fadeOut()
    else
      $('#assist_mvc').fadeOut()
      $('#demonstrations_button').fadeOut()



#assist sr comments
jQuery ->
  $('#fa_activity_assist_reps_attributes_0_assist').on "change", ->
    if $(this).val() is "other"
      $('#assist_comment').fadeIn()
      $('#demonstrations_button').fadeOut()
    else
      $('#assist_comment').fadeOut()
      $('#demonstrations_button').fadeOut()


#when I do the invetory check act
jQuery ->
  $('#fa_activity_dealer_visits_attributes_0_purpose').on "change", ->
    if $(this).val() is "inventory_check"
      $('#inventory_checker').fadeIn()
      $('#demonstrations_button').fadeOut()
    else
      $('#inventory_checker').fadeOut()
      $('#demonstrations_button').fadeOut()



#filer area managers with states
jQuery ->
  $('#fa_manager').parent().hide()
  users =$('#fa_manager').html()
  $('#fa_state').change ->
    state = $('#fa_state :selected').text()
    escaped_state = state.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(users).filter("optgroup[label='#{escaped_state}']").html()
    if options
      $('#fa_manager').html(options)
      $('#fa_manager').parent().show()
    else
      $('#fa_manager').empty()
      $('#fa_manager').parent().hide()


#filter sales reps with area manager
jQuery ->
  $('#fa_sales_rep').parent().hide()
  users =$('#fa_sales_rep').html()
  $('#fa_manager').change ->
    manager = $('#fa_manager :selected').text()
    escaped_manager = manager.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(users).filter("optgroup[label='#{escaped_manager}']").html()
    if options
      $('#fa_sales_rep').html(options)
      $('#fa_sales_rep').parent().show()
    else
      $('#fa_sales_rep').empty()
      $('#fa_sales_rep').parent().hide()

##filter pocket with sales reps
#jQuery ->
#  $('#pocket_mon').parent().hide()
#  field_assist =$('#pocket_mon').html()
#  $('#fa_sales_rep').change ->
#    pocket = $('#fa_sales_rep :selected').text()
#    escaped_pocket = pocket.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
#    options = $(field_assist).filter("optgroup[label='#{escaped_pocket}']").html()
#    if options
#      $('#pocket_mon').html(options)
#      $('#pocket_mon').parent().show()
#    else
#      $('#pocket_mon').empty()
#      $('#pocket_mon').parent().hide()

#filter field assistants with pocket
jQuery ->
  $('#field_assist').parent().hide()
  field_assist =$('#field_assist').html()
  $('#pocket_mon').change ->
    pocket = $('#pocket_mon :selected').text()
    escaped_pocket = pocket.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(field_assist).filter("optgroup[label='#{escaped_pocket}']").html()
    if options
      $('#field_assist').html(options)
      $('#field_assist').parent().show()
    else
      $('#field_assist').empty()
      $('#field_assist').parent().hide()



#single toggle
#jQuery ->
#  $(document).on "change",  ->
#    if $('#bulk_sele').val() is "single"
#      $('#single_prod_app').fadeIn()
#      $('#box_prod_app').fadeOut()
#    else if $('#bulk_sele').val() is "box"
#      $('#single_prod_app').fadeOut()
#      $('#box_prod_app').fadeIn()
#    else
#      $('#single_prod_app').fadeOut()
#      $('#box_prod_app').fadeOut()

#demo select toggle submit
jQuery ->
  $('#fa_activity_meet_farmers_attributes_0_purpose').on "change", ->
    if $(this).val() is "demonstration"
      $('#demo_submit').fadeOut()
    else
      $('#demo_submit').fadeIn()



#show and hide the next button in demonstrations
jQuery ->
  $('#fa_activity_meet_farmers_attributes_0_purpose').on "change", ->
    if $(this).val() is "demonstration"
      $('#demonstrations_button').fadeIn()
    else
      $('#demonstrations_button').fadeOut()

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

