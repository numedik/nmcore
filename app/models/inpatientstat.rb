class Inpatientstat < ActiveRecord::Base
  attr_accessible :code, :name
  
  has_many :inpatientrecords
end
