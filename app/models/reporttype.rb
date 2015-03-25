class Reporttype < ActiveRecord::Base
  attr_accessible :code, :name, :price_code
  has_many :labreports
  has_many :labitems
  
end
