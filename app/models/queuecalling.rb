class Queuecalling < ActiveRecord::Base
  attr_accessible :calltime, :locationroom_id, :treatment_id, :user_id
  
  belongs_to :treatment
  belongs_to :user
  belongs_to :locationroom
end
