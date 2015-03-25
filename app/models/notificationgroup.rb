class Notificationgroup < ActiveRecord::Base
  attr_accessible :code, :name
  
    has_many :notifications
    has_many :notificationgroup_contacts
    has_many :contacts, :through => :notificationgroup_contacts

end
