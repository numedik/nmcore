class CreateRunningnumbers < ActiveRecord::Migration
  def change
    create_table :runningnumbers do |t|
      t.string :code
      t.string :name
      t.integer :running

      t.timestamps null: false
    end
  end
end
