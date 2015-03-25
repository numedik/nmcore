class Icdtype < ActiveRecord::Base
  attr_accessible :code, :name

  has_many :icds, :class_name => "Icd", :foreign_key=> :icdtype_code, :primary_key => :code
end
