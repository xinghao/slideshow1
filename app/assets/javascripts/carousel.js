jQuery(document).ready(function($){        
  $('.carousel').carousel({
  interval: 6000,
  pause: "false"
  });
  $(".carousel").on('slide.bs.carousel', function(evt) {
    $('.carousel-words').hide();
  });  
  
  $(".carousel").on('slid.bs.carousel', function(evt) {
    var index = $(this).find('.active').index();
    //alert($(this).find('.active').attr("words"));
    $('.carousel-words').text($(this).find('.active').attr("words"));
    $('.carousel-words').fadeIn( 4000); 
  })
  $('.carousel-words').hide();
  $('.carousel-words').text("words 1");  
  $('.carousel-words').fadeIn( 4000);
});   
                       
