#= require active_admin/base

jQuery ->
  $('#event_event_date').datepicker({
    dateFormat: 'mm-dd-yy'
    minDate: +1 });
