class Billitem < ActiveRecord::Base
  attr_accessible :adjustedprice, :billing_id, :billitemstat_id, :patienttype_id, :price_id, :quantity, :user_id, :panel_id, :account_id, :paymenttype_id, :doctor_id,:doctorname, :doctortype_id, :editedname, :taxpercent, :taxvalue, :doctordiscipline_id, :doctorcommission,:doctorcommissionvalue,:chargegroup_id,:reversed
  
  belongs_to :billing
  belongs_to :billitemstat
  belongs_to :patienttype
  belongs_to :user
  belongs_to :price
  belongs_to :panel
  belongs_to :account
  belongs_to :paymenttype
  belongs_to :doctor, :class_name=>"User", :foreign_key => :doctor_id
  belongs_to :doctortype
  belongs_to :chargegroup
  has_many :medication
  
  #def name
 # 	"#{self.name} - RM #{self.recommendedprice}"
 # end
  #kalau error bill.name refer en gomez
end
