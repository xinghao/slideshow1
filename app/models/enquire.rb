class Enquire < ActiveRecord::Base
  #attr_accessible  :first_name, :email, :message
  
  validates :first_name, presence: true
  validates :email, presence: true, email: true
  
end
