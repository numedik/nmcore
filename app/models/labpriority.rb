class Labpriority < ActiveRecord::Base
  attr_accessible :code, :name
  has_many :labreports
end
