class CreateStatistics < ActiveRecord::Migration[5.0]
  def change
    create_table :statistics do |t|
      t.integer :games_played
      t.integer :kills
      t.integer :deaths
      t.integer :wins
      t.integer :losses
      t.integer :ties

      t.timestamps
    end
  end
end
