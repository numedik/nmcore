class CreateWorkflowtemplateitems < ActiveRecord::Migration
  def change
    create_table :workflowtemplateitems do |t|
      t.integer :workflowtemplate_id
      t.integer :workorder_id
      t.integer :sequence

      t.timestamps null: false
    end
  end
end
