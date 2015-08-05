class CreateLabresults < ActiveRecord::Migration
  def change
    create_table :labresults do |t|
      t.references :labrequestitem, index: true, foreign_key: true
      t.references :labtemplate, index: true, foreign_key: true
      t.text :html
      t.text :json
      t.string :attachmenturl

      t.timestamps null: false
    end
  end
end
