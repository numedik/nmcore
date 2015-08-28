class Audit < ActiveRecord::Base
  belongs_to :audittype
  belongs_to :user
end
