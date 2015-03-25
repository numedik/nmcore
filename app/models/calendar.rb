class Calendar < ActiveRecord::Base
  attr_accessible :enddate, :event, :startdate, :state_id
end
