# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


jQuery ->
  $('#event_event_date').datepicker({
    dateFormat: 'mm-dd-yy'
    minDate: +1 });



jQuery ->
  $('#event_event_time').timepicker({ 'step': 5 });