class Billingstat < ActiveRecord::Base
  attr_accessible :code, :name
  has_many :billings
end
