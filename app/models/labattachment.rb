class Labattachment < ActiveRecord::Base
  attr_accessible :filename, :labattachmentstat_id, :labresult_id, :uploader_id
  
  belongs_to :labattachmentstat
  belongs_to :labresult
  belongs_to :user, :foreign_key => :uploader_id, :class_name=> "User"
end
