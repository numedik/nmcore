class Purchaseorder < ActiveRecord::Base
  attr_accessible :id, :ponumber, :podate, :voucherdate, :voucherpaytype, :department, :voucherref, :voucheraccount, :orderfrom, :postat_id, :created_at, :updated_at
  
  has_many :items, :foreign_key => :purchaseorder_code, :class_name => "PurchaseorderItem", :primary_key => :ponumber
  has_one :vendor, :primary_key => :voucheraccount, :foreign_key => :code, :class_name => "Account"
  has_one :requestingdepartment, :primary_key => :department, :foreign_key => :id, :class_name => "Department"
  belongs_to :postat
  
  def self.running_number
    Runningnumber.find_by_code('PO').running.to_s.gsub(/([0-9]{4})([0-9]+)/) do |match|
      part1=$1[0..1]
      part2=$1[2..3]
      return "#{part1.to_i.chr}#{part2.to_i.chr}#{($2.to_i + 1).to_s.rjust($2.length, '0')}"
    end
  end
  
  def self.getrunningponumber(po)
    alphas = po.to_s[0..1]
    alphas = alphas.split(//)
    alphas.each do |a|
      newnum << a.ord.to_s
    end
    newnum << po[0..-1]
  end
  
  def totalamount
    total = 0
    self.items.each.map do |it|
      total += it.price * it.quantity
    end
    total
  end
  
end
