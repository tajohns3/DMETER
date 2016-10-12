# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
   $('#dealer_user_id').parent().hide()
   users =$('#dealer_user_id').html()
   $('#dealer_state_id').change ->
     state = $('#dealer_state_id :selected').text()
     escaped_state = state.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
     options = $(users).filter("optgroup[label='#{escaped_state}']").html()
     if options
       $('#dealer_user_id').html(options)
       $('#dealer_user_id').parent().show()
      else
       $('#dealer_user_id').empty()
       $('#dealer_user_id').parent().hide()
