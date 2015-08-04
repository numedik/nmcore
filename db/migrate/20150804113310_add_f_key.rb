class AddFKey < ActiveRecord::Migration
  def change
    add_foreign_key :users, :roles
    
    add_foreign_key :users, :userstats
    add_foreign_key :users, :workorders
    add_foreign_key :users, :disciplines
    
    add_foreign_key :patients, :genders
    add_foreign_key :patients, :states
    add_foreign_key :patients, :nationalities
    add_foreign_key :patients, :religions
    add_foreign_key :patients, :maritals
    add_foreign_key :patients, :races
    add_foreign_key :patients, :bloodtypes
    add_foreign_key :patients, :patientstats
    add_foreign_key :patients, :rnstats
    add_foreign_key :patients, :designations
    
    add_foreign_key :accounts, :accounttypes
    
    add_foreign_key :treatments, :patients
    add_foreign_key :treatments, :patienttypes
    add_foreign_key :treatments, :treatmentstats
    add_foreign_key :treatments, :plans
    add_foreign_key :treatments, :disciplines
    
    add_foreign_key :treatmentnotes, :treatments
    add_foreign_key :treatmentnotes, :treatmentnotetypes
    add_foreign_key :treatmentnotes, :users
    
    add_foreign_key :workflows, :treatments
    add_foreign_key :workflows, :workorders
    add_foreign_key :workflows, :workflowstats
    
    add_foreign_key :workflowtemplateitems, :workflowtemplates
    add_foreign_key :workflowtemplateitems, :workorders
    
    
    
  end
end
