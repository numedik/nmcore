class Stockstat < ActiveRecord::Base
  attr_accessible :code, :name
  
  has_many :warehouses
end
