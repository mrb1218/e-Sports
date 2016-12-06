class RemoveplayerIdFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :Users, :player_id
  end
end
