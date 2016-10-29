# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
 $('#sr_pactivity').on "change", ->
    if $(this).val() is "meet_state_manager"
      $('#state_mana_div').fadeIn()
    else
      $('#state_mana_div').fadeOut()
      $('#pocked_div').fadeOut()
      $('#dealer_div').fadeOut()
      $('#position_div').fadeOut()
      $('#meet_sm_other_div').fadeOut()

#id pocket
jQuery ->
  $('#meet_sm_option').on "change", ->
    if $(this).val() is "identify_pocket"
      $('#pocked_div').fadeIn()
    else
      $('#pocked_div').fadeOut()

#id dealer
jQuery ->
  $('#meet_sm_option').on "change", ->
    if $(this).val() is "identify_dealer"
      $('#dealer_div').fadeIn()
      $('#pocked_div').fadeIn()
    else
      $('#dealer_div').fadeOut()

#id fa
jQuery ->
  $('#meet_sm_option').on "change", ->
    if $(this).val() is "identify_fa"
      $('#dealer_div').fadeIn()
      $('#pocked_div').fadeIn()
      $('#position_div').fadeIn()
    else
      $('#position_div').fadeOut()

#state manager other
jQuery ->
  $('#meet_sm_option').on "change", ->
    if $(this).val() is "other"
      $('#meet_sm_other_div').fadeIn()
    else
      $('#meet_sm_other_div').fadeOut()
#meet with dealer
jQuery ->
  $('#sr_pactivity').on "change", ->
    if $(this).val() is "meet_dealer"
      $('#met_dealer_div').fadeIn()
    else
      $('#met_dealer_div').fadeOut()
      $('#meet_dealer_other').fadeOut()


#meet dealer other option
jQuery ->
  $('#meet_dealer_option').on "change", ->
    if $(this).val() is "other"
      $('#meet_dealer_other').fadeIn()
    else
      $('#meet_dealer_other').fadeOut()

#meet with fa
jQuery ->
  $('#sr_pactivity').on "change", ->
    if $(this).val() is "Meet_fa"
      $('#meet_fa_opt').fadeIn()
    else
      $('#meet_fa_opt').fadeOut()

#meet with farmaer
jQuery ->
  $('#sr_pactivity').on "change", ->
    if $(this).val() is "meet_farmer"
      $('#meet_farmer_div').fadeIn()
    else
      $('#meet_farmer_div').fadeOut()
      $('#farmer_div').fadeOut()
      $('#crop_id_div').fadeOut()
      $('#crop_growth_div').fadeOut()
      $('#crop_cod_div').fadeOut()
      $('#farmer_recommend').fadeOut()

#meet farmer option 2
jQuery ->
  $('#meet_farmer_option').on "change", ->
    if $(this).val() is "technical_guidance"
      $('#farmer_div').fadeIn()
      $('#crop_id_div').fadeIn()
      $('#crop_growth_div').fadeIn()
      $('#crop_cod_div').fadeIn()

    else
      $('#farmer_div').fadeOut()
      $('#crop_id_div').fadeOut()
      $('#crop_growth_div').fadeOut()
      $('#crop_cod_div').fadeOut()

#meet farmer option 3
jQuery ->
  $('#meet_farmer_option').on "change", ->
    if $(this).val() is "recommendation_farmers"
      $('#farmer_recommend').fadeIn()
    else
      $('#farmer_recommend').fadeOut()

# C & F
jQuery ->
  $('#sr_pactivity').on "change", ->
    if $(this).val() is "C&F"
      $('#cf_option').fadeIn()
    else
      $('#cf_option').fadeOut()


#other
jQuery ->
  $('#sr_pactivity').on "change", ->
    if $(this).val() is "other"
      $('#sr_other').fadeIn()
    else
      $('#sr_other').fadeOut()


#business development
jQuery ->
  $('#sr_pactivity').on "change", ->
    if $(this).val() is "business_development"
      $('#business_deve_div').fadeIn()
    else
      $('#business_deve_div').fadeOut()


#buss dev demonstration
jQuery ->
  $('#buss_development').on "change", ->
    if $(this).val() is "organize farmer meeting"
      $('#buss_demo_div').fadeIn()
    else
      $('#buss_demo_div').fadeOut()

#organize dealer meeting
jQuery ->
  $('#buss_development').on "change", ->
    if $(this).val() is "organize dealer meeting"
      $('#attendees_type_div').fadeIn()
      $('#buss_dev_pocket').fadeIn()
    else
      $('#attendees_type_div').fadeOut()
      $('#buss_dev_pocket').fadeOut()

#filer area managers with states
jQuery ->
  $('#manager').parent().hide()
  users =$('#manager').html()
  $('#sr_state').change ->
    state = $('#sr_state :selected').text()
    escaped_state = state.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(users).filter("optgroup[label='#{escaped_state}']").html()
    if options
      $('#manager').html(options)
      $('#manager').parent().show()
    else
      $('#manager').empty()
      $('#manager').parent().hide()

#filter sales reps
jQuery ->
  $('#sale_rep_act_rep').parent().hide()
  users =$('#sale_rep_act_rep').html()
  $('#manager').change ->
    manager = $('#manager :selected').text()
    escaped_manager = manager.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(users).filter("optgroup[label='#{escaped_manager}']").html()
    if options
      $('#sale_rep_act_rep').html(options)
      $('#sale_rep_act_rep').parent().show()
    else
      $('#sale_rep_act_rep').empty()
      $('#sale_rep_act_rep').parent().hide()
