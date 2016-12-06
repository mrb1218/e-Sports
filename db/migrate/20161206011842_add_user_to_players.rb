class AddUserToPlayers < ActiveRecord::Migration[5.0]
  def change
    add_reference :Players, :user, foreign_key: true
  end
end
