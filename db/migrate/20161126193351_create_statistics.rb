class CreateStatistics < ActiveRecord::Migration[5.0]
  def change
   
    create_table :statistics do |t|
      t.integer :games_played
      t.integer :kills
      t.integer :deaths
      t.integer :wins
      t.integer :losses
      t.integer :ties
      t.references :team, foreign_key: true
      t.references :match, foreign_key: true
      t.references :season, foreign_key: true

      t.timestamps
    end
  end
end
