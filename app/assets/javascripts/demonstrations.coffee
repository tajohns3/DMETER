# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $(document).on "change", ->
    if $("#chbox1").prop('checked')
      $("#app_comment_field").show()
    else
      $("#app_comment_field").hide()

jQuery ->
  $(document).on "change", ->
    if $("#chbox2").prop('checked')
      $("#follow_comment_field").show()
    else
      $("#follow_comment_field").hide()
