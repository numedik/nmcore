class Billitemstat < ActiveRecord::Base
  default_scope { where(disabled: false) }
end
