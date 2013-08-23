# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#$ ->
#  $('#signup_save').click (e) ->
#    e.preventDefault()
#    $.ajax
#      url: 'newcatalyst',
#      type: 'POST',
#      dataType: 'json',
#      data:
#        first_name: $("#signup_first_name").val()
#        last_name: $("#signup_last_name").val()
#        email: $("#signup_email").val()
#        phone: $("#signup_phone").val()
#        city: $("#signup_city").val()
#        linkedin: $("#signup_linkedin").val()
#        website: $("#signup_website").val()
#        comments: $("#signup_comments").val()
#
#      error: (request, status, errorThrown) ->
#        alert errorThrown
#      success: (data, status, request) ->
#        alert "worked"