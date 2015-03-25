class Treatmenticd < ActiveRecord::Base
  attr_accessible :cause_code, :desease_code, :precedure_code,:causeofdeath_code, :remark, :treatment_id
  
  belongs_to :treatment
  has_one :icd_cause_code, :class_name => "Icd", :foreign_key=> :code, :primary_key => :cause_code
  has_one :icd_precedure_code, :class_name => "Icd", :foreign_key=> :code, :primary_key => :precedure_code
  has_one :icd_desease_code, :class_name => "Icd", :foreign_key=> :code, :primary_key => :desease_code
  has_one :icd_causeofdeath_code, :class_name => "Icd", :foreign_key=> :code, :primary_key => :causeofdeath_code

end
