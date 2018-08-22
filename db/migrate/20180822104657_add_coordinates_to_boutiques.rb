class AddCoordinatesToBoutiques < ActiveRecord::Migration[5.2]
  def change
    add_column :boutiques, :latitude, :float
    add_column :boutiques, :longitude, :float
  end
end
