class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
  	drop_table :favorites

    create_table :favorites do |t|
      t.string :teamID
      t.string :playerID
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
