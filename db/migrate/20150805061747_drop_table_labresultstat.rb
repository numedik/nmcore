class DropTableLabresultstat < ActiveRecord::Migration
  def change
    drop_table :labresultstats
    drop_table :labattachmentstats
  end
end
