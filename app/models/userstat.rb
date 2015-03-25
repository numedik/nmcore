class Userstat < ActiveRecord::Base
  attr_accessible :code, :name
  has_many :role
end
