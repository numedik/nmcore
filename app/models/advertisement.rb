class Advertisement < ActiveRecord::Base
  attr_accessible :enddate, :id, :image, :remark, :startdate, :statusrow_id, :weightage
  belongs_to :statusrow
end
