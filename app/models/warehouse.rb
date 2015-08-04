class Warehouse < ActiveRecord::Base
  belongs_to :store
  belongs_to :purchaseorder
  belongs_to :user
end
