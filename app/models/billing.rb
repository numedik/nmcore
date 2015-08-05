class Billing < ActiveRecord::Base
  belongs_to :patient
  belongs_to :treatment
  belongs_to :billingstat
  belongs_to :user
end
