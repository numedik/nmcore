class Icdtype < ActiveRecord::Base
  default_scope { where(disabled: false) }
end
