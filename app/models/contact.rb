class Contact < ActiveRecord::Base
  attr_accessible :bloodtype_id, :contactstat_id, :email, :gender_id, :marital_id, :name, :panel_id, :patient_id, :phone, :race_id, :religion_id, :state_id, :user_id
  
  has_many :notifications
  belongs_to :patient
  belongs_to :user
  
  belongs_to :bloodtype
  belongs_to :gender
  belongs_to :state
  belongs_to :panel  
  belongs_to :religion
  belongs_to :marital
  belongs_to :race
  belongs_to :contactstat
  
  has_many :notificationgroup_contacts
  has_many :notificationgroups, :through => :notificationgroup_contacts
  
end
