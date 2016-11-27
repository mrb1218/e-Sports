class RemoveDuplicateLeagueIdFromMatches < ActiveRecord::Migration[5.0]
  def change
    remove_column :matches, :leagueID
  end
end
