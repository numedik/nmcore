class Patient < ActiveRecord::Base
    
  belongs_to :bloodtype
  belongs_to :designation
  belongs_to :gender
  belongs_to :marital
  belongs_to :nationality
  belongs_to :patientstat
  belongs_to :race
  belongs_to :religion
  belongs_to :rnstat
  belongs_to :state
  
  belongs_to :defaultplan, :foreign_key => :defaultplan_id, :class => :plan
  belongs_to :defaultaccount, :foreign_key => :defaultaccount_id, :class => :account
  belongs_to :registrar, :foreign_key => :registrar_id, :class => :user

  has_many :treatments
  has_many :billings
  
end
