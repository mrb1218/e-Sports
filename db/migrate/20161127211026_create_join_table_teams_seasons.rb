class CreateJoinTableTeamsSeasons < ActiveRecord::Migration[5.0]
  def change
    create_join_table :teams, :seasons do |t|
      # t.index [:team_id, :season_id]
      # t.index [:season_id, :team_id]
    end
  end
end
