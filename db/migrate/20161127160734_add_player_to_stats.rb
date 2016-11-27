class AddPlayerToStats < ActiveRecord::Migration[5.0]
  def change
    add_reference :statistics, :player, foreign_key: true
  end
end
