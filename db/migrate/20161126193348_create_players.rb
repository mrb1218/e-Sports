class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    
    create_table :players do |t|
      t.string :ign
      t.integer :age
      t.string :country
      t.string :in_game_role
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
