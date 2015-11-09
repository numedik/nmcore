class Workorder < ActiveRecord::Base
  default_scope { where(disabled: false) }
  #module for WO linking RN|MD|LAB|PHA|BIL
end
