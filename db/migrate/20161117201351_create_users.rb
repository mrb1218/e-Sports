class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :ign
      t.string :coachID
      t.string :age
      t.string :country
      t.string :ingame_role
      t.string :team
      t.string :game

      t.timestamps
    end
  end
end
