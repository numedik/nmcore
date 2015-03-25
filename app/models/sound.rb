class Sound < ActiveRecord::Base
  attr_accessible :filename, :id
  has_many :soundassignation
  
  def name
  	filename
  end
end
