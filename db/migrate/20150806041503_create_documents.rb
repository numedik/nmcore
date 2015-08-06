class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :serialnum
      t.references :documenttype, index: true, foreign_key: true
      t.references :patient, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.text :html
      t.references :documentstat, index: true, foreign_key: true
      t.string :remark

      t.timestamps null: false
    end
  end
end
