class RemoveLeagueIdFromTeams < ActiveRecord::Migration[5.0]
  def change
    remove_column :teams, :leagueID
  end
end
