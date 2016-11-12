# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
#  $('#sale_rep_act_rep').parent().hide()
  users =$('#pocket_sr').html()
  $('#sr_state').change ->
    state = $('#sr_state :selected').text()
    escaped_state = state.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(users).filter("optgroup[label='#{escaped_state}']").html()
    if options
      $('#pocket_sr').html(options)
#      $('#sale_rep_act_rep').parent().show()
    else
      $('#pocket_sr').empty()
#      $('#sale_rep_act_rep').parent().hide()
