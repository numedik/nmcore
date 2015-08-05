class Labresult < ActiveRecord::Base
  belongs_to :labrequestitem
  belongs_to :labtemplate
end
