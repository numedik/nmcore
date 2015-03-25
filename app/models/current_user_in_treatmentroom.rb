class CurrentUserInTreatmentroom < ActiveRecord::Base
  attr_accessible :curroomstat_id, :treatment_id, :user_id
  belongs_to :treatmentroom
  belongs_to :curroomstat
end
