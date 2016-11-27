class CreateJoinTableLeaguesSeasons < ActiveRecord::Migration[5.0]
  def change
    create_join_table :leagues, :seasons do |t|
      # t.index [:league_id, :season_id]
      # t.index [:season_id, :league_id]
    end
  end
end
