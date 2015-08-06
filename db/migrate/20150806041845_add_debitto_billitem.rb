class AddDebittoBillitem < ActiveRecord::Migration
  def change
    add_column :billitems, :debit, :decimal, :precision => 7, :scale => 2
    add_column :billitems, :credit, :decimal, :precision => 7, :scale => 2
    add_column :billitems, :tax, :decimal, :precision => 7, :scale => 2
  end
end
