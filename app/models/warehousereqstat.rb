class Warehousereqstat < ActiveRecord::Base
  attr_accessible :code, :name

  has_many :warehouserequests
end
