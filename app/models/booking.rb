class Booking < ActiveRecord::Base
  validates :first_name, presence: true
  validates :surname, presence: true
  validates :email, presence: true, email: true  
end
