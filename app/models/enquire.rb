class EmailValidator < ActiveModel::EachValidator  
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not a valid email")
    end
  end
end

class Enquire < ActiveRecord::Base
  #attr_accessible  :first_name, :email, :message
  
  validates :first_name, presence: true
  validates :email, presence: true, email: true
  
end
