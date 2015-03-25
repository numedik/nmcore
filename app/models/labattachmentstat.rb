class Labattachmentstat < ActiveRecord::Base
  attr_accessible :code, :name
  
  has_many :labattachments
end
