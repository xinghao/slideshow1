jQuery(document).ready(function($){
  $( "div.menu a" )
    .mouseenter(function() {    
    var src = $( this ).attr("in");
    $(this).find("img").attr("src", src);
    })
    .mouseleave(function() {
    var src = $( this ).attr("out");
    $(this).find("img").attr("src", src);

    });
});   
                       
