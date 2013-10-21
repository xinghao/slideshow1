class IsoCountry < ActiveRecord::Base
  scope :country_names, order("id")
end
