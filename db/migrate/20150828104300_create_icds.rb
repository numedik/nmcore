class CreateIcds < ActiveRecord::Migration
  def change
    create_table :icds do |t|
      t.string :code, index: true
      t.string :name
      t.string :parentcode, index: true
      t.integer :level
      t.text :info
      t.string :icdtype_code, index: true

      t.timestamps null: false
    end
  end
end
