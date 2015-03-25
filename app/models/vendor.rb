class Vendor < ActiveRecord::Base
  attr_accessible :code, :contactmail, :contactname, :contactphone, :name, :registeddate, :remark, :roc
  
  has_many :warehouses
end
