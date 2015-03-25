class Discipline < ActiveRecord::Base
  attr_accessible :code, :name
  
  has_many :users
  has_many :treatments
end
