class AddClismoduleToActivequeue < ActiveRecord::Migration
  def change
    add_column :activequeues, :Clismodule, :string
  end
end
