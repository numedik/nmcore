class Medication < ActiveRecord::Base
  belongs_to :treatment
  belongs_to :patienttype
  belongs_to :inventory
  belongs_to :user
  belongs_to :drugstrength
  belongs_to :drugdosage
  belongs_to :drugroute
  belongs_to :drugfrequency
  belongs_to :drugduration
  belongs_to :drugprocedure
  belongs_to :drugprn
  belongs_to :medicationstat
  belongs_to :billitem
end
