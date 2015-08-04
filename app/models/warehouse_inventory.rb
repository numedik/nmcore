class WarehouseInventory < ActiveRecord::Base
  belongs_to :warehouse
  belongs_to :inventory
end
