class AdminController < ApplicationController
   layout "admin"
  before_filter :authenticate_user!
  
  def index
    @ba = Booking.all.size
    @ea = Enquire.all.size
  end
  
  def enquires
    @entries = Enquire.all
  end
  
  def bookings
    @bookings = Booking.all
  end
  
end
