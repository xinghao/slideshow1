class NoticeMailer < ActionMailer::Base
  #default to: "xinghao.yu@airarena.net", from: "admin@travelyenta.com"
  default to: "bookings@travelyenta.com,xinghao.yu@airarena.net,jaronchester@gmail.com", from: "bookings@travelyenta.com"
  
  
  def booking_email(booking)
    @booking = booking
    mail(:subject => "New booking [#{@booking.email}] for yenta")
  end
  
  def enquire_email(enquire)
    @enquire = enquire
    mail(:subject => "New enquire [#{@enquire.email}] for yenta")
  end
  

end
