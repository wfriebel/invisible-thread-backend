$(document).ready(function() {
  $('#login-link').on('click', function(event) {
    event.preventDefault();
    $.ajax( {
        url: '/login',
        method: "GET"
    }).done(function(response) {
        console.log(response)
      $('#login-li').append(response);
      $('#login-link').hide();
    })
  });
  $('#new-post-link').on('click', function(event) {
      event.preventDefault();
      $.ajax( {
          url: '/posts/new',
          method: "GET"
      }).done(function(response) {
          console.log(response);
          $('#new-post-area').append(response);
          $('#new-post-link').hide();
      })
  });
});
