class Poitem < ActiveRecord::Base
  belongs_to :purchaseorder
  belongs_to :inventory
  belongs_to :user
end
