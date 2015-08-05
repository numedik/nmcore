class Billitem < ActiveRecord::Base
  belongs_to :billing
  belongs_to :patienttype
  belongs_to :price
  belongs_to :user
  belongs_to :billitemstat
  belongs_to :plan
  belongs_to :paymenttype
  belongs_to :chargegroup
  belongs_to :account
  belongs_to :gstcode
  belongs_to :warehouse
end
