class Warehouse < ActiveRecord::Base
  attr_accessible :balancestock, :code, :dosage, :drugcategory_id, :drugdosage_id, :drugduration_id, :drugfrequency_id, :drugprocedure_id, :drugroute_id, :drugstrength_id, :drugtype_id, :duration, :maxstock, :minstock, :name, :orderstock, :price_code, :quantity, :scientificname, :strength, :warehousetype_id, :drugprn_id, :substore_id, :stockstat_id, :batchnum, :expireddate, :vendor_id
  
  default_scope :order => 'code ASC'
  scope :activestock, where('balancestock > 0')
  scope :allstockinsubstore, lambda { |sstore| where("substore_id = ? and balancestock > 0", Substore.find_by_code(sstore).id) }
  scope :allstockinwarehouse, lambda { |whouse| where("warehousetype_id = ? and balancestock > 0", Warehousetype.find_by_code(whouse).id) }

  belongs_to :drugstrength
  belongs_to :drugdosage
  belongs_to :drugroute
  belongs_to :drugfrequency
  belongs_to :drugduration
  belongs_to :drugprocedure
  belongs_to :drugprn
  belongs_to :drugtype
  belongs_to :drugcategory
  belongs_to :warehousetype
  belongs_to :substore
  belongs_to :stockstat
  belongs_to :vendor
  belongs_to :purchaseorder, :foreign_key => :code
  has_many :prices, :primary_key => :code, :class_name=> "Price", :foreign_key => :code
  
  has_many :medications  

  def batch
  	"#{self.substore.code} #{self.batchnum}"
  end

  def namewithscientific
    "#{self.name} / #{self.scientificname}"
  end
  
  def action_stock
  
  	if self.substore.code == "MN"
  	"<img code='#{self.code}' quantity='#{self.quantity}' current='#{self.balancestock}' substore='#{self.substore.code}' id='#{self.id}' class='transferS' alt='Transfer Stock' title='Transfer Stock' src='/assets/icons/packs/fugue/24x24/calendar-export.png' width='24' height='24'>
&nbsp;<img id='#{self.id}' code='#{self.code}' class='updateS' alt='New Stock' title='New Stock' src='/assets/icons/packs/fugue/24x24/box.png' width='24' height='24'>"
  	else
  	"<img code='#{self.code}' quantity='#{self.quantity}' current='#{self.balancestock}' substore='#{self.substore.code}' id='#{self.id}' class='transferS' alt='Transfer Stock' title='Transfer Stock' src='/assets/icons/packs/fugue/24x24/calendar-export.png' width='24' height='24'>
&nbsp;"
  	end
  end
  
  
end
