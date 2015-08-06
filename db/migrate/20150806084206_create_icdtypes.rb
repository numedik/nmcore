class CreateIcdtypes < ActiveRecord::Migration
  def change
    create_table :icdtypes do |t|
      t.string :code
      t.string :name
      t.boolean :disabled

      t.timestamps null: false
    end
  end
end
