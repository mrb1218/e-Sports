class UsersRegionToCountry < ActiveRecord::Migration[5.0]
  def change
	rename_column :users, :region, :country
        rename_coulmn :users, :playerID, :ign
  end
end
