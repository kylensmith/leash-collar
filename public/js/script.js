$(document).ready(function() {
  $("#little-dog").animate({left: '125%'}, 20000, "linear");
  $("#big-dog").animate({left: '120%'}, 4200); 
  $("#little-dog").fadeOut(); 
  $("#big-dog").fadeOut(); 

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


