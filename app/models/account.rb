class Account < ActiveRecord::Base
  
  belongs_to :state
  belongs_to :accounttype
  
  has_many :billitems
end
