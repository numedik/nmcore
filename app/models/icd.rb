class Icd < ActiveRecord::Base
  attr_accessible :code, :info, :level, :name, :parent_code
  
    has_many :cause_codes, :class_name => "Treatmenticd", :foreign_key=> :cause_code, :primary_key => :code
    has_many :precedure_codes, :class_name => "Treatmenticd", :foreign_key=> :precedure_code, :primary_key => :code
    has_many :desease_codes, :class_name => "Treatmenticd", :foreign_key=> :desease_code, :primary_key => :code
    has_many :causeofdeath_codes, :class_name => "Treatmenticd", :foreign_key=> :causeofdeath_code, :primary_key => :code

    has_one :icdtype, :class_name => "Icdtype", :foreign_key => :code, :primary_key => :icdtype_code
end
