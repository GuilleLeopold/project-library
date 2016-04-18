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

$(document).ready(function() {
  changeColor();
});
