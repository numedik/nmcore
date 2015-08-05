class Price < ActiveRecord::Base
  belongs_to :plan
  belongs_to :pricetype
  belongs_to :gstcode
  belongs_to :chargegroup
end
