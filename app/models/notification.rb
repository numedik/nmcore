class Notification < ActiveRecord::Base
  attr_accessible :body, :header, :notificationtype_id, :contact_id, :notificationgroup_id, :remark, :notificationstat_id, :notificationmethod_id, :deliverydatetime, :user_id
  
  has_one :contact, :autosave => true
  
  belongs_to :notificationtype
  belongs_to :notificationgroup
  belongs_to :notificationstat
  belongs_to :notificationmethod
  belongs_to :user
  belongs_to :contact
  
  def self.spread
  	
  	# detect current time
  	startTime = Time.now
  	selectStart = startTime.strftime("%Y-%m-%d %H:00:00")
  	selectEnd = (startTime+1.hour).strftime("%Y-%m-%d %H:00:00")
  	
  	# select all notification that is queued on the time
  	@queue = Notification.where(
  		:deliverydatetime => selectStart..selectEnd, 
  		:notificationstat_id => Notificationstat.find_by_code('Q').id
  	)

  	@queue.each do |q|
  		puts q.inspect
  		case (q.notificationmethod_id)
  			when Notificationmethod.find_by_code('SM').id;
				Sms.send(
					:id => q.id
				)
  			when Notificationmethod.find_by_code('EM').id;
  				mo = {
  					:id => q.id
				}
  				Mailer.notify(mo).deliver
  		end
  	end
  		
  end
  
end
