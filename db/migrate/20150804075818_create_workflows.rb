class CreateWorkflows < ActiveRecord::Migration
  def change
    create_table :workflows do |t|
      t.references :treatment, index: true, foreign_key: true #t.integer :treatment_id
      t.references :workorder, index: true, foreign_key: true #t.integer :workorder_id
      t.integer :sequenceorder
      t.integer :assigner_id
      t.integer :assignee_id
      t.references :workflowstat, index: true, foreign_key: true #t.integer :workflowstat_id

      t.timestamps null: false
    end
  end
end
