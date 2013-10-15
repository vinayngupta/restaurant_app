# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

dispatcher = new WebSocketRails 'localhost:3000/websocket'

channel = dispatcher.subscribe 'reviews'
channel.bind 'new', (review) ->
	append_review(review.body,review.rating)

window.append_review =  (body,rating)->
  $('#reviews').append($('<p>', {text: body}))
  num = rating
  while num--
	  $('#reviews').append($('<img>', {width: 30, height: 30, src: 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcS2wtnUBj9EjZ5ITfdpF-URESuG-aBkP-0_bT6cW0qPTCkvYWoE'}))

# '<a href="'+review.href+'" >'+review.body+'</a>'
# $('<a>', {href: review.href, text:review.body})


