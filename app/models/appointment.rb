class Appointment < ActiveRecord::Base
  attr_accessible :appointmentstat_id, :date, :patient_id, :timeend, :timestart, :user_id, :doctor_id, :notifystat_id
  
  belongs_to :patient
  belongs_to :user
  belongs_to :appointmentstat
  belongs_to :notifystat
  belongs_to :doctor, :foreign_key => :doctor_id, :class_name => "User"
  
end
