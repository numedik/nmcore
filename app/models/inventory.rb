class Inventory < ActiveRecord::Base
  belongs_to :inventorytype
  belongs_to :drugtype
  belongs_to :drugstrength
  belongs_to :drugdosage
  belongs_to :drougroute
  belongs_to :drugfrequency
  belongs_to :drugduration
  belongs_to :drugprocedure
end
