class AddMatchesDateTime < ActiveRecord::Migration[5.0]
  def change
    add_column :matches, :match_date_time, :datetime
  end
end
