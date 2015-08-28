class Treatmenticd < ActiveRecord::Base
  belongs_to :treatment
  belongs_to :user
end
