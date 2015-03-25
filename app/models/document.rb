class Document < ActiveRecord::Base
  attr_accessible :ordate, :orreason, :rladdr, :rldate, :rldocname, :rlhisfind, :rlinvestreat, :attndate, :attnfrom, :attnto, :documenttype_id, :html, :mcend, :mcstart, :mcreason, :patient_id, :serialnum, :user_id, :mcrecheck, :remark, :documentstat_id, :patname, :patmykadno, :patdepartment
  
  belongs_to :documenttype
  belongs_to :patient
  belongs_to :user
  belongs_to :documentstat
end
