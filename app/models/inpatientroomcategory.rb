class Inpatientroomcategory < ActiveRecord::Base
  attr_accessible :code, :name
  has_many :rooms
end
