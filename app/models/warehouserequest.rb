class Warehouserequest < ActiveRecord::Base
  attr_accessible :apprdatetime, :apprquantity, :apprsubstore_id, :appruser_id, :remark, :reqdatetime, :reqquantity, :reqsubstore_id, :requser_id, :reqwarehouse_id, :warehousereqstat_id

  belongs_to :requser, :foreign_key => :requser_id, :class_name=> "User"
  belongs_to :reqwarehouse, :foreign_key => :reqwarehouse_id, :class_name=> "Warehouse"
  belongs_to :reqsubstore, :foreign_key => :reqsubstore_id, :class_name=> "Substore"
  belongs_to :warehousereqstat
  belongs_to :appruser, :foreign_key => :appruser_id, :class_name=> "User"
  belongs_to :apprsubstore, :foreign_key => :apprsubstore_id, :class_name=> "Substore"

end
