class Warehouse < ActiveRecord::Base

  default_scope { where(disabled: false) }
  
  belongs_to :store
  belongs_to :purchaseorder
  belongs_to :user
end
