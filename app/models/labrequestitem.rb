class Labrequestitem < ActiveRecord::Base
  belongs_to :labrequest
  belongs_to :labitem
end
