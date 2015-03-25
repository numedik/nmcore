class NotificationgroupContact < ActiveRecord::Base
  attr_accessible :contact_id, :notificationgroup_id
  
  belongs_to :notificationgroup
  belongs_to :contact
  
end
