class AddPlayerIdToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :players, foreign_key: true
  end
end
