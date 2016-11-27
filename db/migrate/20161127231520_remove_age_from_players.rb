class RemoveAgeFromPlayers < ActiveRecord::Migration[5.0]
  def change
    remove_column :players, :age
  end
end
