class Appointmentstat < ActiveRecord::Base
  attr_accessible :code, :name
  has_many :appointments
  has_many :doctors, :class_name => "Appointment", :foreign_key => :doctor_id

end
