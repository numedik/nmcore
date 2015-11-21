class Vendor < ActiveRecord::Base

  default_scope { where(disabled: false) }
  
  belongs_to :state
  belongs_to :user
end
