class Role < ActiveRecord::Base
  attr_accessible :code, :name
  has_many :users
end
