class RemoveTiesFromMatches < ActiveRecord::Migration[5.0]
  def change
    remove_column :statistics, :ties
  end
end
