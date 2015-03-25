class Notificationmethod < ActiveRecord::Base
  attr_accessible :code, :name
  
    has_many :notifications
    has_many :notificationtemplates
end
