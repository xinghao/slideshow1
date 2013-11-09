class NoticeMailer < ActionMailer::Base
  default to: "xinghao.yu@airarena.net,jaronchester@gmail.com", from: "admin@travelyenta.com"
  
  
  def booking_email(booking)
    @booking = booking
    mail(:subject => "New booking [#{@booking.email}] for yenta", :to => "bookings@travelyenta.com,xinghao.yu@airarena.net,jaronchester@gmail.com")
  end
  
  def enquire_email(enquire)
    @enquire = enquire
    mail(:subject => "New enquire [#{@enquire.email}] for yenta", :to => "bookings@travelyenta.com,xinghao.yu@airarena.net,jaronchester@gmail.com")
  end
  

end
