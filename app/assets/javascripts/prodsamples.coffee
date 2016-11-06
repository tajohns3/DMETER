# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#jQuery ->
#  fas = $('#prodsample_faid').html()
#  $('#prodsample_stid').change ->
#    states = $('prodsample_stid :selected').text()
#    options = $(fas).filter("optgroup[label='#{states}']").html()
#    if options
#      $('#prodsample_faid').html(options)
#    else
#      $('#prodsample_faid').empty()

jQuery ->
  $("#active_demo").hide();

jQuery ->
  $('#prodsample_sample_purp').on "change",  ->
    if ($(this).val() is "Active Field Demonstration" || $(this).val() is "Farmer Meeting")
      $('#active_demo').fadeIn()
    else
      $('#active_demo').fadeOut()