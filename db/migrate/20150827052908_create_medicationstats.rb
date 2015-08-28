class CreateMedicationstats < ActiveRecord::Migration
  def change
    create_table :medicationstats do |t|
      t.string :code
      t.string :name
      t.boolean :disabled, :default => false

      t.timestamps null: false
    end
  end
end
