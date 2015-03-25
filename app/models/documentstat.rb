class Documentstat < ActiveRecord::Base
  attr_accessible :code, :name
  
  has_many :documents
end
