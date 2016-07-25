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
});
