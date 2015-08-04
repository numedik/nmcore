class AddForeignkey < ActiveRecord::Migration
  def change
    #add_reference :accounts, :state, index: true
    add_foreign_key :accounts, :states
  end
end
