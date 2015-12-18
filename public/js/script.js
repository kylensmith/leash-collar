

$(document).ready(function() {
  $('.walker-bio-box').hide();
  
  $('.walker-nametag').click(function(e) {
    $(this).parents().children(".walker-bio-box").slideToggle('slow');
      e.preventDefault();
  });
});

