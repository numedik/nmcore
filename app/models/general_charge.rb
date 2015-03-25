class GeneralCharge < ActiveRecord::Base
  attr_accessible :code, :description, :name, :chargetype_id, :percentage
  
  belongs_to :chargetype
end
