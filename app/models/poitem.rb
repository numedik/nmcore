class Poitem < ActiveRecord::Base
  default_scope { where(disabled: false) }
  
  belongs_to :purchaseorder
  belongs_to :inventory
  belongs_to :user
end
