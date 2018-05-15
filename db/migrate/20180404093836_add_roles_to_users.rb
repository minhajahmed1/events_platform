class AddRolesToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :admin_role, :boolean
    add_column :users, :event_creator_role, :boolean
    add_column :users, :user_role, :boolean
  end
end
