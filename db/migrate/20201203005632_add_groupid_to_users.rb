class AddGroupidToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :groupId, :integer
  end
end
