class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.string :teamID
      t.string :playerID

      t.timestamps
    end
  end
end
