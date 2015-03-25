class MykadRecord < ActiveRecord::Base
  attr_accessible :address1, :address2, :address3, :birthplace, :citizenship, :city, :dob, :gender, :name, :nokp, :oldic, :postcode, :race, :religion, :state
  has_one :patient, :class_name => "Patient", :foreign_key => :mykadno , :primary_key => :nokp
end
