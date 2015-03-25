class Inpatientrecord < ActiveRecord::Base
  
  attr_accessible :bednumber, 
  :contactperson, :contactphone, :dischargedate, :indate, 
  :room_id, :inpatientstat_id, :treatment_id, :user_id, 
  :dischargeremark, :remark, :refferedby, :dischargetype_id,
  :dischargeby_id,:reactivatedby_id
  
  belongs_to :room
  belongs_to :inpatientstat
  belongs_to :treatment
  belongs_to :user
  belongs_to :dischargetype
  belongs_to :dischargeby, :class_name=>"User", :foreign_key => :dischargeby_id
  belongs_to :reactivatedby, :class_name=>"User", :foreign_key => :reactivatedby_id
  
  def self.addbill_for_lengthofstay
    # for each active Inpatientrecord
    Inpatientrecord.all.each do |ip|
      
      # calculate length of stay
      # start from indate until 12 a.m
      start = ip.indate
      now = Time.now
      
      #if it's in the same day
      if start.strftime("%d%m%y") == now.strftime("%d%m%y")
        have_reached_one_day = (now.hours == 12)
      end      
    end
  end
end
