class Treatment < ActiveRecord::Base
  attr_accessible :panel_id, :patient_id, :patienttype_id, :treatmentstat_id, :user_id, :discipline_id, :doctorname, :doctor_id, :canvas_total,:legal, :diagnosis, :medicalprescription

  before_create :generate_sn

  belongs_to :panel
  belongs_to :patient
  belongs_to :patienttype
  belongs_to :treatmentstat
  belongs_to :discipline
  
  has_one :patientqueue
  has_many :medications
  has_one :billing
  has_many :labreports
  has_one :inpatientrecord
  has_many :queuecallings
  has_many :audittrails
  has_one :treatmentsicds
  
  belongs_to :doctor, :foreign_key => :doctor_id, :class_name=> "User"
  belongs_to :user, :foreign_key => :user_id, :class_name=> "User"
  
  scope :uncompleted, where(:treatmentstat_id => Treatmentstat.find_by_code('N').id )
  scope :broughtindead, where(:treatmentstat_id => Treatmentstat.find_by_code('B').id )
  scope :completed, where(:treatmentstat_id => Treatmentstat.find_by_code('C').id )

  def generate_sn
    case self.patienttype.code
      when "OP"
      	get_from_running("SNOPD", "C")
      when "IP"
      	get_from_running("SNIPD", "")
      when "AE"
      	get_from_running("SNAE", "A")
      when "RT"
      	get_from_running("SNRT", "R")
    end
  end
  
  private 
  def get_from_running(patienttype, appendLetter)
  	timenow = Time.now
  	
  	running = Runningnumber.find_by_code(patienttype)
  	running.running += 1
  	running.save
    self.sn = "#{appendLetter}#{running.running.to_s}/#{timenow.strftime("%y")}"
    
  end
end
