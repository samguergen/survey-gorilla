$(document).ready(function() {
  $('#new-comment-form').click(function(event){
    event.preventDefault();
    var $target = $(event.target);
    $target.hide();
    var url = $target.attr('href')
    $.get(url, function(serverResponse, status, jqXHR) {
      $('#comment-list').append(serverResponse);
    });

  });

  $('#comment-list').on('submit', '#comment-content', function(event) {
    event.preventDefault();
    var $target = $(event.target);
    var url = $target.attr('action')
    var data = $target.serialize();

    $.post(url, data, function(serverResponse, status, jqXHR){
      $('#comment-list').append(serverResponse);
    });

    $target.remove();
    $('h3').remove();
    $('#new-comment-form').show();
  });

  $('form.comment_delete').on('submit', function(event) {
    event.preventDefault();
    var $target = $(event.target);

    $.ajax({
      type: 'DELETE',
      url: $target.attr('action')
    }).done(function(response) {
      $target.closest('.doomed').remove()
    })
  });

});
