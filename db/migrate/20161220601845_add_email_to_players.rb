class AddEmailToPlayers < ActiveRecord::Migration[5.0]
  def change
    add_column :players, :email, :string
  end
end
