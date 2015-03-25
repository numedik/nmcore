class Soundevent < ActiveRecord::Base
  attr_accessible :eventattrib, :id, :name, :eventname
  has_many :soundassignation
  
  def name
  	self.eventname
  end
  
  def name=(n)
  	self.eventname = n;
  end
end
