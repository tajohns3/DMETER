# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $('#farmers').dataTable()

jQuery ->
#  $('#manager').parent().hide()
  users =$('#manager').html()
  $('#sr_state').change ->
    state = $('#sr_state :selected').text()
    escaped_state = state.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(users).filter("optgroup[label='#{escaped_state}']").html()
    if options
      $('#manager').html(options)
#      $('#manager').parent().show()
    else
      $('#manager').empty()
#      $('#manager').parent().hide()

jQuery ->
  users =$('#state_manager').html()
  $('#sr_state').change ->
    state = $('#sr_state :selected').text()
    escaped_state = state.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(users).filter("optgroup[label='#{escaped_state}']").html()
    if options
      $('#state_manager').html(options)
    else
      $('#state_manager').empty()


#filter sales reps
jQuery ->
  users =$('#sale_rep_act_rep').html()
  $('#manager').change ->
    manager = $('#manager :selected').text()
    escaped_manager = manager.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(users).filter("optgroup[label='#{escaped_manager}']").html()
    if options
      $('#sale_rep_act_rep').html(options)
    else
      $('#sale_rep_act_rep').empty()

#filter districts
jQuery ->
#  $('#sale_rep_act_rep').parent().hide()
  villages =$('#le_village').html()
  $('#pocket_farmer').change ->
    pocket = $('#pocket_farmer :selected').text()
    escaped_pocket = pocket.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(villages).filter("optgroup[label='#{escaped_pocket}']").html()
    if options
      $('#le_village').html(options)
#      $('#sale_rep_act_rep').parent().show()
    else
      $('#le_village').empty()
#      $('#sale_rep_act_rep').parent().hide()