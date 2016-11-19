#toggle the roles field
jQuery ->
  $('#role_select').hide()
  $('#user_location').on "change", ->
    if $(this).val() is "field_staff"
      $('#role_select').show()
    else
      $('#role_select').hide()

jQuery ->
  $('#kaman').on "change", ->
    if $(this).val() is "sale_representative"
      $('#mana_tan').show()
    else
      $('#mana_tan').hide()


