class Billing < ActiveRecord::Base
  attr_accessible :billingstat_id, :patient_id, :refnum, :remark, :treatment_id, :deposit, :discount
  
  belongs_to :billingstat
  belongs_to :patient
  belongs_to :treatment
  has_many :billitems
  
  public
    def gen_bill_ref
    	running = Runningnumber.find_by_code('BILLREF')

    	running.running += 1

    	running.save
    	self.refnum = "B#{running.running.to_s.rjust(6, '0')}"
    end
end
