class CreateTreatmentnotes < ActiveRecord::Migration
  def change
    create_table :treatmentnotes do |t|
      t.integer :treatment_id
      t.integer :treatmentnotetype_id
      t.text :note
      t.integer :user_id
      t.boolean :disabled, :default => false

      t.timestamps null: false
    end
  end
end
