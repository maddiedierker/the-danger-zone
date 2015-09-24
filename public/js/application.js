$(document).ready(function() {
  setInterval(function() {
    $('.cat-container').load("../../views/_cat.erb", function() {
      console.log('bound');
      $.ajax({
        method: "get",
        url: "/"
      })
      .done(function(response) {
        $('.cat-container').prepend(response);
      });
    });
  }, 10000);
});
