class Patientqueue < ActiveRecord::Base
  attr_accessible :callcount, :qend, :qnum, :qstart, :queuestat_id, :queuetype_id, :treatment_id, :treatmentroom_id
  #default_scope :order => 'qstart ASC'
  belongs_to :queuestat
  belongs_to :queuetype
  belongs_to :treatment
  belongs_to :treatmentroom
end
