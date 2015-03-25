class Locationroom < ActiveRecord::Base
  attr_accessible :code, :locroomstat_id, :name
  has_many :queuecallings
  has_many :users
  
  belongs_to :locationroomstat , :class_name => "Locationroomstat", :foreign_key => :locroomstat_id
end
