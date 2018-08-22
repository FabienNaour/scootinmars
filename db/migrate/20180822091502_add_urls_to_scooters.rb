class AddUrlsToScooters < ActiveRecord::Migration[5.2]
  def change
    add_column :scooters, :url, :string
  end
end
