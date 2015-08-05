class Treatment < ActiveRecord::Base
  belongs_to :treatmentnote
  belongs_to :workflow
  belongs_to :labrequest
  belongs_to :billing
  belongs_to :plan
  
  has_one :discipline
  has_one :patient
  has_one :patienttype
    
  belongs_to :doctor, :foreign_key => :doctor_id, :class => :user
  belongs_to :registrar, :foreign_key => :registrar_id, :class => :user

end
