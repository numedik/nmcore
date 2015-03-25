class Chargetype < ActiveRecord::Base
  attr_accessible :code, :name
  
  has_many :general_charges
end
