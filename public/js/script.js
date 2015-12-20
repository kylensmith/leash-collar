$(document).ready(function() {
  $("#dog-run1").animate({left: '175%'}, 8300);
  $("#dog-run2").animate({left: '175%'}, 5200);



  console.log("run");
  $('.walker-bio-box').hide();
  
  $('.walker-nametag').click(function(e) {
    $(this).parents().children(".walker-bio-box").slideToggle('slow');
      e.preventDefault();
  });

// slideshow

  $("#slideshow > div:gt(0)").hide();

  setInterval(function() { 
    $('#slideshow > div:first')
      .fadeOut(5000)
      .next()
      .fadeIn(5000)
      .end()
      .appendTo('#slideshow');
  },  3000);

// hamburger menu

  jQuery(function($){
     $( '.menu-btn' ).click(function(){
     $('.responsive-menu').toggleClass('expand')
     })
  })


});


