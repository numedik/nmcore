class Treatmentroom < ActiveRecord::Base
  attr_accessible :code, :name
  has_many :patientqueues
  has_many :current_user_in_treatmentrooms
  has_many :audittrails
end
