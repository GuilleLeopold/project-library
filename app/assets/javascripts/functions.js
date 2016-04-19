$(document).ready(function() {
  changeColor();
  $('.stars').click(stars);
});

/* Javascript used in user index  */
function changeColor(){
  var statuses = $('.column-status');
  statuses.each(function(index, element) {
    if ($(element).text() == 'aproved') {
      $(element).addClass('aproved');
    } else if ($(element).text() == 'denied') {
      $(element).addClass('denied');
    } else {
      $(element).addClass('pending');
    }
  });
}

/* Javascript used in book show */
var stars = function() {
   $('.stars').removeClass('selected');
   $(this).addClass('selected');
   var rating = $(this).data('rating');
   $('#comment_stars').val(rating);
}
