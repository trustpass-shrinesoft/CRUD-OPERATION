class Changeuser < ActiveRecord::Migration[6.0]
  def up
    rename_table :users,:admin_users
    add_column("admin_users", "username",:string,:limit => 25) 
    rename_column("admin_users", "password","hashed_password")
  end

  def down
    rename_column("admin_users","hashed_password","password")
    remove_column("admin_user", "username",:string,:limit => 25) 
    rename_table("admin_users","users")
  end
end
