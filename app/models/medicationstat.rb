class Medicationstat < ActiveRecord::Base
  attr_accessible :code, :name
  has_many :medications
end
