class CreateAudits < ActiveRecord::Migration
  def change
    create_table :audits do |t|
      t.references :audittype, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.string :ipaddress
      t.text :info

      t.timestamps null: false
    end
  end
end
