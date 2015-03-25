class Postat < ActiveRecord::Base
  attr_accessible :code, :name
  
  has_many :purchaseorders
end
