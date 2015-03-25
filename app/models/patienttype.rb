class Patienttype < ActiveRecord::Base
  attr_accessible :code, :name
  has_many :treatments
  has_many :medications
end
