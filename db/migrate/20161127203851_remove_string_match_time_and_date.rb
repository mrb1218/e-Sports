class RemoveStringMatchTimeAndDate < ActiveRecord::Migration[5.0]
  def change
    remove_column :matches, :match_time
    remove_column :matches, :match_date
  end
end
