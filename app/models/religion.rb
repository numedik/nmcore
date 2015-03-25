class Religion < ActiveRecord::Base
  attr_accessible :code, :name
  has_many :patients
end
