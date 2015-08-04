class Purchaseorder < ActiveRecord::Base
  belongs_to :vendor
  belongs_to :user
  belongs_to :postat
end
