class Curroomstat < ActiveRecord::Base
  attr_accessible :code, :name
  has_many :current_user_in_treatmentrooms
end
