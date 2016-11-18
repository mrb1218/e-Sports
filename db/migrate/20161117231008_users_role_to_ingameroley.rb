class UsersRoleToIngameroley < ActiveRecord::Migration[5.0]
  def change
	rename_column :users, :role, :ingame_role
  end
end
