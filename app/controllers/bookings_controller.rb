class BookingsController < ApplicationController
  layout "static"
  before_filter :init_objects  
  BOOKING_FLASH = "Your booking has been send to us!"
  def new
    3.times { @booking.multi_stopovers.build} if @booking.multi_stopovers.size == 0
    showhideform()
  end
  
  def create
    if (@booking.update_attributes(booking_params))
#      NoticeMailer.booking_email(@booking).deliver
      flash[:notice] = BOOKING_FLASH
      redirect_to action: :new
      return
    end
    showhideform()
    render "new"
  end
  
  def booking_params
    params.require(:booking).permit(:first_name, :last_name, :travel_type, :seat_class, :email, :from, :to, :date_of_departure, :date_of_return, :number_of_passangers, multi_stopovers_attributes:[:from, :to, :date])
  end  
  
  def showhideform()
    if @booking.travel_type == Booking::TRAVEL_TYPE_MULTI
      @multi_stepover = ""
      @return_form =  "display:none"      
    elsif @booking.travel_type == Booking::TRAVEL_TYPE_ONE_WAY
      @single_form = "display:none"
    end    
  end
  
  def init_objects
    @booking = Booking.new 
    @booking.travel_type = Booking::TRAVEL_TYPE_RETURN  
    @return_form = ""
    @single_form = ""
    @multi_stepover = "display:none"
         
  end
  
  
end