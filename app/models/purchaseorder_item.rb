class PurchaseorderItem < ActiveRecord::Base
  attr_accessible :id, :purchaseorder_code, :warehouse_code, :quantity, :price, :account, :user_id, :created_at, :updated_at, :conversion
  
  belongs_to :purchaseorder, :foreign_key => :ponumber
  has_one :warehouse, :primary_key => :warehouse_code, :class_name => "Warehouse", :foreign_key => :code
  
end
  