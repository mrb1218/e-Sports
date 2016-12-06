class RemoveplayerIdFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :player_id
  end
end
