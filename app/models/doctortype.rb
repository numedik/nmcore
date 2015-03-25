class Doctortype < ActiveRecord::Base
  attr_accessible :code, :name
  
  has_many :billitems
end
