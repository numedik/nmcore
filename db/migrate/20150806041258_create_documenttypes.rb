class CreateDocumenttypes < ActiveRecord::Migration
  def change
    create_table :documenttypes do |t|
      t.string :code
      t.string :name
      t.text :html
      t.boolean :disabled, :default => false

      t.timestamps null: false
    end
  end
end
