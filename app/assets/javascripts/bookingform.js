function selectreturn(){
  $(".multistopoverswrap").hide();
  $(".returnwrap").show();
  $(".dateofreturn").show();
}

function selectsingle(){
  $(".multistopoverswrap").hide();
  $(".returnwrap").show();
  $(".dateofreturn").hide();
}

function selectmulti(){
  $(".multistopoverswrap").show();
  $(".returnwrap").hide();
}


function addnewflight(){
  var index = $(".multistopoversdiv .form-group").length + 1;
  var nf = "<div class='form-group'>\
                    <div class='col-md-1'>\
                      <label class='control-label' for='from'>" + index + "</label>" +
                    "</div>\
                    <div class='col-md-11'>\
                      <div class='col-md-4'>\
                        <input class='form-control' id='booking_multi_stopovers_attributes_"+index + "_from' name='booking[multi_stopovers_attributes][" + index +"][from]' placeholder='City, Country' type='text' />\
                      </div>\
                      <div class='col-md-4'>\
                        <input class='form-control' id='booking_multi_stopovers_attributes_"+index + "_to' name='booking[multi_stopovers_attributes]["+index + "][to]' placeholder='City, Country' type='text' />\
                      </div>\
                      <div class='col-md-4 datepicker-input'>\
                        <input class='form-control datepicker' id='booking_multi_stopovers_attributes_"+index + "_date' name='booking[multi_stopovers_attributes]["+index + "][date]' placeholder='Date of Departure' type='text' />\
                      </div>\
                    </div>\
                  </div>"
  $(".multistopoversdiv").append(nf);
  
  $( ".datepicker" ).datepicker({
    showOn: "both",
     buttonImage: '/assets/calendar-128.png', 
      buttonImageOnly: true,    
  }    
  );  
  return false;
  
}


                     
