class Roomreservestat < ActiveRecord::Base
  attr_accessible :code, :name
  
  has_many :roomreservations
end
