class Medication < ActiveRecord::Base
  attr_accessible :dosage, :drugdosage_id, :drugduration_id, :drugfrequency_id, :drugprn_id, :drugprocedure_id, :drugroute_id, :drugstrength_id, :duration, :instruction, :medicationstat_id, :patienttype_id, :quantity, :remark, :strength, :treatment_id, :user_id, :warehouse_id, :billitem_id
  belongs_to :drugstrength
  belongs_to :drugdosage
  belongs_to :drugroute
  belongs_to :drugfrequency
  belongs_to :drugduration
  belongs_to :drugprocedure
  belongs_to :drugprn
  belongs_to :medicationstat
  belongs_to :patienttype
  belongs_to :medication
  belongs_to :warehouse
  belongs_to :treatment
  belongs_to :user
  belongs_to :billitem
end
