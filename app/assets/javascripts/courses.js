// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
//
$(document).on('turbolinks:load', function() {
  var $addPersonForm = $('#addPersonAndEnrollment form');

  $addPersonForm.on('ajax:success', function(e, data, status, xhr)  {
    var $newHtml = $(data);
    $addPersonForm.html($newHtml.find('form#new_person').html());
  }).on('ajax:error', function(e, xhr, status, error) {
    alert(error);
  });
});
