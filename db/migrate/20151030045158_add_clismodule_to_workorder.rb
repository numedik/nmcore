class AddClismoduleToWorkorder < ActiveRecord::Migration
  def change
    add_column :workorders, :clismodule, :string, :limit => 3, :null => false
  end
end
