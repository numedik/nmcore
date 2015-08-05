class CreateLabrequestitems < ActiveRecord::Migration
  def change
    create_table :labrequestitems do |t|
      t.references :labrequest, index: true, foreign_key: true
      t.references :labitem, index: true, foreign_key: true
      t.text :remark

      t.timestamps null: false
    end
  end
end
