class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.string :name
      t.string :String

      t.timestamps
    end
  end
end
