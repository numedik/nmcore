class Reportstat < ActiveRecord::Base
  attr_accessible :code, :name
  has_many :labreport
end
