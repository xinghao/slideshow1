jQuery(document).ready(function($){
  $( "div.button" )
    .click(function() {    
    var src = $(this).attr("data_target");
    $(this).hide();
    $("div#" + src).show();
    });
});   
                       
