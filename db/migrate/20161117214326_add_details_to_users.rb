class AddDetailsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :team, :string
    add_column :users, :game, :string
  end
end
