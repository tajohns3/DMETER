# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
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