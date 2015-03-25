class Notificationtemplate < ActiveRecord::Base
  attr_accessible :body, :header, :name, :notificationmethod_id, :remark
  
  belongs_to :notificationmethod
end
