class AddWinningTeamToMatches < ActiveRecord::Migration[5.0]
  def change
    add_column :matches, :winning_team_id, :string
  end
end
