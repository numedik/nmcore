class Drugprn < ActiveRecord::Base
  attr_accessible :code, :name
  has_many :warehouses
  has_many :medications
end
