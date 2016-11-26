class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |t|
      t.string :team1ID
      t.string :team2ID
      t.string :leagueID
      t.string :match_time
      t.string :match_date
      t.string :location
      t.integer :team1Score
      t.integer :team2Score

      t.timestamps
    end
  end
end
