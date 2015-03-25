class Roomreservation < ActiveRecord::Base
  attr_accessible :from, :patient_id, :remark, :room_id, :roomreservestat_id, :to, :user_id
  
  belongs_to :patient
  belongs_to :room
  belongs_to :roomreservestat
  belongs_to :user
end
