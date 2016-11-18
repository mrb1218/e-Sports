class UsersPlayerIdToign < ActiveRecord::Migration[5.0]
  def change
	rename_column :users, :playerID, :ign
  end
end
