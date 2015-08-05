class CreateUserstats < ActiveRecord::Migration
  def change
    create_table :userstats do |t|
      t.string :code
      t.string :name
      t.boolean :disabled

      t.timestamps null: false
    end
  end
end
