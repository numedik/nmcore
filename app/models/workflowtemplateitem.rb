class Workflowtemplateitem < ActiveRecord::Base

  belongs_to :workflowtemplate
  belongs_to :workorder
end
