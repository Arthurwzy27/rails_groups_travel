class DropGroupsTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :groups
    drop_table :trips
  end
end
