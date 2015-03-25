class Audittype < ActiveRecord::Base
  attr_accessible :code, :name
  
  has_many :audittrails
  
end
