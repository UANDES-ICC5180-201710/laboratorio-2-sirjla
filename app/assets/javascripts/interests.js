// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
//
$(document).on('turbolinks:load', function() {
  $('.btn-like').click(function() {
    var $btn = $(this);
    var activeClass = 'active';
    function successCreate(response) {
      $btn.addClass(activeClass);
      $btn.data('interest-id', response.id);
      $btn.find('.interests-count').html(response.course_count);
    }

    function successDelete(response) {
      $btn.removeClass(activeClass);
      $btn.find('.interests-count').html(response.course_count);
    }

    if ($btn.hasClass(activeClass)) {
      var url = '/interests/' + $btn.data('interest-id') + '.json';
      $.ajax({
        type: 'DELETE',
        url: url,
        success: successDelete,
        dataType: 'json'
      });
    } else {
      $.ajax({
        type: 'POST',
        url: '/interests.json',
        data: {
          interest: {
            course_id: $btn.data('course-id')
          }
        },
        success: successCreate,
        dataType: 'json'
      });
    }
  });
});
