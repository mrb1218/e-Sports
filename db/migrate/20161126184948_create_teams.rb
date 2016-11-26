class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :leagueID
      t.text :bio
      t.string :coachID
      t.string :team_name

      t.timestamps
    end
  end
end
