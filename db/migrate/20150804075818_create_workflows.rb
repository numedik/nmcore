class CreateWorkflows < ActiveRecord::Migration
  def change
    create_table :workflows do |t|
      t.integer :treatment_id
      t.integer :workorder_id
      t.integer :sequenceorder
      t.integer :assigner_id
      t.integer :assignee_id
      t.integer :workflowstat_id

      t.timestamps null: false
    end
  end
end
