class Notificationstat < ActiveRecord::Base
  attr_accessible :code, :name
  
  has_many :notifications
end
