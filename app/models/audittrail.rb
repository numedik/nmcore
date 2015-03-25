class Audittrail < ActiveRecord::Base
  
  alias :super_save :save 
  attr_accessible :audittype_id,:ipaddress,:newroom_id,:oldroom_id,:remark,:starttime,:endtime,:treatment_id,:treatmentroom_id,:user_id,:staff_id
  
  belongs_to :audittype
  belongs_to :newroom, :class_name => "Room" , :foreign_key => :newroom_id
  belongs_to :oldroom, :class_name => "Room" , :foreign_key => :oldroom_id
  belongs_to :treatment
  belongs_to :treatmentroom
  belongs_to :user
  belongs_to :staff, :class_name => "User" , :foreign_key => :staff_id
  belongs_to :patient, :class_name => "Patient", :foreign_key => :patient_id
  
  def trans=(t)
  	@transaction = t
  end
  
  def self.create_audit(audit)
  	raise Exception::SyntaxError.new(":type field is required!") if audit[:type].nil?
  	raise Exception::SyntaxError.new(":session field is required!") if audit[:session].nil?
  	raise Exception::SyntaxError.new(":transaction field is required!") if audit[:transaction].nil?
  	
  	trail = self.new
  	trail.trans = audit[:transaction]
  	trail.remark = (audit[:remark].nil?) ? self.remark_template(audit[:type]) : audit[:remark]
  	trail.ipaddress = self.local_ip
  	trail.user_id = audit[:session][:user_id]
  	trail.audittype_id = self.audit_type(audit[:type])
  	trail.remark = trail.remark.gsub(/#([^\#]+)#/){ |m| self.avoi(audit, $1) }
  	trail.newroom_id = audit[:newroom_id] if not audit[:newroom_id].nil?
  	trail.oldroom_id = audit[:oldroom_id] if not audit[:oldroom_id].nil?
  	trail.starttime = audit[:starttime] if not audit[:starttime].nil?
  	trail.endtime = audit[:endtime] if not audit[:endtime].nil?
  	trail.treatment_id = audit[:treatment_id] if not audit[:treatment_id].nil?
  	trail.staff_id = audit[:staff_id] if not audit[:staff_id].nil?
  	trail.patient_id = audit[:patient_id] if not audit[:patient_id].nil? 
  	
  	return trail
  end
  
  def self.remark_template(type)
  	return "Created new OP treatment for patient #patient.fullname#"			if type=='OPDISO_NEW'
  	return "User #user.fullname# signed-in patient #patient.fullname# " << 	
  		   "for treatment session"												if type=='OPDISO_TREATMENT_IN'
  	return "User #user.fullname# signed-off patient #patient.fullname# " << 	
  		   "for treatment session"												if type=='OPDISO_TREATMENT_OFF'
  	return "User #user.fullname# signed-in patient #patient.fullname# " << 	
  		   "for lab session"													if type=='OPDISO_LAB_IN'
  	return "User #user.fullname# signed-off patient #patient.fullname# " << 	
  		   "for lab session"													if type=='OPDISO_LAB_OFF'
  	return "User #user.fullname# signed-in patient #patient.fullname# "<< 	
  		   "for pharmacy session"												if type=='OPDISO_PHARMACY_IN'
  	return "User #user.fullname# signed-off patient #patient.fullname# "<< 	
  		   "for pharmacy session"												if type=='OPDISO_PHARMACY_OFF'
  	return "User #user.fullname# signed-in patient #patient.fullname# " << 	
  		   "for billing session"												if type=='OPDISO_BILLING_IN'
  	return "User #user.fullname# signed-off patient #patient.fullname# " << 	
  		   "for billing session"												if type=='OPDISO_BILLING_OFF'
  	return "User #user.username# logged in." 									if type=='LOGIN'
  	return "User #username# logged out." 										if type=='LOGOUT'
  	return "Created new #changes.class.name# record <p>#changes.stylize#</p>" 	if type=='INSERT'
  	return "Updated #changes.class.name# #changes.id# <p>#changes.stylize original#</p>" 	if type=='UPDATE'
  	return "User #username# had been disabled by user #user.username#" 			if type=='DELETE'
  	return "" 																	if type=='IPDCHGROOM'
  	return "Location Room of #changes.fullname# from " << 
		   "#original.locationroom.code# - #original.locationroom.name# to " <<
		   "#changes.locationroom.code# - #changes.locationroom.name#" 			if type=='CHGLOC'
  	return "Profile details of #changes.username# #changes.stylize original#"	if type=='UPDPROFILE'
  	return "" 																	if type=='ADM_UPDPROFILE'
  	return "" 																	if type=='MEDREC'
  	return "Created new #changes.class.name# record <p>#changes.stylize#</p>" 	if type=='DOC_CREATE'
  	return "Updated #changes.class.name# <p>#changes.stylize original#" 		if type=='DOC_CANCEL'
  	return "Updated #changes.class.name# <p>#changes.stylize original#" 		if type=='QUEUE_UPDATE'
  	return "Added new advertisement with #changes.stylize#" 					if type=='ADS_CREATE'
  	return "Updated advertisement record #original.id# "<<
  		   "<p>#changes.stylize original#</p>"									if type=='ADS_UPDATE'
  	return "Set sound #assignation.sound.filename# for "<<
  		   "event \"#assignation.soundevent.eventname#\"" 						if type=='SOUND_SET'
  	return "Updated #changes.class.name# <p>#changes.stylize original#" 		if type=='ROOM_UPDATE'
  	return "Created new #changes.class.name# record <p>#changes.stylize#</p>" 	if type=='ROOM_CREATE'
  	return "Created new #changes.class.name# record <p>#changes.stylize#</p>" 	if type=='ROOM_RESERVE_CREATE'
  	return "Updated #changes.class.name# <p>#changes.stylize original#" 		if type=='ROOM_RESERVE_UPDATE'
  	return "Updated #changes.class.name# <p>#changes.stylize original#</p>" 	if type=='MASS_UPDATE'
  	return "" 																	if type=='MASS_CREATE'
  	return "" 																	if type=='MASS_SENT'
  	return "" 																	if type=='MASS_FAILED'
  	return ""
  end
  
  def self.audit_type(code)
  	return Audittype.find_by_code(code).id
  end
  
  def self.stylize(action, ibj)
  
	if action == "UPDATE" || action == "UPDPROFILE" || action == "MASS_UPDATE" || action == "DOC_CANCEL" || action == "QUEUE_UPDATE" || action == "ROOM_UPDATE" || action == "ROOM_RESERVE_UPDATE" || action == "ADS_UPDATE"
	
		ibj.class.send(:define_method, 'stylize') do |orig|
	  		@out = ""
	  		self.attributes.each do |p, i|
	  			if (self.send(p) == orig.send(p)) || p == 'created_at' || p == 'updated_at' || p == "id"
	  				next
	  			end
	  			
	  			if not p.index('_id').nil?
		 			unless (rel = self.send(p.gsub('_id', ''))).nil?
		 				rel = rel.name
		 			else
		 				rel = ""
		 			end
		 			
		  			unless (rel2 = orig.send(p.gsub('_id', ''))).nil?
		  				rel2 = rel2.name
		  			else
		  				rel2 = ""
		  			end
		 			@out.concat("#{p} changed from '#{rel2}' to '#{rel}'<br>")
	  			else
		  			@out.concat("#{p} changed from '#{orig.send(p)}' to '#{self.send(p)}'<br>")
	  			end
	  		end
	  		return @out
	  	end

  	else
  	
	  	ibj.class.send(:define_method, 'stylize') do |orig = nil|
	  		@out = ""
	  		self.attributes.each do |p, i|
	  			if not p.index('_id').nil?
		 			unless (rel = self.send(p.gsub('_id', ''))).nil?
		 				rel = rel.name
		 			else
		 				rel = ""
		 			end
		 			@out.concat("#{p} = '#{rel}'<br>")
	  			else
		  			@out.concat("#{p} = '#{self.send(p)}'<br>")
	  			end
	  		end
	  		return @out
	  	end  
  	
  	end
 
  	return ibj
  end
  
  def self.avoi(arr, str)
  	
  	if (reqfields = str.split('.')).length == 1
  		raise Exception.new(":#{str} field is required!") if arr[:"#{str}"].nil?
  		
	  	return arr[:"#{str}"]
  	else	  	
  		raise Exception.new(":#{reqfields[0]} field is required!") if arr[:"#{reqfields[0]}"].nil?
  		raise Exception.new("We can only support up to 2 dots for each #variable#") if(reqfields.length>3)
  		
  		ibj = arr[:"#{reqfields[0]}"]
  		
	  	if reqfields.length == 2
	  		
	  		if !reqfields[1].index("stylize").nil?
	  			self.stylize(arr[:type], ibj)
		  	end
		  	
		  	if (fn = reqfields[1].split(' ')).length == 2
		  		return arr[:"#{reqfields[0]}"].send("#{fn[0]}", arr[:"#{fn[1]}"])
		  	else
		  		return arr[:"#{reqfields[0]}"].send("#{reqfields[1]}")
		  	end
	  		
	  	elsif reqfields.length == 3
	  		if not reqfields[2].index("stylize").nil?
	  			self.stylize(arr[:type], arr[:"#{reqfields[0]}"].send("#{reqfields[1]}"))
	  		end
	  		
	  		return arr[:"#{reqfields[0]}"].send("#{reqfields[1]}").send("#{reqfields[2]}")
	  	end
  	end
  end
  
  def self.local_ip
	require 'socket'
	orig, Socket.do_not_reverse_lookup = Socket.do_not_reverse_lookup, true  # turn off reverse DNS resolution temporarily
	
	UDPSocket.open do |s|
		s.connect '64.233.187.99', 1
		s.addr.last
	end
  ensure
	Socket.do_not_reverse_lookup = orig
  end
  
  def save_audit
  	Audittrail.transaction do
  		@transaction.call()
  		super_save()
  	end
  end

end
