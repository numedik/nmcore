class Locationroomstat < ActiveRecord::Base
  attr_accessible :code, :name
  
  belongs_to :locationroom , :class_name => "Locationroom", :foreign_key => :locroomstat_id
end
