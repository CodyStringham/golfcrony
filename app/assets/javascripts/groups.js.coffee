# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->


  $.fn.setValues = (val1, val2) ->
    $(this).find("input").first().val(val1)
    $(this).find("input").last().val(val2)


  if $(".min-max-handi").find("input").first().val() == ""
    $(".min-max-handi").setValues("-10", "50")

  if $(".min-max-age").find("input").first().val() == ""
    $(".min-max-age").setValues("15", "75")


  handiMin = $(".min-max-handi").find("input").first().val()
  handiMax = $(".min-max-handi").find("input").last().val()
  ageMin = $(".min-max-age").find("input").first().val()
  ageMax = $(".min-max-age").find("input").last().val()


  $("#slider-range-handicap").slider
    range: true
    min: -10
    step: 5
    max: 50
    values: [
      handiMin
      handiMax
    ]
    slide: (event, ui) ->
      $("#handi-amount").val ui.values[0] + " to " + ui.values[1]
      $(".min-max-handi").find("input").first().val(ui.values[0])
      $(".min-max-handi").find("input").last().val(ui.values[1])
      

  $("#handi-amount").val $("#slider-range-handicap").slider("values", 0) + " to " + $("#slider-range-handicap").slider("values", 1)
  

  

  $("#slider-range-age").slider
    range: true
    min: 15
    step: 5
    max: 75
    values: [
      ageMin
      ageMax
    ]
    slide: (event, ui) ->
      $("#age-amount").val ui.values[0] + " to " + ui.values[1]
      $(".min-max-age").find("input").first().val(ui.values[0])
      $(".min-max-age").find("input").last().val(ui.values[1])
      

  $("#age-amount").val $("#slider-range-age").slider("values", 0) + " to " + $("#slider-range-age").slider("values", 1)






