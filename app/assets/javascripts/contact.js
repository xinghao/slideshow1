/*
jQuery(document).ready(function($){
  $( "div.button a" )
    .click(function() {    
    alert("alo");
    var src = $(this).attr("data_target");
    $(this).parent().hide();
    $("div#" + src).show();
    });
});   
*/
function popupBox(srcid,targetid)
{  
    $("a#" + srcid).parent().hide();
    $("div#" + targetid).show();
}
                       
