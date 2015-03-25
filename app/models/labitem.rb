class Labitem < ActiveRecord::Base
  attr_accessible :code, :name, :normalvalue, :reporttype_id, :unit
  belongs_to :reporttype
  has_many :labresults

	def labitem_reporttype
		"#{reporttype_id}_#{id}"
	end 

end
