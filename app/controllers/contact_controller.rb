class ContactController < ApplicationController
  layout "static"
  before_filter :init_objects
  BOOKING_FLASH = "Your booking has been send to us!"
  ENQUIRE_FLASH = "Your enquire has been send to us!"
  
  def index
  end
  
  def create_enquire
    if (@enquire.update_attributes(enquire_params))
      NoticeMailer.enquire_email(@enquire).deliver
      flash[:notice] = ENQUIRE_FLASH
      redirect_to action: :index
      return
    else
      @hide_enquire_form = false      
    end
    render "index"
  end
  
  def create_booking
    if (@booking.update_attributes(booking_params))
      NoticeMailer.booking_email(@booking).deliver
      flash[:notice] = BOOKING_FLASH
      redirect_to action: :index
      return
    else
      @hide_booking_form = false      
    end
    render "index"
  end
  
  
 private
  def init_objects
    @enquire = Enquire.new
    @booking = Booking.new
    @hide_enquire_form = true
    @hide_booking_form = true  
  end
  
  def enquire_params
    params.require(:enquire).permit(:first_name, :email, :message)
  end
  
  def booking_params
    params.require(:booking).permit(:first_name, :surname, :place_of_origin, :email, :phone, :accept_call, :message)
  end  

end
