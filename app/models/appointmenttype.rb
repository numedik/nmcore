class Appointmenttype < ActiveRecord::Base
  attr_accessible :code, :name
  
  has_many :appointments
end
