class CreateWorkflowtemplateitems < ActiveRecord::Migration
  def change
    create_table :workflowtemplateitems do |t|
      t.references :workflowtemplate, index: true, foreign_key: true #t.integer :workflowtemplate_id
      t.references :workorder, index: true, foreign_key: true #t.integer :workorder_id
      t.integer :sequence

      t.timestamps null: false
    end
  end
end
