$(document).ready(function() {

  $('#edit-survey').on('click',function(event){
      //in JS: ajax call to a 'get route'
      //in RUBY: in the get route return a partial of the "form" you want to render
      //in JS: in the "done" method,
      //in JS: remove all the stuff you don't want on the current page
      //in JS: then appened the form

      event.preventDefault();

      var data = $(this).serialize();
      $.ajax({
        type: "GET",
        url: this.href,
        data: data
      }).done(function(response){
        console.log(response);
        $('#editbasic').replaceWith(response)
      });
    });
});
