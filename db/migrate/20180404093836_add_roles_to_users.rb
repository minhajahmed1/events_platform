class AddRolesToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :admin_role, :false
    add_column :users, :event_creator_role, :false
    add_column :users, :user_role, :true
  end
end
