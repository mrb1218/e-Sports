class CreateLeagues < ActiveRecord::Migration[5.0]
  def change
  	
    create_table :leagues do |t|
      t.string :prize_money
      t.string :league_name

      t.timestamps
    end
  end
end
