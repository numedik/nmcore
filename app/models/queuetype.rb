class Queuetype < ActiveRecord::Base
  attr_accessible :code, :name
  has_many :patientqueues
end
