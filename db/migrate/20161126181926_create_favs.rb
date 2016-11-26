class CreateFavs < ActiveRecord::Migration[5.0]
  def change
    create_table :favs do |t|
      t.integer :playerID
      t.integer :teamID

      t.timestamps
    end
  end
end
