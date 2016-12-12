class RemoveCoachIdFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :coachID
  end
end
