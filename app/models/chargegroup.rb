class Chargegroup < ActiveRecord::Base
  attr_accessible :code, :name

  has_many :billitems
  has_many :prices
end
