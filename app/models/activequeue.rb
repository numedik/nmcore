class Activequeue < ActiveRecord::Base
  belongs_to :workflow, :foreign_key => :currentworkflow_id
end
