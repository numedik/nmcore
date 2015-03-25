class Department < ActiveRecord::Base
  attr_accessible :code, :name
  has_many :users
  has_many :purchaseorders, :foreign_key => :department
end
