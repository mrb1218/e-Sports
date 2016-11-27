class CreateJoinTablePlayersSeasons < ActiveRecord::Migration[5.0]
  def change
    create_join_table :players, :seasons do |t|
      # t.index [:player_id, :season_id]
      # t.index [:season_id, :player_id]
    end
  end
end
