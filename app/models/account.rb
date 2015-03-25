class Account < ActiveRecord::Base
  attr_accessible :add1, :add2, :add3, :add4, :balance, :code, :name
  
  has_many :billitems
  belongs_to :purchaseorder, :primary_key => :voucheraccount, :class_name => "Purchaseorder", :foreign_key => :code
  
  
  def codewithname 
  	"#{name} - #{code}"
  end
  
end
