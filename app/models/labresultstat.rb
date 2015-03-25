class Labresultstat < ActiveRecord::Base
  attr_accessible :code, :name

  has_many :labresults
end
