class Cashregister < ActiveRecord::Base
  attr_accessible :id, :billing_id, :user_id, :paymenttype_id, :amount, :cardnumber, :account_id,
    :created_at, :updated_at, :closetime

  belongs_to :billing
  belongs_to :paymenttype
  belongs_to :account
  belongs_to :user
end
