class Workflow < ActiveRecord::Base
  
  has_one :assigner, :foreign_key => :assigner_id, :class => :user
  belongs_to :assignee, :foreign_key => :assignee_id, :class => :user
  
  belongs_to :workorder
  belongs_to :workflowstat
  belongs_to :treatment
  
  
  before_create :init_default
  
  scope :active, -> { where(workflowstat_id: Workflowstat.where(:code => 'N').first.id) }
  scope :currentworkorder, -> { order(sequenceorder: :asc)}

  def sign_in_patient
    self.workflowstat_id = Workflowstat.where(:code => 'T').first.id
  end
  
  def sign_off_patient
    self.workflowstat_id = Workflowstat.where(:code => 'C').first.id
  end
  
  def self.init_queue(tid)
    t = Treatment.find(tid)
    
    #set workorder registration to complete
    wx = Workflow.where(:treatment_id=>tid, :workorder_id=>1).first
    wx.workflowstat_id = Workflowstat.where(:code => 'C').first.id
    wx.save
    
    #get current workorder
    w = Workflow.get_current_workorder(tid)
  
    rs = Activequeue.new
      rs.treatment_id = t.id
      rs.patient_id = t.patient_id
      rs.patientname = t.patient.fullname
      rs.workordercurrent = w.workorder.code
      rs.statcurrent = w.workflowstat.name
      rs.sn = t.sn
      rs.mrn = t.patient.mrn
      rs.gender = t.patient.gender.code
      rs.clismodule = w.workorder.clismodule
      rs.currentworkflow_id = w.id
      
    rs.save
    
    rs
  end
  
  def self.get_next_workorder(tid)
    return Workflow.active.where(:treatment_id=>tid).currentworkorder.second rescue nil
  end
  
  def self.get_current_workorder(tid)
    return Workflow.active.where(:treatment_id=>tid).currentworkorder.first
  end
  
  private
    def init_default
      self.workflowstat_id = Workflowstat.where(:code => 'N').first.id
    end
  
  
end
