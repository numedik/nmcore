class Workflow < ActiveRecord::Base
  
  has_one :assigner, :foreign_key => :assigner_id, :class => :user
  belongs_to :assignee, :foreign_key => :assignee_id, :class => :user
  
  belongs_to :workorder
  belongs_to :workflowstat
  belongs_to :treatment
  
  
  before_create :init_default
  
  scope :active, -> { where(workflowstat_id: Workflowstat.where(:code => 'N').first.id) }
  scope :currentworkorder, -> { order(sequenceorder: :asc)}
  
  
  def self.init_queue(tid)
    t = Treatment.find(tid)
    w = Workflow.active.where(:treatment_id=>t.id).currentworkorder.first
    
    
    rs = Activequeue.new
    rs.treatment_id = t.id
    rs.patient_id = t.patient_id
    rs.patientname = t.patient.fullname
    rs.workordercurrent = w.workorder.name
    rs.statcurrent = w.workflowstat.name
    rs.sn = t.sn
    rs.mrn = t.patient.mrn
    rs.gender = t.patient.gender.code
    rs.save
    
  end
  
  
  private
    def init_default
      self.workflowstat_id = Workflowstat.where(:code => 'N').first.id
    end
  
  
end
