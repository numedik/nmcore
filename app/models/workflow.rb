class Workflow < ActiveRecord::Base
  
  has_one :assigner, :foreign_key => :assigner_id, :class => :user
  belongs_to :assignee, :foreign_key => :assignee_id, :class => :user
  
  belongs_to :workorder
  has_one :workflowstat
  has_one :treatment
end
