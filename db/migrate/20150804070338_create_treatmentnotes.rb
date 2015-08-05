class CreateTreatmentnotes < ActiveRecord::Migration
  def change
    create_table :treatmentnotes do |t|
      t.references :treatment, index: true, foreign_key: true #t.integer :treatment_id
      t.references :treatmentnotetype, index: true, foreign_key: true #t.integer :treatmentnotetype_id
      t.text :note
      t.references :user, index: true, foreign_key: true #t.integer :user_id
      t.boolean :disabled, :default => false

      t.timestamps null: false
    end
  end
end
