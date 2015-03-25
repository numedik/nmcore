class Labresult < ActiveRecord::Base
  attr_accessible :labitem_id, :labreport_id, :value1, :value2 , :labtemplate_id, :html, :labresultstat_id
  belongs_to :labitem 
  belongs_to :labreport
  belongs_to :labresultstat
  
  has_many :labattachments
  
  def result_item
  	"#{self.labitem.name}"
  end
  
end
