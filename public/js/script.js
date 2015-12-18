

$(document).ready(function() {
  $('.walker-bio-box').hide();
  
  $('.walker-nametag').click(function(e) {
    $(this).parents().children(".walker-bio-box").slideToggle('slow');
      e.preventDefault();
  });


$("#slideshow > div:gt(0)").hide();

setInterval(function() { 
  $('#slideshow > div:first')
    .fadeOut(5000)
    .next()
    .fadeIn(5000)
    // .delay(1000)
    .end()
    .appendTo('#slideshow');
},  3000);

});

