class Price < ActiveRecord::Base
  attr_accessible :actualcost, :code, :name, :panel_id, :recommendedprice, :pricetype, :tax, :rs_commission, :vs_commission, :chargegroup_id
  default_scope :order => 'code ASC'
  
  belongs_to :panel
  has_many :warehouses,:primary_key => 'code' ,:class_name => 'Warehouse', :foreign_key => :code
  has_many :billitems
  belongs_to :chargegroups

  public
  def codepriceitem
    if pricetype == "r" || pricetype == "w"
      code.from(2)
    else
      code
    end
  end
end
