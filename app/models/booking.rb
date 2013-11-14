class Booking < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, email: true
  # validates :from, presence: true
  # validates :to, presence: true
  # validates :date_of_departure, presence: true
  # validates :date_of_return, presence: true
  validates :number_of_passangers, presence: true, numericality: { only_integer: true }

  has_many :multi_stopovers   
  accepts_nested_attributes_for :multi_stopovers
  before_save :remove_empty_multi_stipovers
  
  TRAVEL_TYPE_ONE_WAY = "one way"
  TRAVEL_TYPE_RETURN = "return"
  TRAVEL_TYPE_MULTI = "multi stopover"
  
  def remove_empty_multi_stipovers
    if self.travel_type == TRAVEL_TYPE_MULTI
      self.multi_stopovers = self.multi_stopovers.delete_if {|obj| obj.from.blank? && obj.to.blank? && obj.date.blank?}      
    end
    return true;
  end
  
end
