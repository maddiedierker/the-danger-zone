$(document).ready(function() {
  setInterval(function() {
    $('.cat-container').load("../../views/kitter.erb", function() {
      console.log('bound');
      $.ajax({
        method: "get",
        url: "/",
        dataType: "json"
      })
      .done(function(response) {
        console.log(response);
        $('.cat-container').prepend('<div class="single-cat">' + response + '</div>');
      });
    });
  }, 5000);
});
