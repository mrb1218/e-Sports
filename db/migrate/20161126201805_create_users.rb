class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :coachID
      t.integer :age
      t.string :region
      t.references :player, foreign_key: true

      t.timestamps
    end
  end
end
