$(document).click(function(){
    
   $(".walker-bio-box").hide()
   console.log("test");


    //  $(".walker-pic").animate({
    //     left: '250px',
    //     opacity: '0.5',
    //     height: '150px',
    //     width: '150px'
    // });   

    //  $("#header").animate({
    //     left: '250px',
    //     opacity: '0.5',
    //     height: '150px',
    //     width: '150px'
    // });  

    //  $("#map").animate({
    //     right: '500px',
    //     top: '100px',
    //     opacity: '0.5',
    //     height: '1500px',
    //     width: '1500px'
    // });
    // $("#band").css("width", "40px");
    // $("#second-p").css("color", "red")

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