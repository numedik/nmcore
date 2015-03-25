class User < ActiveRecord::Base
  attr_accessible :auth_token, :department_id, :email, :fullname,:password,:password_confirmation, :password_digest, :password_reset_token, :password_reset_token_sent_at, :phone, :role_id, :username, :userstat_id, :locationroom_id, :discipline_id,:doctorname

  
  has_secure_password
  validates_presence_of :password, :on => :create
  before_create { generate_token(:auth_token) }
  
  belongs_to :department
  belongs_to :role
  belongs_to :userstat
  has_many :queuecallings
  belongs_to :locationroom
  has_many :medications
  belongs_to :discipline
  has_one :contact
  has_many :labattachmentupload, :class_name => "Labattachment", :foreign_key => :uploader_id
  
  has_many :treatmentdoctors, :class_name => "Treatment", :foreign_key => :doctor_id
  has_many :treatmentusers, :class_name => "Treatment", :foreign_key => :user_id
  has_many :appointments, :class_name => "Appointment", :foreign_key => :user_id
  has_many :doctorappointments, :class_name => "Appointment", :foreign_key => :doctor_id
  has_many :audittrails
  has_many :audittrailstaff, :class_name => "Audittrail", :foreign_key => :staff_id
  has_many :labrequests, :class_name => "Labreport", :foreign_key => :requester_id
  has_many :billitem, :class_name => "Billitem", :foreign_key => :doctor_id
  has_many :dischargeby, :class_name=>"Inpatientrecord", :foreign_key => :dischargeby_id
  has_many :reactivatedby, :class_name=>"Inpatientrecord", :foreign_key => :reactivatedby_id
  has_many :roomreservations
  has_many :notifications

  def name
  	fullname
  end

  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end
  
  def send_password_reset
    generate_token(:password_reset_token)
    self.password_reset_sent_at = Time.zone.now
    save!
    UserMailer.password_reset(self).deliver
  end
  def name_with_locationroom
    "#{fullname} - #{locationroom.try(:name)}"
  end

  def name_with_fullname
    "#{username} (#{fullname}) "
  end
end
