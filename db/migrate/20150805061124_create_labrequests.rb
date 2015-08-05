class CreateLabrequests < ActiveRecord::Migration
  def change
    create_table :labrequests do |t|
      t.references :treatment, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.datetime :requestdate

      t.timestamps null: false
    end
  end
end
