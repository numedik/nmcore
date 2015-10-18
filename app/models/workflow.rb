class Workflow < ActiveRecord::Base
  
  has_one :assigner, :foreign_key => :assigner_id, :class => :user
  belongs_to :assignee, :foreign_key => :assignee_id, :class => :user
  
  belongs_to :workorder
  has_one :workflowstat
  has_one :treatment
  
  
  before_create :init_default

  private
    def init_default
      self.workflowstat_id = Workflowstat.where(:code => 'N').first.id
    end
end
