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

  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
});
