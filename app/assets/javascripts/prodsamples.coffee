# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#jQuery ->
#  fas = $('#prodsample_position_id').html()
#  $('#prodsample_state_id').change ->
#    states = $('prodsample_state_id :selected').text()
#    options = $(fas).filter("optgroup[label='#{states}']").html()
#    if options
#      $('#prodsample_position_id').html(options)
#    else
#      $('#prodsample_position_id').empty()

jQuery ->
  $("#active_demo").hide();

jQuery ->
  $('#prodsample_sample_purp').on "change",  ->
    if ($(this).val() is "Active Field Demonstration" || $(this).val() is "Farmer Meeting")
      $('#active_demo').fadeIn()
    else
      $('#active_demo').fadeOut()