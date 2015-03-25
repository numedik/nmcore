class Drugduration < ActiveRecord::Base
  attr_accessible :code, :multiply, :name
  has_many :warehouses
  has_many :medications
end
